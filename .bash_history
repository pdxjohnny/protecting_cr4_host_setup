DO=test_susram.sh ~/run.sh -no-reboot
vim ~/run.sh 
DO=test_susram.sh ~/run.sh -no-reboot
sudo vim ~/chroot/usr/bin/uefi-setup.sh
vim ~/run.sh 
vim ~/chroot/usr/bin/uefi-setup.sh
vim ~/run.sh 
git status
git diff
git commit -sam 'startup.nsh with resume=/dev/sda2'
git status
git push
DO=test_susram.sh ~/run.sh -no-reboot
time make -j $(($(nproc)*4)) bzImage && DO=test_susram.sh ~/run.sh -no-reboot
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage && DO=test_susram.sh ~/run.sh -no-reboot
~/test.sh
cat /tmp/cr-pin-test-H7yhlWi9AR/hibernate_begin 
vim /tmp/cr-pin-test-H7yhlWi9AR/hibernate_begin
vim /tmp/cr-pin-test-H7yhlWi9AR/hibernate_begin 
vim ~/test.sh 
~/test.sh hibernate
~/test.sh susram
ll /tmp/cr-pin-test-*
cat /tmp/cr-pin-test-H7yhlWi9AR/unittests 
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
(cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test)
tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
./tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
echo $?
vim ../README.md 
find . -name smm_cr_pin_test.log
find /tmp -name smm_cr_pin_test.log
sudo find /tmp -name smm_cr_pin_test.log
sudo find ~ -name smm_cr_pin_test.log
sudo find ~ -name smm_cr_pin_test
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
git log -p
git diff --staged
git log
git log -p
vim -t bzImage64_probe
git grep KEXEC_CORE
vim -t kexec_load
git grep kexec_load
git grep kexec.c
git grep kexec\.c
git grep kexec\\.c
git grep KEXEC_CORE
git grep def_bool
git grep def_bool | grep \\.rst
vim Documentation/kbuild/kconfig-language.rst
git log -p
git grep cr4_set_bits_and_update_boot
git grep -p cr4_set_bits_and_update_boot
git grep -p mmu_cr4_features
vim arch/x86/kernel/setup.c
git blame arch/x86/kernel/setup.c
git log -p 18bc7bd523e0f
git log -p
cat >> ../README.md 
vim ../README.md
git log -p
git rebase -i HEAD~8
git log -p
git rebase -i HEAD~8
git log -p
git rebase -i HEAD~8
git log -p
git rebase -i HEAD~8
git log 
git rebase -i HEAD~8
git diff
git log -p
git rebase -i HEAD~8
git log -p
git rebase -i HEAD~8
git rebase -i HEAD~10
git log -p
git rebase -i HEAD~10
git log -p
git push -f
vim ~/git-send-email-cover 
git status
git diff
cd ..
git status
git diff
git commit -sam 'updating cover letter'
git push
vim git-send-email-cover 
git diff .config/
git diff .config
git diff linux-combined/.config
vim linux-combined/.config
git diff linux-combined/.config
time make -j $(($(nproc)*4)) bzImage
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage
git diff linux-combined/.config
vim .config
cd ../
git diff linux-combined/.config
git log -p linux-combined/.config
vim .config
vim linux-combined/.config
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage
cd ..
git diff linux-combined/.config
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage
git grep BUILD_BUG_ON
vim arch/x86/kernel/kvm.c 
git grep -pC 5 BUILD_BUG_ON
git grep BUILD_BUG_ON
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim .config
vim arch/x86/kernel/kvm.c 
vim .config
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
git grep -pC 5 BUILD_BUG_ON | grep IS_ENABLED
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
vim .config
git status
cd ..
git diff
vim linux-combined/.config
vim arch/x86/kernel/kvm.c 
cd linux-combined/
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
vim .config
vim arch/x86/kernel/kvm.c 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c 
vim .config
vim arch/x86/kernel/kvm.c 
git diff
git grep PV_CR_PIN
git grep -i PV_CR_PIN
git status
git diff
git stash
git rebase -i HEAD~10
git stash pop
git diff
git add -A
git rebase --continue
git log -p
vim .config
make olddefconfig
git status
cd ..
git diff
git add linux-combined/.config
git status
git commit -sm 'Add CONFIG_PARAVIRT_CR_PINNING'
git push
git status
vim linux-combined/.co
vim linux-combined/.config
git diff linux-combined/.config
git status
git checkout -- linux-combined/.config
git status
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage
~/test.sh 
~/test.sh kexec
vim ~/test.sh 
~/test.sh kexec
vim ~/test.sh 
~/test.sh kexec
vim ~/test.sh 
~/test.sh kexec
git status
git push -f
vim arch/x86/include/asm/kvm_para.h
git diff
git stash
git rebase -i HEAD~8
git stash pop
git diff
git add -A
git rebase --continue
git log
git log -reverse HEAD~8
git log --reverse HEAD~8
git log --reverse HEAD~8 HEAD
git log
git log -n 8 --reverse
git log -n 10 --reverse
time make -j $(($(nproc)*4)) bzImage
time make -j $(($(nproc)*4)) bzImage && ~/test.sh
git push -f
git checkout -b debug_regs HEAD~12
git log
git log patch_v2_fsgsbase 
git log patch_v2_fsgsbase HEAD~11
git log patch_v2_fsgsbase~11
git log patch_v2_fsgsbase~12
git log patch_v2_fsgsbase~10
git checkout patch_v2_fsgsbase 
git branch -D debug_regs 
git checkout -b debug_regs HEAD~11
git log
time make -j $(($(nproc)*4)) bzImage && ~/test.sh unittests
~/test.sh unittests
~/test.sh selftests
git status
git checkout debug_regs 
git log
~/test.sh selftests
git status
git push
git checkout patch_v2_fsgsbase 
git push
cd ..
git status
git diff
git checkout -- linux-combined/.config
git status
DO=rebooter ~/run.sh -no-reboot
git status
git commit -sam 'update bash history'
git push
vim git-send-email-cover 
git status
git add -A
git commit -sam 'cover letter updates'
git push
~/test.sh unittests
vim ~/git-send-email-cover 
~/test.sh unittests
vim ~/git-send-email-cover 
~/test.sh unittests
vim ~/git-send-email-cover 
git status
git diff
git commit -sam 'Cover letter updated for PATCH v2'
git status
git push
cd linux-combined/
git status
git diff
KCFLAGS="-Werror" time make -j $(($(nproc)*4)) bzImage && ~/test.sh
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/kvm.c
git diff
git stash
git stash show
git stash --help
git stash show 1
git stash show 2
vim arch/x86/kernel/kvm.c
git add arch/x86/kernel/kvm.c
KCFLAGS="-Werror" time make -j $(($(nproc)*4)) bzImage && ~/test.sh
q
vim ~/test.sh 
~/test.sh unittests
vim ~/test.sh 
SKIP_PRECHECK=1 ~/test.sh unittests
vim ~/test.sh 
SKIP_PRECHECK=1 ~/test.sh unittests
vim ~/test.sh 
SKIP_PRECHECK=1 ~/test.sh unittests
git grep -C 5 cr4_set_bits_and_update_boot
git grep -pC 5 cr4_set_bits_and_update_boot
git grep -pC 5 probe_page_size_mask
git grep -pC 5 init_mem_mapping
git grep -pC 5 setup_arch
git grep -pC 5 -E 'setup_arch\(.*\;'
vim -t start_kernel
git grep -pC 5 -i fsgsbase
git grep Loading
vim PKE
vim kernel/power/hibernate.c
git grep restore_registers
vim arch/x86/power/hibernate_asm_64.S
vim arch/x86/power/hibernate.c
vim arch/x86/power/hibernate_asm_64.S
vim -t setup_real_mode
vim arch/x86/power/hibernate_asm_64.S
git grep restore_registers
vim arch/x86/power/hibernate.c
git log -p patch_v2_fsgsbase 
cat /tmp/cr-pin-test-pZvqt1mr3a/kexec 
cd
git status
git diff
git add test.sh 
git commit -sm 'test.sh: Fix kexec test'
git push
cd linux-combined/
git status
git push -f
git rebase -i HEAD~10
vim Documentation/virt/kvm/msr.rst
git diff
git add -A
git rebase --continue
git rebase -i HEAD~10
vim arch/x86/kernel/cpu/common.c
git diff
git commit -s
git commit -sa
git rebase --edit-todo
git rebase --continue
vim arch/x86/kernel/cpu/common.c
git diff
git status
git add -A
git rebase --continue
git rebase -i HEAD~11
vim arch/x86/kernel/cpu/common.c
git add -A
git rebase --continue
git rebase -i HEAD~11
vim arch/x86/kernel/kvm.c
git add -A
git rebase --continue
git rebase -i HEAD~11
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git rebase --continue
git push -f
git checkout -b patch_v2_backup patch_v2_fsgsbase 
git push -u pdxjohnny patch_v2_backup 
git checkout patch_v2_fsgsbase 
git reset --hard HEAD~12
git pull
git grep -A 10 MSR_KVM_CR0_PIN_ALLOWED
git grep FEATURE_CR_PIN
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kernel/kvm.c
git grep rdmsrl_safe
vim arch/x86/kernel/kvm.c
git grep ARRAY
vim arch/x86/events/intel/p4.c
vim arch/x86/kernel/kvm.c
git diff
git grep \"
git log -p
vim -t arch/x86/events/intel/p4.c
vim -t bzImage_probe
vim -t bzImage64_probe
vim arch/x86/kernel/kvm.c
git log -p
git grep kexec_file
ll
git log -p
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/boot/compressed/head_32.S 
vim arch/x86/kernel/head_32.S 
git status
vim ../README.md 
git log --oneline
git format-patch HEAD~11
./scripts/checkpatch.pl *.patch
vim arch/x86/kernel/kvm.c 
git diff
git stash
vim arch/x86/kernel/machine_kexec_64.c
git status
vim arch/x86/kernel/kexec-bzimage64.c
git stash
git status
git log -n 1
vim drivers/kvm/Kconfig
vim drivers/kvm/sys-hypervisor.c
git diff
git add -A
git commit --amend --date="$(date)"
git status
git format-patch HEAD~11
./scripts/checkpatch.pl 0011-KVM-PV-CR-pinning-status-under-sys-hypervisor.patch 
vim drivers/kvm/Kconfig
git add drivers/kvm/Kconfig
git commit --amend --date="$(date)"
git format-patch HEAD~11
./scripts/checkpatch.pl 0011-KVM-PV-CR-pinning-status-under-sys-hypervisor.patch 
vim drivers/kvm/Kconfig
git status
git rebase -i HEAD~11
git stash pop
git diff
git add -A
git rebase --continue
git rebase -i HEAD~11
git stash pop
git diff
git add -A
git rebase --continue
git format-patch HEAD~11
./scripts/checkpatch.pl *.patch
rm *.patch
./scripts/checkpatch.pl *.patch
git format-patch HEAD~11
./scripts/checkpatch.pl *.patch
git rebase -i HEAD~11
./scripts/checkpatch.pl *.patch
git rebase -i HEAD~11
git commit --amend --author='John Andersen <john.s.andersen@intel.com>'
git log
git rebase --continue
git format-patch HEAD~11
./scripts/checkpatch.pl *.patch
vim arch/x86/boot/compressed/head_64.S
git status
git stash
git rebase -i HEAD~11
git stash pop 1
git diff
git log -p
git add -A
git rebase --continue
git stash pop
git diff
git rebase --continue
git status
git diff
git add -A
git rebase --continue
git format-patch HEAD~11
rm *.patch
git format-patch HEAD~11
./scripts/checkpatch.pl *.patch
cd ..
ll
git status
rm -rf outgoing/
mkdir outgoing/
mv linux-combined/*.patch outgoing/
git add outgoing/*
git add -f outgoing/*
git status
git add outgoing/
git status
git commit -sam 'PATCH v2'
git push
git log -p
vim outgoing/0004-X86-Update-mmu_cr4_features-during-feature-identific.patch 
cd linux-combined/
git rebase -i HEAD~11
git status
git push -f
git format-patch HEAD~11
cd ..
mv linux-combined/*.patch outgoing/
git add -f outgoing/
git status
git commit -sam 'PATCH v2 (updated mmu_cr4_features description)'
git push
vim .gitconfig 
git status
cd linux-combined/
git status
git rebase -i HEAD~11
git statsu
git status
git diff
git grpe nested_svm_vmexit
git grrp -C 5 -p nested_svm_vmexit
git grep -C 5 -p nested_svm_vmexit
vgrep -C 5 KVM_EXIT_SHUTDOWN
vgrep KVM_EXIT_SHUTDOWN
git grep exit_reason arch/x86/kvm/svm/
git grep KVM_EXIT_INTERNAL_ERROR arch/x86/kvm/svm/
git grep KVM_EXIT_INTERNAL_ERROR arch/x86/kvm/
git grep KVM_EXIT_SHUTDOWN arch/x86/kvm/svm/
cd ../kvm-unit-tests/
vim x86/vmx_tests.c 
cd ../linux-v
cd ../linux-combined/
vim arch/x86/kernel/setup.c 
git grep FSGSBASE
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kernel/setup.c 
cd ~/linux-combined/
SKIP_PRECHECK=1 ~/test.sh unittests
git status
git diff
SKIP_PRECHECK=1 ~/test.sh unittests
vim ~/test.sh
SKIP_PRECHECK=1 ~/test.sh unittests
vim ~/test.sh
SKIP_PRECHECK=1 ~/test.sh unittests
cat ../kvm-unit-tests/logs/vmx_cr_pin_test.log
cd ../kvm-unit-tests/
ll
git status
vim x86/vmx_tests.c
git grep ABORT
vim x86/vmx_tests.c
tmux a
tmux a
tmux
sudo passwd johnsa1
tmux a
ll
tmux a
sudo poweroff
tmux a
tmux
vim -t on_cpu_async
dme
dmesg 
cd ../linux-combined/
ll
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/nested.c
dmesg -T
vim arch/x86/kvm/vmx/nested.c
tmux a
dmesg 
dmesg -T
dmesg 
dmesg -T
vim x86/unittests.cfg 
ll
find . -name mx.flat
find . -name vmx.flat
gdb $(find . -name vmx.flat)
git status
cd ..
git status
git diff
git diff -- test.sh
(cd ~/kvm-unit-tests/ && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh vmx_cr_pin_test)
(cd ~/kvm-unit-tests/ && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh vmx_cr_pin_test); cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
git diff -- test.sh
(cd ~/kvm-unit-tests/ && make -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh vmx_cr_pin_test); cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
ll
cd kvm-unit-tests/
ll
SKIP_PRECHECK=1 ~/test.sh unittests
cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
cd ../linux-combined/
vim arch/x86/kvm/vmx/nested.c
git grep host_cr4
git grep host_cr4 arch/x86
vim arch/x86/kvm/vmx/vmcs12.c
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
vim arch/x86/kvm/vmx/vmx.c 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
vim arch/x86/kvm/vmx/vmx.c 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
vim arch/x86/kvm/vmx/vmx.c
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_test.log 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
vim arch/x86/kvm/vmx/vmx.c
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
vim arch/x86/kvm/vmx/vmx.c
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -machine accel=kvm -kernel x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -machine accel=kvm -kernel ~/kvm-unit-tests/x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -machine accel=kvm -kernel ~/kvm-unit-tests/x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S -nographic
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -device pc-testdev -device isa-debug-exit,iobase=0xf4,iosize=0x4 -vnc none -serial stdio -device pci-testdev -machine accel=kvm -kernel ~/kvm-unit-tests/x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S
file ~/kvm-unit-tests/x86/vmx.flat 
readelf -S ~/kvm-unit-tests/x86/vmx.flat
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -device pc-testdev -device isa-debug-exit,iobase=0xf4,iosize=0x4 -vnc none -serial stdio -device pci-testdev -machine accel=kvm -kernel ~/kvm-unit-tests/x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
/home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 --no-reboot -nodefaults -device pc-testdev -device isa-debug-exit,iobase=0xf4,iosize=0x4 -vnc none -serial stdio -device pci-testdev -machine accel=kvm -kernel ~/kvm-unit-tests/x86/vmx.flat -smp 1 -cpu host,+vmx -append vmx_cr_pin_no_enforce_l1_on_l2 -s -S
cd ../kvm-unit-tests/
vim lib/x86/processor.h 
git status
git diff
vim x86/unittests.cfg
git diff
git stash
git log -p
vim x86/vmx_tests.c 
git stash pop
git diff
git reset --hard HEAD
git stash pop
vim x86/vmx_tests.c 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
git status
git diff
vim ~/test.sh 
git status
git add -A
git commit -sam 'in progress spliting up abort and success tests'
git push
vim ~/test.sh 
vim x86/vmx_tests.c 
git grep RESET
vim x86/init.c
vim x86/vmx_tests.c 
git grep make_vmcs_current
vim x86/vmx.c
vim x86/vmx_tests.c 
ctags -R *
cscope --help
cscope
cscope .
cscope -R .
cscope -R *
tmux a
cd ../kvm-unit-tests/
cscope -R * --help
cscope -R * -b
cscope -R */* -b
cscope -k -R * -b
vim x86/vmx_tests.c 
cscope -k -R * -b
vim x86/vmx_tests.c 
rm cscope.out 
vim x86/vmx_tests.c 
git grep abort
vim x86/vmx_tests.c 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_no_enforce_l1_on_l2.log 
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_trigger_vmx_abort.log 
cd ../kvm-unit-tests/
ll
vim x86/vmx_tests.c
git grep smp
git grep smp x86/
vim x86/unittests.cfg
git grep smp x86/
vim x86/vmexit.c
vim x86/vmx.c 
git grep parallel x86/vm*
vim x86/vmx.c 
vim x86/vmexit.
vim x86/vmexit.c 
vim x86/vmx_tests.c
vim x86/unittests.cfg
vim x86/vmx_tests.c
git status
vim x86/vmx_tests.c
vim x86/unittests.cfg 
vim ~/test.sh
objdump -D x86/vmx.flat 
objdump -D x86/vmx.flat | less
dmesg -T
cd ../linux-combined/
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
dmesg -T
vim arch/x86/kvm/vmx/vmx.c
git grep host_cr4
git grep HOST_CR4
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/nested.c
git log --author=Sean
git log
git log --author=sean.j.christopherson@intel.com
git log --author=sean.j.christopherson@intel.com --reverse 
vim arch/x86/kvm/vmx/nested.c
git blame arch/x86/kvm/vmx/nested.c
git log -p not to reset guest simply here
git log -p 55d2375e58a61
git log -p arch/x86/kvm/vmx/vmx.c
git log -p arch/x86/kvm/vmx.c
git log --stat a821bab2d1ee869e04b218b198837bf07f2d27c1
git log -p -- arch/x86/kvm/vmx.c
vim arch/x86/kvm/vmx/nested.c
git status
git diff
git grep restore
git grep restore_image
vim arch/mips/power/hibernate.c
vim arch/x86/power/hibernate_asm_64.S
git grep in_suspend
git grep in_suspend arch/x86
git grep in_suspend
vim kernel/power/hibernate.c
git grep CPU_RESET
git grep RESET
git grep RESET arch/x86
cd ../kvm-unit-tests/
vim x86/vmx_tests.c
dmesg 
tmux a
tmux
tmux a
cd ~/kvm-unit-tests/
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_trigger_vmx_abort.log 
git status
rm ncscope.out 
git status
git diff
git checkout -- x86/vmx.c
git checkout -- x86/run
git diff
SKIP_PRECHECK=1 ~/test.sh unittests && cat ~/kvm-unit-tests/logs/vmx_cr_pin_trigger_vmx_abort.log 
dem
dme
dmesg 
dmesg -T
git status
git diff
git add -A
git rebase --continue
git add -A
git status
git rebase --continue
git commit --amend --author='John Andersen <john.s.andersen@intel.com>'
git rebase --continue
git status
git log -p
git push -f
cd ../linux-combined/
ll
vim arch/x86/kvm/vmx/nested.c
git staus
git diff
git status
git add -p
git diff --staged
git status
git log
git status
git diff
git diff > ../debug.patch
git checkout -- .
git statu
git status
git diff --staged
git stash
git rebase -i HEAD~11
git stash pop
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
git diff
git status
git add -A
git rebase --continue
git log -p
git rebase -i HEAD~11
git log
git log -p
git rebase -i HEAD~11
git rebase -i HEAD~10
git log -p
git rebase -i HEAD~10
vim drivers/kvm/Kconfig
git status
git add -a
git add -A
git rebase --continue
git log -p
git rebase -i HEAD~10
git rebase -i HEAD~9
git grep CR0_WP
git grep CR0_WP --help
git grep --help
git grep -- CR0_WP
git grep -C 5 -- CR0_WP
git grep -C 5 HEAD~11... -- CR0_WP
git grep -C 5 HEAD~11 -- CR0_WP
git grep -C 5 HEAD -- CR0_WP
git grep -C 5 kvm/next -- CR0_WP
git status
git push -f
git grep -C 5 16487ff3a5ef... -- CR0_WP
git log
git checkout next
git grep -C 5 -- CR0_WP
vim arch/x86/realmode/rm/trampoline_64.S
git grep startup_32
vim arch/x86/realmode/rm/trampoline_64.S
git grep startup_32
vim arch/x86/kernel/head_32.S
git status
git checkout patch_v2_fsgsbase 
git status
git rebase -i HEAD~9
git log -p
vim arch/x86/kernel/relocate_kernel_64.S
git add arch/x86/kernel/relocate_kernel_64.S
git commit --amend
git log -p
git grep -C 5 -- CR0_WP
git grep -C 5 -- '%cr0'
cd ..
git status
git diff test.sh
git add test.sh
git diff 
git grep startup_32
vim ~/run..sh
vim ~/run.sh
make menuconfig
rm -rf *
ll
tmux a
cd ../kvm-unit-tests/
ll
vim x86/vmx_tests.c
git grep -i shutdown
git grep fail
vim x86/vmx.c 
git grep abort_target
vim x86/vmx.c
vim x86/vmx_tests.c
vim run_tests.sh 
vim x86/run 
vim run_tests.sh 
vim x86/vmx_tests.c
vim x86/vmx.c 
vim x86/unittests.cfg 
git grep no-reboot
vim x86/run 
vim x86/vmx_tests.c
vim x86/vmx.c 
vim x86/vmx_tests.c
vim x86/vmx.c 
vim x86/vmx_tests.c
cd ../linux-combined/
ll
git log -p
vim arch/x86/kernel/relocate_kernel_32.S
vim arch/x86/boot/compressed/efi_thunk_64.S
ll
git diff
vim -t CR0_STATE
vim arch/x86/kernel/relocate_kernel_32.S
git diff
vim arch/x86/realmode/rm/trampoline_64.S
vim .config
make menuconfig
git status
gdb vmlinux 
file vmlinux
file arch/x86/boot/bzImage 
file arch/x86_64/boot/bzImage 
ll ~/chroot/usr/bin/rebooter 
file ~/chroot/usr/bin/rebooter
find . -name bzImage
git log
git rebase -i HEAD~9
vim arch/x86/kernel/cpu/common.c
git status
git diff
vim arch/x86/kernel/cpu/common.c
git status
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git commit --amend
git log -p
git commit --amend
git rebase --continue
git grep X86_32
vim arch/x86/Kconfig
git rebase -i HEAD~9
vim arch/x86/Kconfig
vim drivers/kvm/Kconfig 
git add -A
git status
git rebase --continue
vim drivers/kvm/Kconfig 
vim drivers/xen/Kconfig 
git grep SYS_HY
vim arch/x86/kernel/kvm.c 
make menuconfig
tmpd
cd $(mktemp -d)
wget http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/x86/alpine-virt-3.12.0-x86.iso
file alpine-virt-3.12.0-x86.iso 
parted alpine-virt-3.12.0-x86.iso 
fdisk -l alpine-virt-3.12.0-x86.iso
rm alpine-virt-3.12.0-x86.iso 
curl -fSL 'http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/x86/alpine-minirootfs-3.12.0-x86.tar.gz' | tar xvz
ll
curl -o run-vm.sh -fSL https://gist.github.com/pdxjohnny/a0dc3a58b4651dc3761bee65a198a80d/raw/da2f456c9ecbb56bf84ee30c8c83a2762e86fb43/run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
ll
curl -o run-vm.sh -fSL https://gist.github.com/pdxjohnny/a0dc3a58b4651dc3761bee65a198a80d/raw/da2f456c9ecbb56bf84ee30c8c83a2762e86fb43/run-vm.sh
ll
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
rm -rf chroot/ image.qcow2 
umount -R chroot/
sudo umount -R chroot/
sudo umount -R chroot/; sudo qemu-nbd --disconnect /dev/nbd1
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
sudo umount -R chroot/; sudo qemu-nbd --disconnect /dev/nbd1
vim run-vm.sh 
sudo umount -R chroot/; sudo qemu-nbd --disconnect /dev/nbd1
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
sudo umount -R chroot/; sudo qemu-nbd --disconnect /dev/nbd1; rm -rf chroot/ image.qcow2 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
ll chroot/
ll chroot/bin/base64 
ll chroot/usr/bin/init.sh 
cat chroot/usr/bin/init.sh
sudo vim chroot/usr/bin/init.sh
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
sudo vim chroot/usr/bin/init.sh
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
sudo vim chroot/usr/bin/init.sh
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
vim run-vm.sh 
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
QEMU="${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" BZ_IMAGE=~/linux-combined/arch/x86/boot/bzImage VM_DISK=$PWD/image.qcow2 VM_DEV=/dev/nbd1 CHROOT=$PWD/chroot bash run-vm.sh
ll
cat run-vm.sh 
ps aux | grep make
cd
git status
git diff
cd kvm-unit-tests/
git status
git diff
git log -p
vim x86/vmx_tests.c
git add -A
git status
git commit -sam asdf
vim x86/vmx_tests.c
vim ../test.sh
git status
git diff
git add -A
git commit -sam asdf
git push
git push -f
git status
python3
vim ~/run.sh
~/test.sh 
vim ../run.sh 
sudo vim ~/chroot/usr/bin/uefi-setup.sh
vim .config
git status
git push -f
vim Documentation/x86/boot.rst
vim #       modified:   arch/x86/boot/compressed/kernel_info.S                      │
vim arch/x86/boot/compressed/kernel_info.S
vim arch/x86/include/uapi/asm/bootparam.h
git log -p
vim arch/x86/kernel/kexec-bzimage64.c
git grep pinning
git grep pinned.high
vim arch/x86/kvm/svm/nested.c
git status
git checkout HEAD~1 -- arch/x86/kvm/svm/nested.c
git status
git diff --staged
git log -p
git staths
git status
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
git stash
git status
git stash show
git diff --staged
git diff --staged > /tmp/f
git reset HEAD .
git status
git checkout -- .
git status
git rebase --continue
git log -p
git log -p HEAD~9 -n 2 --reverse 
git log -p HEAD~9 --reverse 
git log -p
git status
git push -f
python3
