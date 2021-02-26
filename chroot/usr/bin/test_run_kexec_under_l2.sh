set -xe
/usr/sbin/kexec --append="$(cat /home/johnsa1/l2_cmdline)" -f /boot/bzImage --kexec-file-syscall
