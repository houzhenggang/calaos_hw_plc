#include "HAL.h"
#include "gpio.h"
#include "debug.h"
#include "utils.h"
#include "module.h"
#include "mysensor.h"

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>


typedef struct mysensor_s_light{
	hal_gpio_t *io;
	int last_state;
} mysensor_s_light_t;

/**
 * Sensor struct
 */
typedef struct mysensor_sensor {
	char name[MYSENSOR_MAX_NAME_LENGTH];
	unsigned int node_id;
        mysensor_sensortype_t type;
        union {
		mysensor_s_light_t s_light;
	} _;
} mysensor_sensor_t;


#define MAX_SENSOR_COUNT	32

/**
 * Node id requested from controller
 */
static unsigned int g_assigned_node_id;

/**
 * Sensor management
 */
static unsigned int g_sensor_count = 0;
static mysensor_sensor_t *g_sensors[MAX_SENSOR_COUNT];

static const char *sensor_type_str[] = {
    [0] = "S_DOOR",                 // Door and window sensors
    [1] = "S_MOTION",               // Motion sensors
    [2] = "S_SMOKE",                // Smoke sensor
    [3] = "S_LIGHT",                // Light Actuator (on/off)
    [4] = "S_DIMMER",               // Dimmable device of some kind
    [5] = "S_COVER",                // Window covers or shades
    [6] = "S_TEMP",                 // Temperature sensor
    [7] = "S_HUM",                  // Humidity sensor
    [8] = "S_BARO",                 // Barometer sensor (Pressure)
    [9] = "S_WIND",                 // Wind sensor
    [10] = "S_RAIN",                // Rain sensor
    [11] = "S_UV",                  // UV sensor
    [12] = "S_WEIGHT",              // Weight sensor for scales etc.
    [13] = "S_POWER",               // Power measuring device, like power meters
    [14] = "S_HEATER",              // Heater device
    [15] = "S_DISTANCE",            // Distance sensor
    [16] = "S_LIGHT_LEVEL",         // Light sensor
    [17] = "S_ARDUINO_NODE",        // Arduino node device
    [18] = "S_ARDUINO_RELAY",       // Arduino relaying node device
    [19] = "S_LOCK",                // Lock device
    [20] = "S_IR",                  // Ir sender/receiver device
    [21] = "S_WATER",               // Water meter
    [22] = "S_AIR_QUALITY",         // Air quality sensor e.g. MQ-2
    [23] = "S_CUSTOM",              // Use this for custom sensors where no other fits.
    [24] = "S_DUST",                // Dust level sensor
    [25] = "S_SCENE_CONTROLLER",    // Scene controller device
};


int
mysensor_typestr_to_type(const char *name)
{
	unsigned int i;

	for (i = 0; i < ARRAY_SIZE(sensor_type_str); i++) {
		if (strcmp(sensor_type_str[i], name) == 0) {
			return i;
		}
	}

	return -1;
}

/**
 * FIXME: generate tese functions
 */
static int
mysensor_send_message_str(uint16_t node_id, uint8_t child_sensor_id, uint16_t message_type,
				uint8_t ack, uint16_t sub_type, char *payload)
{
	char msg[MYSENSOR_MAX_MSG_LENGTH];
	sprintf(msg, "%d;%d;%d;%d;%d;%s\n", node_id, child_sensor_id, message_type, ack, sub_type, payload);
	return hal_serial_puts(msg);
}

static int
mysensor_send_message_float(uint16_t node_id, uint8_t child_sensor_id, uint16_t message_type,
				uint8_t ack, uint16_t sub_type, float value)
{
	char msg[MYSENSOR_MAX_MSG_LENGTH];
	sprintf(msg, "%d;%d;%d;%d;%d;%f\n", node_id, child_sensor_id, message_type, ack, sub_type, value);
	return hal_serial_puts(msg);
}

static int
mysensor_send_message_int(uint16_t node_id, uint8_t child_sensor_id, uint16_t message_type,
				uint8_t ack, uint16_t sub_type, int value)
{
	char msg[MYSENSOR_MAX_MSG_LENGTH];
	sprintf(msg, "%d;%d;%d;%d;%d;%d\n", node_id, child_sensor_id, message_type, ack, sub_type, value);
	return hal_serial_puts(msg);
}

int
mysensor_update_value_float(mysensor_sensor_t *s, mysensor_datatype_t dt, float value)
{
	return mysensor_send_message_float(g_assigned_node_id, s->node_id, SET_VARIABLE, REQUEST, dt, value);
}

int
mysensor_update_value_int(mysensor_sensor_t *s, mysensor_datatype_t dt, int value)
{
	return mysensor_send_message_int(g_assigned_node_id, s->node_id, SET_VARIABLE, REQUEST, dt, value);
}

int
mysensor_update_value_str(mysensor_sensor_t *s, mysensor_datatype_t dt, char *str)
{
	return mysensor_send_message_str(g_assigned_node_id, s->node_id, SET_VARIABLE, REQUEST, dt, str);
}

mysensor_sensor_t *
mysensor_create_sensor(mysensor_sensortype_t type, const char *name)
{
	mysensor_sensor_t *s;

	s = calloc(1, sizeof(*s));
	if (!s)
		return NULL;

	strncpy(s->name, name, MYSENSOR_MAX_NAME_LENGTH);
	s->node_id = g_sensor_count;
	s->type = type;
	g_sensors[g_sensor_count] = s;
	mysensor_send_message_str(g_assigned_node_id, s->node_id, PRESENTATION, REQUEST, s->type, s->name);
	g_sensor_count++;

	return s;
}


static int
mysensor_json_parse_sensor(json_value* sensor)
{
	int length, i;
	const char *name;
	char s_name[MYSENSOR_MAX_NAME_LENGTH], s_gpio_name[MYSENSOR_MAX_NAME_LENGTH];
	int s_gpio_dir = GPIO_DIR_OUTPUT, s_reverse = 0, s_type = -1;
	json_value *value;
	mysensor_sensor_t *s;
	
        length = sensor->u.object.length;
        for (i = 0; i < length; i++) {
		value = sensor->u.object.values[i].value;
		name = sensor->u.object.values[i].name;

		if (strcmp(name, "name") == 0) {
			strcpy(s_name, value->u.string.ptr);
		} else if (strcmp(name, "gpio") == 0) {
			strcpy(s_gpio_name, value->u.string.ptr);
		} else if (strcmp(name, "direction") == 0) {
			if (strcmp(value->u.string.ptr, "input") == 0)
				s_gpio_dir = GPIO_DIR_INPUT;
		} else if (strcmp(name, "type") == 0) {
			s_type = mysensor_typestr_to_type(value->u.string.ptr);
		} else if (strcmp(name, "reverse") == 0) {
			s_reverse = value->u.boolean;
		}
        }

	s = mysensor_create_sensor(s_type, s_name);
	s->_.s_light.io = hal_gpio_setup(s_gpio_name, s_reverse, s_gpio_dir);

	return 0;
}

static int
mysensor_json_parse_sensors(json_value* array)
{
	int length, i;
	json_value* sensor;
	if (array == NULL || array->type != json_array)
		return -1;

	debug_puts("Got sensors section\r\n");

        length = array->u.array.length;
        for (i = 0; i < length; i++) {
		sensor = array->u.array.values[i];
		mysensor_json_parse_sensor(sensor);
        }
	
	return 0;
}

static int
mysensor_json_parse(json_value* value)
{
        int length, x;
	if (value == NULL || value->type != json_object) {
                return -1;
        }
     
        length = value->u.object.length;
        for (x = 0; x < length; x++) {
		/* We only care about sensor section*/
		if (strcmp(value->u.object.values[x].name,"sensors") != 0)
			continue;

                return mysensor_json_parse_sensors(value->u.object.values[x].value);
        }

        return -1;
}

static void light_handler(mysensor_sensor_t * sensor)
{
	mysensor_s_light_t  *light = &sensor->_.s_light;
	int state = hal_gpio_read(light->io);

	if (state != light->last_state) {
		light->last_state = state;
		mysensor_update_value_int(sensor, V_STATUS, state);
	}
}


static void (* sensor_handlers[])(mysensor_sensor_t *) = {
    [S_DOOR] = NULL,
    [S_MOTION] = NULL,
    [S_SMOKE] = NULL,
    [S_LIGHT] = light_handler,
    [S_DIMMER] = NULL,
    [S_COVER] = NULL,
    [S_TEMP] = NULL,
    [S_HUM] = NULL,
    [S_BARO] = NULL,
    [S_WIND] = NULL,
    [S_RAIN] = NULL,
    [S_UV] = NULL,
    [S_WEIGHT] = NULL,
    [S_POWER] = NULL,
    [S_HEATER] = NULL,
    [S_DISTANCE] = NULL,
    [S_LIGHT_LEVEL] = NULL,
    [S_ARDUINO_NODE] = NULL,
    [S_ARDUINO_RELAY] = NULL,
    [S_LOCK] = NULL,
    [S_IR] = NULL,
    [S_WATER] = NULL,
    [S_AIR_QUALITY] = NULL,
    [S_CUSTOM] = NULL,
    [S_DUST] = NULL,
    [S_SCENE_CONTROLLER] = NULL,
};

static void mysensor_main_loop()
{
	unsigned int i;
	for (i = 0; i < g_sensor_count; i++) {
		mysensor_sensor_t *sensor = g_sensors[i];
		if (sensor_handlers[sensor->type]) {
			sensor_handlers[sensor->type](sensor);
		}
	}
}

const module_t mysensor_module = {
	.name = "mysensor",
	.main_loop = mysensor_main_loop,
	.json_parse = mysensor_json_parse,
};

void
mysensor_init()
{
	module_register(&mysensor_module);

	mysensor_send_message_str(0, 0, INTERNAL, REQUEST, 0, "1.0");
	/* Wait message */
	g_assigned_node_id = 1;
}