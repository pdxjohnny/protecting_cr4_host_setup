#!/usr/bin/env bash
set -xe

LOG=$(mktemp -d /tmp/cr-pin-test-XXXXXXXXXX)

trap "cat /tmp/${LOG}/results" EXIT

CHROOT=${CHROOT:-"${HOME}/chroot"}

sudo modprobe nbd max_part=8

sudo umount -R "${CHROOT}" || echo image was not mounted at "${CHROOT}"
sudo qemu-nbd --disconnect /dev/nbd0 || echo image was not connected as nbd

mount_image() {
  sudo qemu-nbd --connect=/dev/nbd0 "${HOME}/image.qcow2"
  sudo mount /dev/nbd0p3 "${CHROOT}"
  sudo mount /dev/nbd0p1 "${CHROOT}/boot"
}

unmount_image() {
  sudo sync
  sudo umount -R "${CHROOT}"
  sudo qemu-nbd --disconnect /dev/nbd0
}

# Intial reload to make sure all's well
RELOAD=1 "${HOME}/run.sh"

# Dry run
mount_image

sudo tee "${CHROOT}/do" <<<"rebooter"

export LEADING="timeout --verbose --foreground 10s"

TRAILING="-no-reboot" "${HOME}/run.sh"
echo "PASS: precheck" | tee "/tmp/${LOG}/results"

set +e

# Hibernate
sudo tee "${CHROOT}/do" <<<"test_hibernate.sh"
"${HOME}/run.sh" 2>&1 | tee "/tmp/${LOG}/hibernate_begin"
if grep -q "reboot: Power down" "/tmp/${LOG}/hibernate_begin"; then
  TRAILING="-no-reboot" "${HOME}/run.sh" 2>&1 | tee "/tmp/${LOG}/hibernate_end"
  if grep -q "TEST HIBERNATE END HIBERNATE" "/tmp/${LOG}/hibernate_end"; then
    echo "PASS: hibernate" | tee -a "/tmp/${LOG}/results"
  else
    echo "FAIL: hibernate" | tee -a "/tmp/${LOG}/results"
  fi
else
  echo "FAIL: hibernate" | tee -a "/tmp/${LOG}/results"
fi
