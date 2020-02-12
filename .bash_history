. /etc/environment 
find . -name msr.h
gdb ./vmlinux 
git add -A
git add arch/x86/
git add arch/x86/kernel/setup.c
git add chroot/usr/bin/uefi-setup.sh 
git add -f compile.sh 
git add -f outgoing/*
git add -f outgoing/0001-X86-Update-mmu_cr4_features-when-when-pinning.patch 
git add -f outgoing/*.patch
git add outgoing/*
git am ../0001-Add-cr-pinning-test.patch
git am --abort
git am ../outgoing/*
git am ../outgoing/0002
git am ../outgoing/0003
git am ~/outgoing/*.patch
git apply
gi tatus
git c 'allow guest reads of pinned msrs'
git c 'asdf'
git c 'cmdline flag'
git c 'fix hibernate'
git checkout -- arch/x86/kernel/smpboot.c
git checkout -b cr_pin
git checkout -b cr_pin_msr
git checkout hc_harden
git checkout HEAD~1 -- arch/x86/kernel/cpu/common.c
git checkout kvm/next
git checkout linux/next
git checkout -- x86/cr_pin.c
git checkout -- x86/msr.c
git c 'in progress on cr_pin'
git clean -ndf
git clean -ndx
git clean -xdf
git commit --amend
git commit --ammend
git commit -sm 'add compile.sh'
git commit -sm 'Add pv_cr_pin to cmdline'
git commit -sm 'hotpllug bringup works, hibernate with multiple cpus does not'
git config diff.orderFile scripts/git.difforder
git config format.subjectprefix 'kvm-unit-tests PATCH'
git config --global core.excludesfile ~/.gitignore_global
git c 'X86: Update mmu_cr4_features when when pinning'
git dif
git diff
git diff 
git diff HEAD~1
git diff HEAD~1 | grep -C 40 kexec.h
git diff HEAD~1 | grep kexec.h
git diff origin/master 
git diff outgoing/
git diff --staged
git fetch kvm
git fetch origin
git format-patch HEAD~1
git grep 
git grep accel
git grep arch/x86/kernel/setup.c
git grep bit
git grep boot_command_line
git grep boot_command_line | grep extern
git grep boot_command_line | grep \\.h
git grep boot.h
git grep boot.h arch/x86/mm/pti.c
git grep 'Booting Node'
git grep -C 20 elfcorehdr | grep -C 40 kexec
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 -E 'elfcorehdr|kexec'
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 -E 'elfcorehdr|kexec' | less
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 elfcorehdr
git grep -C 20 elfcorehdr | grep kexec
git grep cmdline
git grep cmdline_
git grep cmdline_find
git grep cmdline_find_option_bool
git grep cmdline_find_option_bool\(const
git grep cmdline.h arch/x86/mm/pti.c
git grep config_enabled
git grep CR4
git grep cr4_set_bits_and_update_boot
git grep crashkernel
git grep CR_PIN
git grep \#define bit
git grep \#define\ bit
git grep -E 'ifdef.*&&'
git grep elfcorehdr
git grep enabled
git grep enable_nonboot_cpus
git grep extra_params
git grep for_each_unittest
git grep id_enabled
git grep identify_cpu
git grep 'ifdef.*&&'
git grep __initdata
git grep init_hypervisor_platform
git grep init_platform
git grep INVPCID_SINGLE
git grep -i para
git grep -i parav
git grep -i pv
git grep is_enabled
git grep IS_ENABLED
git grep -i smm
git grep -i smm tools/testing/selftests/kvm
git grep -i umip
git grep kexec
git grep KEXEC
git grep KEXEC_CORE
git grep kexec_load_disabled
git grep KVM_
git grep kvm_clock
git grep kvm_msrs
git grep kvm test/
git grep mmu_cr4_features
git grep msr.c
git grep msr.flat
git grep msr.o
git grep native_cpu_up
git grep nokalsr
git grep nokaslr
git grep -p cr4_set_bits_and_update_boot
git grep -p mmu_cr4_features
git grep processor.c
git grep -p write_cr4_checking
git grep __ro_after_init
git grep \.S
git grep \\.S
git grep secondary_startup_64
git grep selftest
git grep setup_idt
git grep smm
git grep smm_test
git grep smp_init
git grep smp_store_cpu_info
git grep start_secondary
git grep start_secondary arch/x86/
git grep state_store
git grep umip
git grep write_cr4
git grep write_cr4_checking
git grep wrmsr
git grep wrmsr_checking
git grep X86_CR0_WP
git grep X86_CR4
git grep X86_FEATURE_ARCH_CAPABILITIES
git grep X86_FEATURE_SMAP
git grep X86_FEATURE_SMEP
git idff
git log
git log -n 3
git log -n 3 | grep -i patch
git log -n 3 | grep patch
git log -p
git log -p | CONFIG_
git log -p | grep CONFIG
git log -p | grep CONFIG_
git log -p grep CONFIG
git log -p | grep 'if.*CONFIG'
git log -p | grep if\.\*(CONFIG_
git log -p | grep if\.\*\(CONFIG_
git log -p | grep if\.\*CONFIG_
git log -p | grep ifCONFIG
git log -p | grep 'if.*CR'
git log -p | grep 'if.*PARAVIRT'
git log -p HEAD~1
git log -p HEAD~1 -n 1
git log -p HEAD~2
git log -p HEAD~2 -n 1
git log -p HEAD~3
git log -p -n 3 | grep KVM_
git log -p -n 3 | grep MSR
git pull
git pull kvm next
git pull kvm/next
git push
git push -f
git push -u origin -f hc_harden
git push -u pdxjohnny
git rebase --continue
git rebase -i HEAD~2
git rebase -i HEAD~3
git rebase -i HEAD~4
git remote add pdxjohnny git@github.com:pdxjohnny/kvm-unit-tests
git remote -v
git reset --hard HEAD
git reset --hard HEAD~2
git reset --hard origin/master
git reset HEAD x86/msr.c
git stash
git stash pop
git stastus
git stats
git statu
git status
git sttus
history | grep \\.S
ll
ll $(find . -name msr.h)
ll $(yarn global bin)
ll ~/.gitignore 
ll /home/johnsa1/chroot/
ll /home/johnsa1/chroot/usr/bin
ll /home/johnsa1/kvm-unit-tests/node_modules/.bin
ll logs/
ll scripts/
ll sound/
ll tools/testing/selftests/kvm
ll x86_64/
make
make check
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
make olddefconfig
make standalone
make standalone -j $(($(nproc)*4))
make standalone -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat 
make standalone -j $(($(nproc)*4)) && ./x86-run x86/msr.flat 
make TARGETS="kvm" kselftest
make TARGETS="kvm" summary=1 kselftest
man timeout
mv 0001-KVM-X86-Add-CR-pin-MSRs.patch 0002
mv 0002-X86-Use-KVM-CR-pin-MSRs.patch 0003
mv 0003-X86-Update-mmu_cr4_features-when-during-pinning.patch 0001
mv ~/.bashrc ~/.bash_profile
mv x86_64/smm_cr_pin.c x86_64/smm_cr_pin_test.c
nodejs
nodemon
nodemon -e c --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86/cr_pin; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/x86_64-softmmu/qemu-system-x86_64 ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/umip.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/umip.flat; test 1'
npm
objdump -D ~/linux-combined/vmlinux | less
objdump -D vmlinux | less
objdump -F ~/linux-combined/vmlinux | less
objdump ~/linux-combined/vmlinux | less
python3
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/umip.flat
RELOAD=1 ~/run.sh
rm 0001
rm 0001-Add-cr-pinning-test.patch 
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
rm ../../../../scripts/pnmtologo
rs
~/run.sh
~/run.sh 
~/run.sh -no-reboot
~/run.sh -qmp unix:/tmp/q,server,nowait
./scripts/ver_linux 
sudo ~/chroot/usr/bin/hibernate 
sudo dnf -y install gcc-c++ make yarn
sudo dnf -y install yarn
sudo /home/johnsa1/chroot/usr/bin
sudo make TARGETS="kvm" summary=1 kselftest
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
sudo reboot
sudo systemctl restart sshd
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo vim /etc/ssh/sshd_config 
time make -j $(($(nproc)*4)) bzImage
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
tmux
tmux attaahc
tmux attach
uname -a
vim 
vim $(find . -name msr.h)
vim 0001 
vim arch/x86/boot/main.c
vim arch/x86/boot/setup.c
vim arch/x86/include/asm/cpufeatures.h
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/Kconfig
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kernel/cpu/hypervisor.c
vim arch/x86/kernel/fpu/init.c
vim arch/x86/kernel/kvm.c
vim arch/x86/kernel/relocate_kernel_64.S
vim arch/x86/kernel/setup.c
vim arch/x86/kernel/setup.c 
vim arch/x86/kernel/smpboot.
vim arch/x86/kernel/smpboot.c
vim arch/x86/kvm/cpuid.c
vim arch/x86/kvm/vmx/ops.h
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/x86.c
vim arch/x86/lib/cmdline.c
vim arch/x86/mm/init.c
vim arch/x86/power/hibernate_asm_64.S
vim ~/.bashrc
vim ~/compile.sh
vim .config
vim Documentation/admin-guide/kernel-parameters.txt
vim Documentation/admin-guide/sysctl/kernel.rst
vim fs/proc/vmcore.c
vim ~/.gitignore_global
vim .gitlab-ci.yml 
vim init/main.c
vim kernel/crash_core.c
vim kernel/crash_dump.c
vim kernel/kexec.c
vim kernel/power/hibernate.c
vim kernel/sysctl.c
vim lib/x86_64/processor.c
vim lib/x86/desc.c
vim lib/x86/desc.h
vim lib/x86/smp.c
vim ~/linux-combined/tools/arch/x86/include/uapi/asm/kvm.h
vim logs/msr.log 
vim Makefile 
vim ../outgoing/0003
vim README
vim README.md
vim ~/run.sh
vim ~/run.sh 
vim scripts/common.bash
vim scripts/extract-vmlinux 
vim scripts/runtime.bash
vim scripts/xz_wrap.sh
vim -t boot_command_line
vim -t cmdline_find_option_bool
vim -t cr4_set_bits_and_update_boot
vim -t enable_nonboot_cpus
vim -t hibernation_snapshot
vim -t identify_cpu
vim -t identify_secondary_cpu
vim -t init_test
vim -t mmu_cr4_features
vim -t native_cpu_up
vim tools/arch/x86/include/uapi/asm/kvm.h
vim tools/testing/selftests/kvm/x86_64/smm_test.c
vim -t setup_idt
vim -t setup_vm
vim x86_64/smm_test.c
vim x86/cr_pin.c
vim x86/hypercall.c
vim x86/kvmclock.c
vim x86/kvmclock.h
vim x86/kvmclock_test.c
vim x86/Makefile.common
vim x86/msr.c
vim x86/pcid.c
vim x86/run
vim x86/smap.c
vim x86/umip.c
vim x86/unittests.cfg
vim x86/unittests.cfg 
watch -n 0.2 -d sh -c 'dmesg | grep -E "Ya dead|kvm:"'
watch -n 0.2 -d sh -c dmesg | grep -E "Ya dead|kvm:"
./x86_64/smm_test 
./x86-run x86/msr.flat 
yarn bin
yarn global add nodemon
yarn global bin
cat ~/.bash_history | sort
cat ~/.bash_history | sort | wc -l
cat ~/.bash_history | sort | uniq | wc -l
cat ~/.bash_history | sort | uniq | wc -l > /tmp/f
cp /tmp/f ~/.bash_history 
cat ~/.bash_history
cat ~/.bash_history | sort | uniq > /tmp/f
cp /tmp/f ~/.bash_history 
cat ~/.bash_history
ll
ll .bash_history 
cat .bash_history
git checkout -- .bash_history
git status
vim .bash_history 
git checkout -- .bash_history
cd linux-combined/
ll
git log
git log -p
git status
git diff
vim arch/x86/kvm/x86.c
git diff
git checkout -- arch/x86/kvm/x86.c
git status
gti diff
git diff
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim ~/.bash_profile
vim ~/.bashrc
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c
git status
git diff
git log
git c 'ro_smram is non memcpyd correctly'
git push
vim arch/x86/kvm/emulate.c
git log -p
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_ro_smram_test; test 1')
sudo journalctl --dmesg -f
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
cd linux-combined/
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
git status
git idff
git diff .bash_history
git add .bash_history
git commit -sm 'add to bash history'
git push
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
cd ~/linux-combined/
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
cd ..
git status
~/run.sh
git status
git add -f outgoing/
git status
git c 'add selftest
git c 'add selftest'
git push
vim outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
cp outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
cp outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch outgoing/0005.patch
vim outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
vim outgoing/0005.patch
git status
ll outgoing/
git add outgoing/*.patch
git add -f outgoing/*.patch
git status
git rm -rf outgoing/
git status
git add -f outgoing/*
git status
git c 'prep for v2 rebase'
git push
git status
cd linux-combined/
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
git status
git diff
git c 'ro_smram is being reallocated'
git push
vim arch/x86/kvm/x86.c
git status
git checkout -b ro_smram
git push -u pdxjohnny
git push -u origin
git push -u origin ro_smram
git commit --amend
git push -f
git checkout hc_harden
git status
rm ../outgoing/0004.patch ../outgoing/0005.patch
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git log
git rebase -i HEAD~5
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
vim ../outgoing/0004-ssm-cr-pin-test-got-cr4-from-smm-sram.patch 
git reset --hard HEAD~1
git apply ../outgoing/0004-ssm-cr-pin-test-got-cr4-from-smm-sram.patch
git log
git status
git reset --hard HEAD
git status
rm tools/testing/selftests/kvm/x86_64/smm_ro_smram_tes*
git am ../outgoing/0004-ssm-cr-pin-test-got-cr4-from-smm-sram.patch
git status
git push -f
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c
vim arch/x86/kvm/x86.c
git status
git idff
git add -A
git status
git c 'restore pinned bits'
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git rebase -i HEAD~4
git stsaus
git status
git add -A
git commit --amend
git push -f
git add -A
git status
git commit --amend
git puhs -f
git push -f
git status
git diff
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git reset --hard HEAD~1
git apply ../outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
vim ../outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git log
git status
git diff
git status
git add arch/x86/
git status
git commit --amend
git status
git reset --hard HEAD~3
git log
git apply ../outgoing/0001-X86-Update-mmu_cr4_features-during-feature-identific.patch
git apply ../outgoing/0002-KVM-X86-Add-CR-pin-MSRs.patch
git apply ../outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git apply ../outgoing/0003-X86-Use-KVM-CR-pin-MSRs.patch
git apply ../outgoing/0005.patch
git rebase -i HEAD~4
git status
git reset --hard HEAD
git am ../outgoing/0001-X86-Update-mmu_cr4_features-during-feature-identific.patch
git am ../outgoing/0002-KVM-X86-Add-CR-pin-MSRs.patch
git am ../outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git am ../outgoing/0003-X86-Use-KVM-CR-pin-MSRs.patch
git am ../outgoing/0005.patch
git status
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git am ../outgoing/0005.patch
git am --abort
git am ../outgoing/0005.patch
git status
git log
git log -p
git rebase -i HEAD~4
vim arch/x86/kvm/x86.c
git status
git add arch/
git status
git rebase --continue
git rebase -i HEAD~4
git log -p
git status
git push -f
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git fetch kvm
git reset --hard kvm/next
git log
git am ../outgoing/
git am ../outgoing/*
git status
git checkout -b hc_harden_prep_v2
git push -u origin
git push --set-upstream origin hc_harden_prep_v2
git log
git log -- tools/testing/selftests/kvm/x86_64/
git commit --amend
git push -f
cd ~/linux-combined/
vim tools/testing/selftests/kvm/x86_64/smm_ro_smram_test.c
cd tools/testing/selftests/kvm/x86_64/
mv smm_ro_smram_test.c smm_cr_pin_test.c
cde ..
cd ..
vim .gitignore
vim Makefile 
git status
git diff
git status
rm x86_64/smm_ro_smram_test 
git status
git add -A
git status
vim x86_64/smm_cr_pin_test.c
git grep MSR_IA32_APICBASE,
git grep MSR_IA32_APICBASE
vim include/x86_64/processor.h
git log -p -n 4 | grep KVM
(cd ~/linux-combined/ && git grep MSR_KVM_CR4_PINNED)
vim ~/linux-combined/arch/x86/include/uapi/asm/kvm_para.h
vim include/x86_64/processor.h
vim x86_64/smm_cr_pin_test.c
git grep set_cr4
git grep set_cr0
vim include/x86_64/processor.h
git status
git add .
git status
git diff --staged
vim x86_64/smm_cr_pin_test.c
pwd
git status
git diff
~/run.sh 
git status
git diff
git c 'add to history'
git push
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_ro_smram_test; test 1')
cd linux-combined/
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_ro_smram_test; test 1')
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
tmux attach
tmux
sudo ~/chroot/usr/bin/hibernate 
ll ~/chroot/usr/bin/hibernate
~/run.sh 
git status
sudo ~/chroot/usr/bin/hibernate 
tmux attach
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
ll
cd tools/testing/selftests/kvm/
vim x86_64/smm_cr_pin_test.c
(cd tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
vim x86_64/smm_cr_pin_test.c
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
find . -name vmx.h
vim include/x86_64/vmx.h
vim x86_64/smm_cr_pin_test.c
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
git status
git diff
git add .
git commit --amend
git status
git stash
git status
git log
cd linux-combined/
cd ../kvm-unit-tests/
ll
./run_tests.sh 
git status
./x86-run x86/msr.flat 
./x86-run x86/cr_pin.flat 
./run_tests.sh 
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh 
ll
git status
git diff
git add -A
git status
git log
git commit --amend
git status
git push -f
git status
ll
git log -p
vim x86/cr_pin.c
git status
make
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh 
ll
vim logs/cr_pin.log 
vim x86/cr_pin.c
vim logs/cr_pin.log 
vim x86/cr_pin.c
make
vim logs/cr_pin.log 
vim x86/cr_pin.c
make
git add -A
git status
git commit --amend
git push -f
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh 
vim logs/cr_pin.log 
sudo journalctl --dmesg -f
cd ../linux-combined/
tmux
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh 
vim arch/x86/kvm/x86.c
git status
git diff
git commit --amend
git status
git c 'broken checking logic'
git push
git push -f
git log -p HEAD~2 -n 1
git log -p HEAD~3 -n 1
git status
git rebase -i HEAD~4
git log -p
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh 
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh 
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
git status
vim ../t
git add -A
git diff --staged
vim arch/x86/kvm/x86.c
git add -A
git log
git commit --amend
git rebase -i HEAD~4
git log -p
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
git rebase -i HEAD~4
git stash pop
git add arch/
git log -p
git commit --amend
git status
git rebase --continue
git checkout -b hc_harden_prep_v2_stage
git push -u pdxjohnny
git push -u origin
    git push --set-upstream origin hc_harden_prep_v2_stage
git status
git log -p
git fetch kvm next
git rebase kvm/next
git status
vim arch/x86/kernel/setup.c
git diff arch/x86/kernel/setup.c
git log
git status
git add arch/x86/kernel/setup.c
git diff --staged arch/x86/kernel/setup.c
vim arch/x86/kernel/setup.c
git diff --staged arch/x86/kernel/setup.c
git add arch/x86/kernel/setup.c
git diff --staged arch/x86/kernel/setup.c
git status
git diff --staged
vim arch/x86/include/asm/kvm_para.h
git add arch/x86/include/asm/kvm_para.h
git status
git rebase --continue
git status
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git status
git push -f
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
make olddefconfig
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd 
git diff
git status
git add -f outgoing/*
gitstatus
git status
git add outgoing/
git add -f outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git rm outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git rm -f outgoing/0004-selftests-kvm-SMM-CR-pin-test.patch
git status
git diff --staged
cd linux-combined/
git log -p -n 4 --reverse
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git diff
git add tools/
git status
git commit --amend
git push -f
readelf -S /usr/bin/bash
readelf -S ~/.local/bin/ninja 
git statu
git status
cd ~/kvm-unit-tests/
ll
vim run_tests.sh 
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh -g cr_pin
vim run_tests.sh 
git grep only_group
vim run_tests.sh 
vim scripts/runtime.bash
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 bash -x ./run_tests.sh -g cr_pin
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 bash -x ./run_tests.sh -g cr_pin 2>&1 | grep -C 10 -i cr_pin
vim scripts/runtime.bash
vim run_tests.sh 
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 bash -x ./run_tests.sh cr_pin
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin
cat logs/cr_pin.log 
rm logs/cr_pin.log
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin
cat logs/cr_pin.log 
sudo journalctl --dmesg -f
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin
sudo journalctl --dmesg -f
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
git status
git push -f
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
make
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
git diff x86/cr_pin.c
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
vim x86/cr_pin.c
git status
git diff
git add -A
git commit --amend
git push -f
uname -a
cd linux-combined/
~/run.sh
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
sudo reboot
tmux attach
tmux
~/run.sh
cd linux-combined/
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
git log
ll
vim .config
git grep EXTRAVERSION
vim Makefile 
git log -p Makefile
grubby
grubby list-
grubby list
sudo grubby list
sudo grubby list-kernels
sudo grubby --help
ll /usr/
ll /usr/share/
ll /usr/lib/modules/
sudo grubby --help
sudo grubby --default-kernel
sudo grubby --set-default /boot/vmlinuz-5.5.0+
ll /boot/vmlinuz-5.5.0+
ll /boot/
ll /boot/ | grep Feb
sudo reboot
cat >> README.md 
vim README.md
git diff
git status
git add README.md 
git commit -sm 'README: Suspend to RAM fault'
git push
cd linux-combined/
git grep do_idle
git grep do_idle arch/x86
git grep ktime_get
git grep tick_nohz_idle_enter
vim kernel/rcu/tree.c
vim kernel/time/timekeeping.c
git grep do_idle arch/x86
git grep do_idle kernel/
vim kernel/sched/idle.c
ll
history | grep -i console
git grep console
dmesg 
cd linux-combined/
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
tmux
cd linux-combined/
~/run.sh
git status
git diff
git reset --hard HEAD
cd ..
git log
git log -p | grep -i cover
vim git-send-email-cover 
cd linux-combined/
git log --walk-reflogs
cd ..
ll
git status
sudo cp chroot/usr/bin/hibernate chroot/usr/bin/susram
sudo vim chroot/usr/bin/susram
sudo chmod 755 chroot/usr/bin/susram
git add -f chroot/usr/bin/susram
git status
git add -A
git status
git c 'update to kvm weird branch'
git push
~/run.sh
cd linux-combined/
git grep suspend
~/run.sh
git branch
git checkout hc_harden_prep_v2
git diff
git stash
git checkout hc_harden_prep_v2
git log origin/hc_harden_prep_v2
git log
git push -f
git stash pop
git status
git diff
git c 'log on volation'
git push
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
make olddefconfig
vim Makefile 
sudo grubby --set-default /boot/vmlinuz-5.5.0-cr5+
ll /boot/vmlinuz-5.5.0-cr5+
ll /boot/
ll /boot/vmlinuz-5.5.0-rc5+
sudo grubby --set-default /boot/vmlinuz-5.5.0-rc5+
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
sudo journalctl --dmesg -f
cd ~/seabios/
ll
git grep -i rtc
git grep -i rtcwake
git grep -i rtcw
git grep -i rtc
git grep resume
vim src/resume.c
ctags -R *
vim src/resume.c
ctags -R *
vim src/resume.c
