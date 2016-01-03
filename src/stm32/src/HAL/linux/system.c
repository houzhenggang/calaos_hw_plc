#include <stdio.h>
#include <unistd.h>
#include <sys/poll.h>
#include <sys/time.h>

void
hal_system_init()
{
	
}

int
hal_serial_puts(const char *str)
{
	puts(str);

	return 0;
}


int
hal_debug_puts(const char *str)
{
	puts(str);

	return 0;
}

int
hal_serial_getc(char *c)
{
	
	struct pollfd fds;
	int ret;
	fds.fd = 0; /* this is STDIN */
	fds.events = POLLIN;
	fds.revents = 0;
	ret = poll(&fds, 1, 0);
        if(ret == 1) {
		read(0, c, 1);
		return 1;
        } else {
		return 0;
	}
}

void
hal_panic(void)
{
	while (1) {
		sleep(1);
	};
}

unsigned long long
hal_get_micro(void)
{
	struct timeval tv;
	gettimeofday(&tv,NULL);

	return 1000000 * tv.tv_sec + tv.tv_usec;
}



const char *
hal_get_filesystem_prefix()
{
	return "./";
}
