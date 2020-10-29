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
