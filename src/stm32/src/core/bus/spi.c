#define _GNU_SOURCE 1

#include "module.h"
#include "utils.h"
#include "debug.h"
#include "json.h"
#include "spi.h"

#include <string.h>
#include <stdlib.h>

#define MAX_SPI_BUS	4	

static int g_max_spi_bus_id = 0;
static struct spi_bus *g_spis[MAX_SPI_BUS];

spi_bus_t *
spi_bus_get_by_name(const char *name) 
{
	int i;

	for (i = 0; i < g_max_spi_bus_id; i++) {
		if (strncmp(name, g_spis[i]->name, strlen(name)) == 0)
			return g_spis[i];
	}

	return NULL;
}

static int
spi_json_parse_one(json_value* json_spi)
{
	int length, i;
	json_value *value;
	spi_bus_t *spibus;
	const char *name;
	char mosi[10], miso[10], sck[10];
	int freq = 1000000;

        spibus = calloc(1, sizeof(struct spi_bus));
        
        PANIC_ON(g_max_spi_bus_id == MAX_SPI_BUS, "Too many spi buses\r\n");

        length = json_spi->u.object.length;
        for (i = 0; i < length; i++) {
		value = json_spi->u.object.values[i].value;
		name = json_spi->u.object.values[i].name;

		if (strcmp(name, "name") == 0) {
			spibus->name = strdup(value->u.string.ptr);
		} else if (strcmp(name, "mosi") == 0) {
			strcpy(mosi, value->u.string.ptr);
		} else if (strcmp(name, "miso") == 0) {
			strcpy(miso, value->u.string.ptr);
		} else if (strcmp(name, "sck") == 0) {
			strcpy(sck, value->u.string.ptr);
		} else if (strcmp(name, "freq") == 0) {
			freq = value->u.integer;
		}
        }

        spibus->hal_spi = hal_spi_setup(mosi, miso, sck, freq);

	debug_puts("Adding spi bus %s with %d output\r\n", spibus->name);
	g_spis[g_max_spi_bus_id++] = spibus;

	return 0;
}


static int
spi_json_parse(json_value* value)
{
        unsigned int i;
	json_value *section;

	section = config_get_section(value, "spi");
	if (!section)
		return -1;

	for (i = 0; i < section->u.array.length; i++) {
		spi_json_parse_one(section->u.array.values[i]);
	}
	return 0;
}




/**
 * Module
 */
static const module_t spi_module = {
	.name = "spi",
	.main_loop = NULL,
	.json_parse = spi_json_parse,
	.sensor_created = NULL,
	.sensor_updated = NULL,
};


void
spi_bus_init()
{
	module_register(&spi_module);
}