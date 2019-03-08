#include <sys/syscall.h>

const char message[] =
	"Hello world in docker!"
	"\n";

void _start() {
    syscall(SYS_write, 1, message, sizeof(message) - 1);
    syscall(SYS_exit, 0);
}