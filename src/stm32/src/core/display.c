#include "display.h"
#include "ssd1306.h"
#include "ili9341.h"
#include "module.h"
#include "utils.h"

#include <string.h>

static display_ops_t const *g_display_ops[] = {
	&ssd1306_display_ops,
	&ili9341_display_ops,
};

typedef struct display {
	int width;
	int height;
} display_t;

static display_t g_display;

static display_ops_t const *g_current_display_ops = NULL;


static void
display_print_char(int x, int y, char c, uint16_t color, uint16_t bg_color)
{
	uint8_t i, j, line;

	for(i = 0; i < 6; i++ ) {
		if(i < 5)
			line = g_display_font[(c * 5) + i];
		else
			line = 0x0;

		for(j = 0; j < 8; j++, line >>= 1) {
			if(line & 0x1) {
				g_current_display_ops->draw_pixel(x + i, y + j, color);
			} else {
				g_current_display_ops->draw_pixel(x + i, y + j, bg_color);
			}
		}
	}
}

static void
display_print(int x, int y, const char *str, uint16_t color, uint16_t bg_color)
{
	while (*str) {
		x += 6;
		display_print_char(x, y, *str, color, bg_color);
		str++;
	}
}

static int
display_json_parse(json_value* value)
{
        unsigned int i, length;
	json_value *section, *disp_data = NULL;
	display_ops_t const *disp_ops;
	char *name;
	const char *type = NULL;

	section = config_get_section(value, "display");
	if (section) {
		length = section->u.object.length;
		for (i = 0; i < length; i++) {
			value = section->u.object.values[i].value;
			name = section->u.object.values[i].name;

			if (strcmp(name, "type") == 0) {
				type = value->u.string.ptr;
			} else if (strcmp(name, "disp_data") == 0) {
				disp_data = value;
			} else if (strcmp(name, "width") == 0) {
				g_display.width = value->u.integer;
			} else if (strcmp(name, "height") == 0) {
				g_display.height = value->u.integer;
			}
		}
		debug_puts("Setup display w %d, h %d\r\n", g_display.width, g_display.height);

		for (i = 0; i < ARRAY_SIZE(g_display_ops); i++) {
			disp_ops = g_display_ops[i];
			if (strncmp(disp_ops->name, type, strlen(disp_ops->name)) == 0) {
				g_current_display_ops = disp_ops;
				break;
			}
		}
		PANIC_ON(!g_current_display_ops, "Failed to find display matching configuration\r\n");

		g_current_display_ops->parse_json(disp_data);
		g_current_display_ops->init(g_display.width, g_display.height);
		display_print(0, 0, "Calaos PLC", ILI9341_CYAN, ILI9341_BLACK);
		display_print(0, 16, "Up & running !", ILI9341_CYAN, ILI9341_BLACK);
		g_current_display_ops->disp();
		return 0;
	}

	return -1;
}


static void
display_sensor_updated(__unused__ sensor_t *s, __unused__ sensor_value_t new_value)
{
}

/**
 * Module
 */
const module_t display_module = {
	.name = "display",
	.main_loop = NULL,
	.json_parse = display_json_parse,
	.sensor_created = NULL,
	.sensor_updated = display_sensor_updated,
};

void
display_init()
{
	module_register(&display_module);
}
