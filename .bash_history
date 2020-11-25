sudo grubby --list-kernsl
sudo grubby --list-kernels
sudo grubby
sudo grubby --help
sudo grubby --set-default=/boot/vmlinuz-5.2.17-200.fc30.x86_64 
sudo reboot
uname -a
cd
git diff
cd ../linux-combined/
git log
git log -p
git rebase -i HEAD~9
git grep pin_allowed
git grep pin_allow
git grep PIN_ALLOWED
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git grep PIN_ALLOWED
vim Documentation/virt/kvm/msr.rst
git status
git diff
git add -A
git rebase --continue
vim ../README.md 
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
git status
cd ../
git diff
git status
git add outgoing/
find outgoing/ -name \*.patch -exec sed -i -e 's/HIGH/ONE/g' -e 's/high/one/g' -e 's/LOW/ZERO/g' -e 's/low/zero/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/alzero/allow/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/Alzero/Allow/g' {} \;
find outgoing/ -name \*.patch -exec sed -i -e 's/ALZERO/ALLOW/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/folzeroing/following/g' {} \;
find outgoing/ -name \*.patch -exec sed -i -e 's/slowly/szeroly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/slowly/slowly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/szeroly/slowly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/szero/slow/g' {} \;
git diff
git status
git commit -sm 'pre high/low -> one/zero'
git add outgoing/
git status
git diff
git commit -sm 'high/low -> one/zero'
cd ..
git status
git add -A
git commit -sam '5.10-rc1'
git push
git pull
git push
vim arch/x86/kvm/x86.c
cd linux-combined/
vim arch/x86/kvm/x86.c
git diff
git stash
git rebase -i HEAD~9
git stash pop
git add -A
git rebase --continue
vim arch/x86/include/uapi/asm/kvm_para.h
git diff
git add -A
git rebase --continue
find . -name common.c
vim ./arch/x86/kernel/cpu/common.c
vim ./arch/x86/kernel/kvm.c 
git diff
git add -A
git rebase --continue
git status
git push -u
git remote add pdxjohnny git@github.com:pdxjohnny/linux
git push -u pdxjohnny 
cd ../qemu
ll
vim include/standard-headers/asm-x86/kvm_para.h
vim target/i386/cpu.h
vim include/standard-headers/asm-x86/kvm_para.h
vim target/i386/kvm.c
git diff
vim target/i386/kvm.c
vim target/i386/machine.c
git status
git add -A
git diff --staged
vim target/i386/machine.c
git add -A
git commit -sa
cd ../linux-combined/
git log
git diff HEAD~1
git log
sudo reboot
ll
cd linux-combined/
git status
git am --show-current-patch 
git status
git log
git am --abort
cd ..
DO=rebooter ~/run.sh 
git status
cd linux-combined/
git status
git am ../outgoing/*.patch
vim ../outgoing/0001-KVM-x86-Introduce-paravirt-feature-CR0-CR4-pinning.patch 
git am --abort
git am ../outgoing/*.patch
git status
vim ../outgoing/0001-KVM-x86-Introduce-paravirt-feature-CR0-CR4-pinning.patch 
vim ../outgoing/0006-X86-Use-KVM-CR-pin-MSRs.patch 
vim ../outgoing/0001-KVM-x86-Introduce-paravirt-feature-CR0-CR4-pinning.patch 
git am --abort
git am ../outgoing/*.patch
vim ../outgoing/0001-KVM-x86-Introduce-paravirt-feature-CR0-CR4-pinning.patch 
git am --abort
git am ../outgoing/*.patch
git rebase -i HEAD~9
git log
git grep FEATURE_CR
git grep FEATURE_CR_PIN
cd ../kvm-unit-tests/
git grep FEATURE_CR_PIN
vim lib/x86/processor.h
git status
git diff
git add -A
git commit --amend
git log -p
git log
git rebase -i HEAD~4
git log -p
git push -f
cd ../
ll
cd qemu
git status
git grep cr-pi
vim target/i386/cpu.c 
git status
git diff
git add -A
git commit --amend
git status
git log
git log -p
git grep FEATURE_CR_PIN
vim include/standard-headers/asm-x86/kvm_para.h
git checkout -- .
git status
git push -f
git fetch --all
git branch -r
git push -u pdxjohnny 
git checkout -b patch_v2_internal_v4
git checkout cr_pinning_fsgsbase 
git branch -D patch_v2_internal_v4 
git checkout -b origin/master -b !$
git checkout origin/master -b !$
git status
git branch checkout cr_pinning_fsgsbase 
git branch -D '!$'
git checkout -b origin/master -b patch_v2_internal_v4
git status
git submodule update
git status
git rebase cr_pinning_fsgsbase 
git status
git rebase --abort
git status
git log -n 2 cr_pinning_fsgsbase 
git log -n 2 cr_pinning_fsgsbase -p
git log -n 2 cr_pinning_fsgsbase -p --reverse 
git log -n 2 cr_pinning_fsgsbase -p --reverse  | git am
git status
git log -n 2 cr_pinning_fsgsbase -p --reverse 
git status
git log -n 2 cr_pinning_fsgsbase -p --reverse 
git log -n 2 cr_pinning_fsgsbase -p --reverse  | git am
git status
git stash
git status
git diff --staged > /tmp/f
git am --abort
git status
git apply < /tmp/f
git status
git add -A
git log
git log -n 2 cr_pinning_fsgsbase -p --reverse
git log -n 2 cr_pinning_fsgsbase --reverse > /tmp/m
git log -n 1 cr_pinning_fsgsbase~1 -p --reverse  | git am
git log
git status
git am --abort
git stauts
git log
git log -p
git status
git log -n 1 cr_pinning_fsgsbase~1 -p --reverse 
git log -n 1 cr_pinning_fsgsbase~2 -p --reverse 
git log -n 1 cr_pinning_fsgsbase -p --reverse 
git log -n 1 cr_pinning_fsgsbase -p --reverse | git am
git status
git cherry-pick 704a519dd1af347c8a064a4643e3f1c5ef7f62d7
git status
vim target/i386/cpu.c
git diff
git add -A
git status
git am --abort
git status
git cherry-pick 704a519dd1af347c8a064a4643e3f1c5ef7f62d7
vim target/i386/cpu.c
git add -A
git status
git cherry-pick --continue
git status
git log -p
git status
cd build/
ll
make -j $(($(nproc)*4))
git status
ll
date
cd ..
rm -rf ~/chroot/home/johnsa1/qemu/ && cp -r qemu ~/chroot/home/johnsa1/qemu/
git status
cd linux-combined/
ll
git status
git push -f
git reset --hard HEAD~9
git am ../outgoing/*.patch
git status
git log -p
git checkout HEAD~1 -- arch/x86/boot/compressed/kernel_info.S arch/x86/include/uapi/asm/bootparam.h 
git diff HEAD~1
vim arch/x86/kernel/kexec-bzimage64.c
git diff HEAD~1
vim arch/x86/kernel/kexec-bzimage64.c
git diff HEAD~1
vim arch/x86/kernel/kexec-bzimage64.c
git diff HEAD~1
vim arch/x86/include/uapi/asm/bootparam.h
git grep loadflags
vim Documentation/x86/boot.rst
vim arch/x86/include/uapi/asm/bootparam.h
vim Documentation/x86/boot.rst
git diff HEAD~1
vim Documentation/x86/boot.rst
git diff HEAD~1
git status
git add -A
git diff --staged
git commit --amend
git push -f
make -j $(($(nproc)*4))
make olddefconfig
vim .config
make -j $(($(nproc)*4))
echo $?
make -j $(($(nproc)*4))
echo $?
sudo make modules_install -j $(($(nproc)*4)) && sudo make install
ll /boot/
sudo grubby --set-default=/boot/vmlinuz-5.10.0-rc1+
sudo reboot
tmux a
tmux
uname -a
tmux
tmux a
git status
git log -p
git push -f
git push -u origin 
git push -u origin patch_v2_internal_v4 -f
git push -u pdxjohnny patch_v2_internal_v4 -f
cd ..
vim target/i386/kvm.c
git log -p
vim target/i386/cpu.h
cd linux-combined/
git log 
ll
dmesg -T
DO=test_kexec ~/run.sh 
DO=test_kexec.sh ~/run.sh 
git status
git idff
git diff
git commit -sam 'bash history'
git push
~/test.sh
~/test.sh unittests
rset
reset
~/test.sh selftests
reset
SKIP_PRECHECK=1 ~/test.sh selftests
~/test.sh unittests
reset
SKIP_PRECHECK=1 ~/test.sh selftests
~/test.sh unittests
git status
vim git-send-email-cover 
wc < git-send-email-cover
vim git-send-email-cover 
git status
git add git-send-email-cover 
git status
git commit -sm 'cover letter: Update for v4'
git push
git commit -sam 'bash history'
git push
git log HEAD~9
git log HEAD~8
git log
cd ~/linux-combined/
git log HEAD~9
git log HEAD~8
git log
cd ../kvm-unit-tests/
git log -p
make
ll
make clean
git status
git fetch --all
git status
git rebase origin/master
vim x86/unittests.cfg 
git status
git diff
git add -A
git status
git rebase --continue
git status
git push -f
DO=bash ~/run.sh
cd linux-combined/
git fetch kvm
git status
git log
git checkout -b patch_v2_internal_v4
git rebase kvm/next
git status
git log -p
git log --oneline
git rebase -i HEAD~9
git log --stat
vim Documentation/virt/kvm/msr.rst
git status
git diff
git add Documentation/virt/kvm/msr.rst
git log -p
git rebase --continue
git log -p
git log -p -n 9 HEAD~9
git log -p -n 9 --reverse 
git rebase -i HEAD~9
git log -p -n 9 --reverse 
git rebase -i HEAD~9
git log -p
vim arch/x86/boot/compressed/pgtable.h
git diff
git add -A
git rebase --continue
git push -f
git push -u pdxjohnny
git push -u pdxjohnny patch_v2_internal_v4
git log -p -n 9 --reverse 
git rebase -i HEAD~9
git log -p -n 9 --reverse 
git rebase -i HEAD~9
git log -p -n 9 --reverse 
git rebase -i HEAD~9
git status
git push -f
git fetch kvm 
make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
ll
ll /boot/
uname -a
sudo reboot
cd ~/qemu
ll
cd build/
git status
make -j $(($(nproc)*4))
 cd ..
cd ..
git status
DO=rebooter ~/run.sh 
DO=rebooter ~/run.sh -no-reboot
 cd ..
reset
rm -rf ~/chroot/home/johnsa1/qemu/ && cp -r qemu ~/chroot/home/johnsa1/qemu/
rm -rf ~/chroot/home/johnsa1/qemu/ && cp -r ~/qemu ~/chroot/home/johnsa1/qemu/
cd
DO=bash ~/run.sh
reset
cd qemu
git log -p
vim ~/.vimrc
git status
git diff
git add -A
git commit --amend
git push -u pdxjohnny 
git push -u pdxjohnny -f
git fetch origin 
git rebase origin/master
git log
git push -f
git log -n 2
git push
git log -p
cat /home/johnsa1/kvm-unit-tests/logs/cr_pin_high.log
git log -p
git log -p -n 9
git log -p -n HEAD~9
git log -p HEAD~9
git log -p HEAD~8
git log -p
git rebase -i HEAD~9
vim target/i386/kvm.c
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
git diff
git stauts
git status
git add arch/
git cherry-pick --continue
git rebase --continue
git status
git push -f
git log -p
vim tools/testing/selftests/kvm/include/x86_64/processor.h
tmux a
ll
cd linux-combined/
ll
git log --walk-reflogs
ll
vim drivers/kvm/sys-hypervisor.c
make M=drivers/kvm -j $(($(nproc)*4))
make M=drivers/kvm/ -j $(($(nproc)*4))
rm drivers/kvm/{*.ko,*.o}
rm drivers/kvm/*.o
rm drivers/kvm/.*
rm drivers/kvm/built-in.a 
make M=drivers/kvm/ -j $(($(nproc)*4))
ll drivers/kvm/
cd drivers/kvm/
make
vim Kconfig 
make -j $(($(nproc)*4)) bzImage
cd ../../
make -j $(($(nproc)*4)) bzImage
DO=bash ~/run.sh
DO=bash ~/run.sh -no-reboot
