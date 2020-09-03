#include <fcntl.h>
#include <linux/reboot.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mount.h>
#include <sys/reboot.h>
#include <sys/stat.h>
#include <sys/syscall.h> /* For SYS_xxx definitions */
#include <sys/types.h>
#include <sys/utsname.h>
#include <unistd.h>
#include <linux/limits.h>

/*
int mount(const char *source, const char *target,
          const char *filesystemtype, unsigned long mountflags,
          const void *data);

struct utsname {
   char release[];    Operating system release (e.g., "2.6.28")
   char version[];    Operating system version
};
*/

int insmod(const char *module_path) {
  int ret = 0;
  int fd;
  struct utsname utsname;
  char module_load_path[PATH_MAX];

  ret = uname(&utsname);
  dprintf(STDERR_FILENO, "uname(&utsname) = %d\n", fd);
  if (ret)
    goto insmod_bail;

  dprintf(STDERR_FILENO, "utsname.release = \"%s\"\n", utsname.release);
  ret = sprintf(module_load_path, "/lib/modules/%s/kernel/%s",
                utsname.release, module_path);
  if (ret == -1)
    goto insmod_bail;
  ret = 0;

  fd = open(module_load_path, O_RDONLY);
  dprintf(STDERR_FILENO, "open(\"%s\", O_RDONLY) = %d\n", module_load_path, fd);
  if (fd < 0)
    goto insmod_bail;

  ret = syscall(SYS_finit_module, fd, "", 0);
  dprintf(STDERR_FILENO, "syscall(SYS_finit_module, %d, NULL, 0) = %d\n", fd,
          ret);
  if (ret)
    goto insmod_bail;

  ret = close(fd);
  dprintf(STDERR_FILENO, "close(%d) = %d\n", fd, ret);
  if (ret)
    goto insmod_bail;

  return ret;

insmod_bail:
  dprintf(STDERR_FILENO, "ERROR: insmod: %s\n", strerror(ret));
  return ret;
}

int mkmount(const char *source, const char *target, const char *filesystemtype, mode_t mode)
{
  int ret;

  ret = mkdir(target, mode);
  dprintf(STDERR_FILENO,
          "mkdir(\"%s\", 0o%03o) = %d\n", target, mode, ret);
  if (ret)
    return ret;

  ret = mount(source, target, filesystemtype, 0U, NULL);
  dprintf(STDERR_FILENO,
          "mount(\"%s\", \"%s\", \"%s\", 0U, NULL) = %d\n", source, target, filesystemtype, ret);
  return ret;
}

/*
 * int mount(const char *source, const char *target,
 *           const char *filesystemtype, unsigned long mountflags,
 *           const void *data);
 *
 * if [ -d /sys/firmware/efi/efivars ]; then
 *   mount -t efivarfs efivarfs /sys/firmware/efi/efivars
 * fi
 */
int fs_setup() {
  int ret = 0;

  /*
   * mkdir -p /sys
   * mount -t sysfs sysfs /sys -n
   */
  ret = mkmount("sysfs", "/sys", "sysfs", 0555);
  if (ret)
      return ret;

  /*
   * mkdir -p /proc
   * mount -t proc proc /proc -n
   */
  ret = mkmount("proc", "/proc", "proc", 0555);
  if (ret)
      return ret;

  /*
   * mkdir -p /run
   * mount -t tmpfs tmpfs /run -n
   */
  ret = mkmount("tmpfs", "/run", "tmpfs", 0755);
  if (ret)
      return ret;

  return ret;
}

void main() {
  int ret;

  ret = fs_setup();
  dprintf(STDERR_FILENO, "fs_setup() = %d\n", ret);
  if (ret)
    goto bail;

  ret = insmod("fs/fuse/fuse.ko");
  dprintf(STDERR_FILENO, "insmod(\"fs/fuse/fuse.ko\") = %d\n", ret);
  if (ret)
    goto bail;

  ret = insmod("fs/fuse/virtiofs.ko");
  dprintf(STDERR_FILENO, "insmod(\"fs/fuse/virtiofs.ko\") = %d\n", ret);
  if (ret)
    goto bail;

  ret = mount("myfs", "/new_root", "virtiofs", 0U, NULL);
  dprintf(STDERR_FILENO,
          "mount(\"myfs\", \"/new_root\", \"virtiofs\", 0U, NULL) = %d\n", ret);
  if (ret)
    goto bail;

  ret = chdir("/");
  dprintf(STDERR_FILENO, "chdir(\"/\") = %d\n", ret);
  if (ret)
    goto bail;

  ret = syscall(SYS_pivot_root, ".", "old_root");
  dprintf(STDERR_FILENO, "syscall(SYS_pivot_root, \".\", \"old_root\") = %d\n",
          ret);
  if (ret)
    goto bail;

  ret = umount("old_root");
  dprintf(STDERR_FILENO, "umount(\"old_root\") = %d\n", ret);
  if (ret)
    goto bail;

  ret = chdir("/");
  dprintf(STDERR_FILENO, "chdir(\"/\") = %d\n", ret);
  if (ret)
    goto bail;

  ret = execl("/usr/bin/init.sh", "/usr/bin/init.sh", NULL);
  dprintf(STDERR_FILENO,
          "execl(\"/usr/bin/init.sh\", \"/usr/bin/init.sh\", NULL) = %d\n",
          ret);
  if (ret)
    goto bail;

bail:
  dprintf(STDERR_FILENO, "ERROR: main: %s\n", strerror(ret));
  reboot(LINUX_REBOOT_CMD_HALT);
}
