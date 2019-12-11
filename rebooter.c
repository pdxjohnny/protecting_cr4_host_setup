#include <unistd.h>
#include <linux/reboot.h>
#include <sys/reboot.h>

int main() {
	reboot(LINUX_REBOOT_CMD_RESTART);

	while(1) {};

	return 1;
}
