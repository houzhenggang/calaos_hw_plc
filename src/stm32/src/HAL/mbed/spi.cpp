extern "C" {
#include "HAL.h"
}
#include <mbed.h>

SPI spi(SPI_MOSI, SPI_MISO, SPI_SCK);

extern "C" void
hal_spi_init(uint32_t frequency)
{
	spi.frequency(frequency);
}

/**
 * Send a value through SPI
 * @value Value to send through SPI
 */
extern "C" int
hal_spi_write(uint8_t value)
{
	return spi.write(value);
}