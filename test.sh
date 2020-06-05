#!/usr/bin/env bash
set -xe

LOG=$(mktemp -d cr-pin-test-XXXXXXXXXX)

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

sudo tee "${CHROOT}/do" <<<"dry_run.sh"

timeout 5s "${HOME}/run.sh"

# Hibernate
sudo tee "${CHROOT}/do" <<<"test_hibernate.sh"
timeout 5s "${HOME}/run.sh" 2>&1 | tee "/tmp/${LOG}/hibernate_begin"
if [[ grep -q "reboot: Power down" ]]; then
  timeout 5s "${HOME}/run.sh" 2>&1 | tee "/tmp/${LOG}/hibernate_end"
  if [[ grep -q "TEST HIBERNATE END SLEEP" ]]; then
    echo "PASS: hibernate" | tee -a "/tmp/${LOG}/results"
  else
    echo "FAIL: hibernate" | tee -a "/tmp/${LOG}/results"
  fi
else
  echo "FAIL: hibernate" | tee -a "/tmp/${LOG}/results"
fi
