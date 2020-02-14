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
ll /boot/
ll /boot/vmlinuz-5.5.0-rc5+
sudo grubby --set-default /boot/vmlinuz-5.5.0-rc5+
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
ll
git log
vim ~/run.sh
~/run.sh
vim ~/chroot/do
sudo vim ~/chroot/do
sudo vim ~/chroot/usr/bin/init.sh
~/run.sh
~/run.sh -s -S
vim arch/x86/kernel/process.c
vim ./arch/x86/include/asm/paravirt.h
git status
rm arch/x86/crypto/poly1305-x86_64-cryptogams.S drivers/tty/vt/conmakehash scripts/sorttable
git status
git log
git log -p
git log -p -n 4 --reverse
git rebase -i HEAD~5
vim arch/x86/kvm/x86.c
git grep 
git grep pmode_cr4
vim arch/x86/kernel/acpi/sleep.c
~/run.sh
~/run.sh -s -D
~/run.sh -s -S
vim ~/run.sh
~/run.sh -s -S
vim ~/run.sh
~/run.sh -s -S
vim ~/run.sh
~/run.sh
ll ~/Dow
ll ~/Downloads
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage
cat ~/chroot/usr/bin/uefi-setup.sh 
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -cmdline 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -cmdline 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -cmdline 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/init.sh
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
vim arch/x86/kvm/x86.c
git status
git diff
git rebase --continue
git status
git log
vim arch/x86/kvm/x86.c
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
vim arch/x86/kvm/x86.c
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh' -s -S
vim arch/x86/kvm/x86.c
vim ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
vim ~/git-send-email-cover 
cd ..
git status
git add -A
git c 'update TODOs'
git push
git log -p
cd linux-combined/
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh' -s -S
vim ~/git-send-email-cover 
git status
git grep kvm_valid_cr4
vim arch/x86/kvm/x86.c
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh' -s -S
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh' -s -S
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/do
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
sudo vim ~/chroot/do
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
git status
git diff
vim arch/x86/kvm/x86.c
git status
git diff
git add -A
git status
git commit --amend
git status
gi tlog
git log
git log -p
git rebase -i HEAD~4
git rebase -i HEAD~5
git rebase --abort
git status
git rebase -i HEAD~4
git status
git log -p
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
reset
git diff
git status
git commit -a --amend
git status
git log -p
vim arch/x86/kvm/x86.c
git log -p
vim arch/x86/kvm/x86.c
git diff
git commit -a --amend
git status
git rebase --continue
git status
git push -f
git log -p
git rebase -i HEAD~4
git log -p
vim Documentation/admin-guide/kernel-parameters.txt
git status
git diff
git add -A
git status
git commit --amend
vim ~/git-send-email-cover 
git log
git commit --amend
git log -p
vim arch/x86/include/asm/kvm_para.h
git status
git add -A
git commit --amend
git log -p
vim arch/x86/kernel/kvm.c
git commit -a --amend
git log -p
git status
git push -f
git rebase -i HEAD~4
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git status
git diff
git status
git add -A
git rebase --continue
git status
git rebase -i HEAD~4
git rebase --continue
git rebase -i HEAD~4
git status
git log
git push -f
git log -p -n 4 --reverse
git rebase -i HEAD~4
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
git status
git add arch/
git rebase --continue
vim arch/x86/kvm/x86.c
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git diff
git checkout -- arch/x86/kvm/x86.c
git add tools/
git status
git stash
git rebase -i HEAD~4
git stash pop
git diff
git add tools/
git rebase --continue
git status
git push -f
vim ~/git-send-email-cover 
git log -p
git log
cat >> ~/git-send-email-cover 
vim ~/git-send-email-cover
git status
git push -f
cd ..
git status
~/run.sh 
git status
git diff
git add -A
git c 'working on coverletter, almost ready for v2'
git push
git status
git log
vim ~/git-send-email-cover
git status
git diff
git c 'updates to cover letter'
git push
cd linux-combined/
git rebase -i HEAD~4
git rebase --continue
git commit -a --amend
git status
git log -n 4
git log -n 4 | grep -i patch
git rebase -i HEAD~4
git commit --amend
git rebase --continue
git log -n 4 --reverse 
git status
git push -f
git status
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git status
git branch -D hc_harden_prep_v2_stage 
git checkout -b hc_harden_prep_v2_stage
git fetch kvm next
git log
git rebase kvm/next
git status
vim Documentation/virt/kvm/msr.rst
git diff Documentation/virt/kvm/msr.rst
vim Documentation/virt/kvm/msr.rst
git diff Documentation/virt/kvm/msr.rst
vim Documentation/virt/kvm/msr.rst
vim Documentation/virt/kvm/api.rst 
vim Documentation/virt/kvm/msr.rst 
vim Documentation/virt/kvm/cpuid.rst 
vim Documentation/virt/kvm/msr.rst 
git status
git diff
git status
git add Documentation/
git status
git diff --staged
git status
git rebase --continue
git status
vim arch/x86/kernel/setup.c
git diff arch/x86/kernel/setup.c
git status
git add status
git add arch/x86/kernel/setup.c
git diff --staged
git sttus
git status
git rebase --continue
git log -p
git log -n 4 --reverse 
git log -n 4 --reverse -p
vim Makefile 
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
make olddefconfig
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
cd ~/linux-combined/
vim arch/x86/realmode/rm/wakeup_asm.S
find . -name -wakeup_64.S
find . -name wakeup_64.S
vim ./arch/x86/kernel/acpi/wakeup_64.S
git grep saved_context_cr4
vim ./arch/x86/kernel/acpi/wakeup_64.S
sudo qemu/scripts/qmp/qmp-shell -p -v /tmp/q
cd ~/seabios/
ll
vim src/resume.c
scripts/readserial.py -nf /tmp/qemudebugpipe
ll
find . -name seabios.bin
find . -name \*.bin
git grep cr4
git grep -i cr4
git grep -i cr
ll
git grep -i cr0
git grep -i cr4
git status
~/run.sh 
~/run.sh -smp 1,maxcpus=2 -qmp unix:/tmp/q,server,nowait
git status
git diff
git c 'Add selftests'
git push
sudo vim ~/chroot/do
~/run.sh -smp 1,maxcpus=2 -qmp unix:/tmp/q,server,nowait
vim ~/run.sh
~/run.sh
git status
git add -f outgoing/*.patch
git add -f outgoing/
git status
git add -A
git status
git log -p
git diff --staged
git status
git c 'pre-rebase for v2'
git push
vim README.md
git diff
qgit status
git diff | grep PV
git diff | grep CR
git diff | grep PIN
git status
git diff | grep PIN
git status
git add -A
git c 'README: Add kernel compile commands'
git push
vim README.md
git status
git c 'README: Add set host boot kernel'
git push
ll /boot/
ll /boot/ | grep Feb
cat README.md 
sudo grubby --set-default /boot/vmlinuz-5.6.0-rc1+
sudo reboot
cd ~/linux-combined/
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
sudo journalctl --dmesg -f
cat README.md 
git status
git add -f chroot/do 
git add -A
git status
git c 'debug suspend to ram'
git push
cd linux-combined
gdb ./vmlinux
sudo journalctl --dmesg -f
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
sudo journalctl --dmesg -f
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
gdb ./vmlinux
sudo journalctl --dmesg -f
sudo journalctl --dmesg
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
cd ~/kvm-unit-tests/
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
git status
git log
git fetch origin master
git checkout -b backup
git checkout cr_pin
git rebase origin/master
git satus
git status
git log -p
git status
git clean -xdf
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
./configure 
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
git status
git push -f
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
cat >> ~/README.md 
vim ~/README.md
git status
git push -f
