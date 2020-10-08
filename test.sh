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

export LEADING="timeout --verbose --foreground 60s"

if [[ "x${SKIP_PRECHECK}" == "x" ]]; then
  TRAILING="-no-reboot" "${HOME}/run.sh"
  echo "PASS: precheck" | tee "${LOG}/results"
fi

set +e

test_selftests() {
  cd "${HOME}/linux-combined/"
  make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
  RELOAD=1 ~/run.sh
  make TARGETS="kvm" summary=1 kselftest
  cd tools/testing/selftests/kvm/
  (./x86_64/smm_cr_pin_test &&
   echo "PASS: selftests" | tee -a "${LOG}/results") || \
  echo "FAIL: selftests" | tee -a "${LOG}/results"
}

test_unittests() {
  local tests=(cr_pin_high cr_pin_low vmx_cr_pin_no_enforce_l1_on_l2)
  cd "${HOME}/linux-combined/"
  make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
  RELOAD=1 ~/run.sh
  cd "${HOME}/kvm-unit-tests/"
  make -j $(($(nproc)*4))
  (QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh ${tests[@]} && \
   echo "PASS: unittests" | tee -a "${LOG}/results") || \
  echo "FAIL: unittests" | tee -a "${LOG}/results"
  for i in ${tests[@]}; do
    cat "${HOME}/kvm-unit-tests/logs/${i}.log" >> "${LOG}/unittests"
  done
}

# Hibernate
test_hibernate() {
  cd "${HOME}"
  DO=test_hibernate.sh "${HOME}/run.sh" 2>&1 | tee "${LOG}/hibernate_begin"
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
  cd "${HOME}"
  TRAILING="-no-reboot" DO=test_susram.sh "${HOME}/run.sh" 2>&1 | tee "${LOG}/susram"
  if grep -q "TEST SUSRAM END SUSRAM" "${LOG}/susram"; then
    echo "PASS: susram" | tee -a "${LOG}/results"
  else
    echo "FAIL: susram" | tee -a "${LOG}/results"
  fi
}

# kexec
test_kexec() {
  cd "${HOME}"
  DO=test_kexec.sh LEADING="timeout --verbose --foreground 15s" TRAILING="-no-reboot" "${HOME}/run.sh" 2>&1 | tee "${LOG}/kexec"
  if grep -q "Starting new kernel" "${LOG}/kexec"; then
    if [[ "$(grep "Hypervisor detected: KVM" "${LOG}/kexec" | wc -l)0" -gt 10 ]]; then
      echo "PASS: KEXEC" | tee -a "${LOG}/results"
    else
      echo "FAIL: KEXEC" | tee -a "${LOG}/results"
    fi
  else
    echo "FAIL: KEXEC" | tee -a "${LOG}/results"
  fi
}

# kdump
test_kdump() {
  cd "${HOME}"
  DO=test_kdump.sh LEADING="timeout --verbose --foreground 15s" TRAILING="-no-reboot" "${HOME}/run.sh" 2>&1 | tee "${LOG}/kdump"
  if grep -q "KDUMP PASSED" "${LOG}/kdump"; then
    echo "PASS: KDUMP" | tee -a "${LOG}/results"
  else
    echo "FAIL: KDUMP" | tee -a "${LOG}/results"
  fi
}

# L2
test_l2() {
  cd "${HOME}"
  sudo tee "${CHROOT}/do" <<<"test_l2.sh"
  LEADING="timeout --verbose --foreground 60" "${HOME}/run.sh" 2>&1 | tee "${LOG}/l2"
  if [[ "$(grep "Run /usr/bin/rebooter as init process" "${LOG}/l2" | wc -l)0" -gt 20 ]]; then
    echo "PASS: L2" | tee -a "${LOG}/results"
  else
    echo "FAIL: L2" | tee -a "${LOG}/results"
  fi
}


if [ "x${1}" != "x" ]; then
  "test_${1}"
else
  test_selftests
  test_unittests
  test_hibernate
  test_susram
  test_kexec
  test_kdump
  test_l2
fi
