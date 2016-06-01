#include "json.h"
#include "utils.h"
#include "module.h"
#include "sensors.h"

#include <string.h>

/**
 * switch specific data
 */
typedef struct sensor_switch {
	gen_io_t *io;
	int last_state;
	sensor_t *s;
	SLIST_ENTRY(sensor_switch) link;
} switch_t;

static SLIST_HEAD(, sensor_switch) g_switch_list;

/**
 *  Switch
 */
static void
switch_poll_one(switch_t *sw)
{
	sensor_value_t value;
	int state;

	if (gen_io_get_dir(sw->io) != GPIO_DIR_INPUT)
		return;

	state = gen_io_read(sw->io);

	if (state != sw->last_state) {
		sw->last_state = state;
		value.val_i = state;
		sensors_sensor_updated(sw->s, value);
	}
}

static void
switch_poll()
{
	struct sensor_switch *sw; 
	
	SLIST_FOREACH(sw, &g_switch_list, link) {
		switch_poll_one(sw);
	}
}

static void
switch_set(sensor_t * sensor, void *data, sensor_value_t value)
{
	switch_t *sw = data;
	int state;
	if (gen_io_get_dir(sw->io) != GPIO_DIR_OUTPUT)
		return;
	
	state = value.val_i;
	gen_io_write(sw->io, state);
}

static const sensors_ops_t switch_ops =
{
	.set = switch_set,
	.req = NULL,
};

static int
switch_json_parse_one(json_value* sensor)
{
	int length, i;
	const char *name;
	const char *s_name = NULL, *s_gpio_name = NULL;
	unsigned char s_id = 0;
	int s_gpio_dir = GPIO_DIR_OUTPUT, s_reverse = 0;
	gpio_debounce_t s_debounce = GPIO_DEBOUNCE_ENABLE;
	json_value *value;
	switch_t *sw;
	
	sw = malloc(sizeof(switch_t));
	PANIC_ON(!sw, "Alloc failed");

        length = sensor->u.object.length;
        for (i = 0; i < length; i++) {
		value = sensor->u.object.values[i].value;
		name = sensor->u.object.values[i].name;

		if (strcmp(name, "name") == 0) {
			s_name = value->u.string.ptr;
		} else if (strcmp(name, "io") == 0) {
			s_gpio_name = value->u.string.ptr;
		} else if (strcmp(name, "dir") == 0) {
			if (strcmp(value->u.string.ptr, "in") == 0)
				s_gpio_dir = GPIO_DIR_INPUT;
		} else if (strcmp(name, "active_low") == 0) {
			s_reverse = value->u.integer;
		} else if (strcmp(name, "id") == 0) {
			s_id = value->u.integer;
		} else if (strcmp(name, "debounce") == 0) {
			s_debounce = value->u.integer;
		}
        }

        PANIC_ON(s_name == NULL || s_gpio_name == NULL,
			"Incomplete sensor description");
	sw->io = gen_io_setup(s_gpio_name, s_reverse, s_gpio_dir, s_debounce);
	sw->last_state = 0;
	sw->s = sensor_create(SENSORS_TYPE_SWITCH, s_name, s_id, &switch_ops, sw);

	SLIST_INSERT_HEAD(&g_switch_list, sw, link);
	return 0;
}



static int
switch_json_parse(json_value* section)
{
        unsigned int i;

	for (i = 0; i < section->u.array.length; i++) {
		switch_json_parse_one(section->u.array.values[i]);
	}

	return 0;
}


/**
 * Module
 */
static sensor_handler_t switch_sensor_handler = {
	.name = "switch",
	.json_parse = switch_json_parse,
	.poll = switch_poll,
};

void
switch_init()
{
	sensors_register_handler(&switch_sensor_handler);
}
