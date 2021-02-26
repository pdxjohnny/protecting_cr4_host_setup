set -xe
/usr/sbin/kexec --append="$(cat /proc/cmdline)" -f /boot/bzImage --kexec-file-syscall
