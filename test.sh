#!/usr/bin/env bash
set -xe

LOG=$(mktemp -d /tmp/cr-pin-test-XXXXXXXXXX)

trap "cat ${LOG}/results" EXIT

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
echo "PASS: precheck" | tee "${LOG}/results"

set +e

# Hibernate
test_hibernate() {
  sudo tee "${CHROOT}/do" <<<"test_hibernate.sh"
  "${HOME}/run.sh" 2>&1 | tee "${LOG}/hibernate_begin"
  if grep -q "reboot: Power down" "${LOG}/hibernate_begin"; then
    TRAILING="-no-reboot" "${HOME}/run.sh" 2>&1 | tee "${LOG}/hibernate_end"
    if grep -q "TEST HIBERNATE END HIBERNATION" "${LOG}/hibernate_end"; then
      echo "PASS: hibernate" | tee -a "${LOG}/results"
    else
      echo "FAIL: hibernate" | tee -a "${LOG}/results"
    fi
  else
    echo "FAIL: hibernate" | tee -a "${LOG}/results"
  fi
}

# Suspend to RAM
test_susram() {
  sudo tee "${CHROOT}/do" <<<"test_susram.sh"
  TRAILING="-no-reboot" "${HOME}/run.sh" 2>&1 | tee "${LOG}/susram"
  if grep -q "TEST SUSRAM END SUSRAM" "${LOG}/susram"; then
    echo "PASS: susram" | tee -a "${LOG}/results"
  else
    echo "FAIL: susram" | tee -a "${LOG}/results"
  fi
}

# kexec
test_kexec() {
  sudo tee "${CHROOT}/do" <<<"test_kexec.sh"
  LEADING="timeout --verbose --foreground 10s" "${HOME}/run.sh" 2>&1 | tee "${LOG}/kexec"
  if grep -q "kexec_load failed: Operation not permitted" "${LOG}/kexec"; then
    echo "PASS: KEXEC" | tee -a "${LOG}/results"
  else
    echo "FAIL: KEXEC" | tee -a "${LOG}/results"
  fi
}

# L2
test_l2() {
  sudo tee "${CHROOT}/do" <<<"test_l2.sh"
  LEADING="timeout --verbose --foreground 60" "${HOME}/run.sh" 2>&1 | tee "${LOG}/l2"
  if [[ "$(grep "Run /usr/bin/rebooter as init process" "${LOG}/l2" | wc -l)0" -gt 20 ]]; then
    echo "PASS: L2" | tee -a "${LOG}/results"
  else
    echo "FAIL: L2" | tee -a "${LOG}/results"
  fi
}

test_hibernate
test_susram
test_kexec
test_l2
