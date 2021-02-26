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
cd ..
git status
git add -f outgoing/
git status
git diff --staged
git status
git commit -sam 'pre-rebase kvm/next, post checkpatch'
git push
it pull
git pull
git push
cat outgoing/*
cat outgoing/* | wc -l
git grep binary
git grep -i binary
git status
git diff
git status
git add outgoing/
git status
git commit -sam 'post rebase kvm/next'
git push
git grep intr_coalesce_store
git grep intr_coalesce_show
git grep -nC 5 _store -- drivers/
vim -t intr_coalesce
vim -t keymap_store
vim drivers/accessibility/speakup/kobjects.c
git grep -a 10 native_write_cr4
git grep -A 10 native_write_cr4
git grep -A 10 native_read_cr4
git status
git push
git push pdxjohnny 
git push pdxjohnny patch_v2_internal_v
git push pdxjohnny patch_v2_internal_v5
tmux
python
python3
netcat tcp.st 7777
nc tcp.st 7777
git status
git diff
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl ../outgoing/*
git status
git log -p
git log --stat
git status
git checkout -- tools/testing/selftests/kvm/x86_64/tsc_msrs_test
git stash
git rebase -i HEAD~11
git rm tools/testing/selftests/kvm/x86_64/tsc_msrs_test
git status
git rebase --continue
git log --stat
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl ../outgoing/*
git status
git push -f
./scripts/checkpatch.pl --strict ../outgoing/*
./scripts/checkpatch.pl --codespell ../outgoing/*
sudo dnf -y install codespell
./scripts/checkpatch.pl --codespell ../outgoing/*
sudo dnf provides /usr/share/codespell/dictionary.txt
sudo dnf provides dictionary.txt
sudo dnf provides --help dictionary.txt
tee .git/hooks/post-commit
cat .git/hooks/post-commit
chmod 755 .git/hooks/post-commit
git status
find /usr/ -name codespell
codespell --help
find /etc -name codespell
./scripts/checkpatch.pl --codespell ../outgoing/*
wget https://raw.githubusercontent.com/codespell-project/codespell/master/codespell_lib/data/dictionary.txt
cat dictionary.txt 
sudo dnf provides --help dictionary.txt
sudo mv dictionary.txt /usr/share/codespell/dictionary.txt
sudo mkdir /usr/share/codespell
sudo mv dictionary.txt /usr/share/codespell/dictionary.txt
./scripts/checkpatch.pl --codespell ../outgoing/*
./scripts/checkpatch.pl --codespell --strict ../outgoing/*
vim scripts/checkpatch.pl
git status
git diff
git stasth
vim scripts/checkpatch.pl
git status
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
git status
git add -A
vim scripts/checkpatch.pl
git stash
git stash pop
git add -A
vim scripts/checkpatch.pl
git checkout HEAD~11 -- scripts/checkpatch.pl
vim scripts/checkpatch.pl
git diff scripts/checkpatch.pl
vim scripts/checkpatch.pl
git diff
git diff | | nc termbin.com 9999
git diff | nc termbin.com 9999
git staths
git status
git diff
git add -A
git diff --staged
git stash
git rebase -i HEAD~10
git stash pop
git diff
git add -A
git rebase --continue
git log -p HEAD~10
git log -p HEAD~9
nc termbin.com 9999
git format-patch HEAD~1
vim 0001-check-patch.patch 
rm 0001-check-patch.patch 
git status
cd ..
git status
ll
git grep SMAP
vim -t X86_CR4_SMAP
git grep ATTR_RW
git grep __ATTR_RW -- drivers/
vim drivers/dma/ioat/sysfs.c
vim drivers/kvm/sys-hypervisor.c
vim drivers/dma/ioat/sysfs.c
vim drivers/kvm/sys-hypervisor.c
vim -t native_write_cr4
vim drivers/kvm/sys-hypervisor.c
git status
git checkout -b patch_v2_internal_v5
git rebase -i HEAD~9
vim drivers/kvm/Kconfig
git status
git diff
git add -A
git status
git rebase --continue
git log --stat
vim MAINTAINERS
git status
git stash
git rebase -i HEAD~9
git stash pop
cat .git/hooks/post-
cat .git/hooks/post-commit 
[  133.262185] general protection fault, maybe for address 0x170ef0: 0000 [#1] SMP PTI
[  133.265898] CPU: 1 PID: 192 Comm: tee Tainted: G           O      5.10.0-rc1+ #162
[  133.267438] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[  133.268957] RIP: 0010:cr4_store+0x37/0x70
[  133.269675] Code: ba 35 82 48 89 cb 48 83 ec 10 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 48 89 e2 e8 a1 fb f2 ff 85 c0 78 24 48 8b 04 24 <0f> 22 e0 48 89 04 24 48 89 d8 48 8b 74 24 08 65 48 33 34 25 28 00
[  133.273270] RSP: 0018:ffffc900003fbe80 EFLAGS: 00010202
[  133.274250] RAX: 0000000000170ef0 RBX: 000000000000000b RCX: 0000000000000000
[  133.275559] RDX: 0000000000000000 RSI: 0000000000000010 RDI: ffffffff8235ba78
[  133.276790] RBP: ffff888100327960 R08: 0000000000170ef0 R09: 0000000000000008
[  133.278084] R10: 0000000000000010 R11: f000000000000000 R12: 000000000000000b
[  133.279372] R13: fffffffffffffff2 R14: ffffc900003fbf10 R15: ffff888100325320
[  133.280658] FS:  00007f440ff86580(0000) GS:ffff888237d00000(0000) knlGS:0000000000000000
[  133.282135] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  133.283186] CR2: 00005602068faac0 CR3: 0000000103a8e001 CR4: 0000000000370ee0
[  133.284522] Call Trace:
[  133.284968]  kernfs_fop_write+0xce/0x1b0
[  133.285677]  vfs_write+0xc1/0x200
[  133.286285]  ksys_write+0x5f/0xe0
[  133.286885]  do_syscall_64+0x33/0x40
[  133.287522]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  133.288455] RIP: 0033:0x7f440feae467
[  133.289108] Code: 64 89 02 48 c7 c0 ff ff ff ff eb bb 0f 1f 80 00 00 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
[  133.292524] RSP: 002b:00007ffe69c57ac8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[  133.293893] RAX: ffffffffffffffda RBX: 000000000000000b RCX: 00007f440feae467
[  133.295187] RDX: 000000000000000b RSI: 00007ffe69c57bf0 RDI: 0000000000000003
[  133.296491] RBP: 00007ffe69c57bf0 R08: 0000000000000000 R09: 0000000000000001
[  133.297766] R10: 00000000000001b6 R11: 0000000000000246 R12: 000000000000000b
[  133.299043] R13: 00005602071ed310 R14: 000000000000000b R15: 00007f440ff7f700
[  133.300424] Modules linked in: kvm_intel(O) kvm(O) irqbypass vfat fat
[  133.301625] ---[ end trace 60514e5e7427e3d5 ]---
[  133.305554] RIP: 0010:cr4_store+0x37/0x70
[  133.306412] Code: ba 35 82 48 89 cb 48 83 ec 10 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 48 89 e2 e8 a1 fb f2 ff 85 c0 78 24 48 8b 04 24 <0f> 22 e0 48 89 04 24 48 89 d8 48 8b 74 24 08 65 48 33 34 25 28 00
[  133.310249] RSP: 0018:ffffc900003fbe80 EFLAGS: 00010202
[  133.311250] RAX: 0000000000170ef0 RBX: 000000000000000b RCX: 0000000000000000
[  133.312606] RDX: 0000000000000000 RSI: 0000000000000010 RDI: ffffffff8235ba78
[  133.313951] RBP: ffff888100327960 R08: 0000000000170ef0 R09: 0000000000000008
[  133.315400] R10: 0000000000000010 R11: f000000000000000 R12: 000000000000000b
[  133.316863] R13: fffffffffffffff2 R14: ffffc900003fbf10 R15: ffff888100325320
[  133.318315] FS:  00007f440ff86580(0000) GS:ffff888237d00000(0000) knlGS:0000000000000000
[  133.319956] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  133.320992] CR2: 00005602068faac0 CR3: 0000000103a8e001 CR4: 0000000000370ee0
git stash pop
git stash --help
git stash push -- drivers/kvm/sys-hypervisor.c
git status
git diff
cat .git/hooks/post-commit 
git show --format=email
git status
git show --format=email
git status
git add -A
git rebase --continue
git rebase -i HEAD~9
git rebase --continue
git rebase -i HEAD~9
git log --stat
git rebase -i HEAD~9
vim drivers/kvm/Kconfig
vim drivers/kvm/sys-hypervisor.c
git status
git diff
git add -A
git rebase --continue
git status
git commit -sam 'check patch'
git rebase -i HEAD~10
git rebase --continue
git rebase -i HEAD~10
git log --stat
git stash
git rebase -i HEAD~10
git stash pop
git add scripts/
git rebase --continue
git rebase -i HEAD~10
git rebase --continue
git rebase -i HEAD~10
git rebase --continue
git rebase -i HEAD~10
git status
git add -A
git rebase --continue
git rebase -i HEAD~10
cat .git/hooks/post-commit 
git show --format=email HEAD~2 | ./scripts/checkpatch.pl --strict --codespell
git show --format=email HEAD~1 | ./scripts/checkpatch.pl --strict --codespell
find . -type f -name MAINTAINERS
git show --format=email HEAD~1 | ./scripts/checkpatch.pl --strict --codespell
git log --stat
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl --strict --codespell
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl --strict --codespell
vim MAINTAINERS
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl
git rebase -i HEAD~10
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl
git log --stat
git log --stat -n 10 | grep MAINTAINERS
git log --stat -n 10 | grep -C 40 MAINTAINERS
git log --stat -n 1000 | grep -C 30 MAINTAINERS
git log --stat -n 1000 | grep -C 30 'MAINTAINERS.*\|'
git log --stat -n 1000 | grep -C 30 'MAINTAINERS\s*\|'
git log --stat -n 1000 | grep -v MAINTAINERS: | grep -C 30 'MAINTAINERS'
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl
git show --format=email bca815d620544c27288abf4841e39922d694425c | ./scripts/checkpatch.pl
git rebase -i HEAD~10
git rebase --continue
git show --format=email a7305e684fcfb33029fe3d0af6b7d8dc4c8ca7a1 | ./scripts/checkpatch.pl
git show --format=email bca815d620544c27288abf4841e39922d694425c | ./scripts/checkpatch.pl
git status
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
git rebase -i HEAD~9
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
git rebase -i HEAD~9
vim Documentation/virt/kvm/msr.rst
vim Documentation/admin-guide/kernel-parameters.txt
git diff
git status
git rebase -a --continue
git add -A
git rebase  --continue
git rebase -i HEAD~9
vim arch/x86/kernel/kvm.c
git diff
git add arch/
git rebase  --continue
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
git rebase -i HEAD~9
git rebase --edit-todo
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git status
git add -A
git rebase  --continue
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
git rebase  --continue
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
vim arch/x86/include/uapi/asm/bootparam.h
vim arch/x86/include/asm/tlbflush.h
git rebase -i HEAD~9
vim arch/x86/include/asm/tlbflush.h
git diff
git diff HEAD~1
git diff HEAD
git add -A
git status
git rebase  --continue
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
./scripts/checkpatch.pl --strict --codespell ../outgoing/*.patch
git status
git fetch kvm
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
git rebase -i HEAD~9
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
git rebase kvm/next
git status
rm tools/testing/selftests/kvm/clear_dirty_log_test
git status
git log -p
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
sudo grubby --set-default=/boot/
ll /boot/
sudo grubby --set-default=/boot/vmlinuz-5.10.0-rc3+
sudo reboot
uname -a
~/test.sh
~/test.sh kexec
dmesg
tmux
tmux a
tmux
git push
git push -u pdxjohnny patch_v2_internal_v6
ll
cd linux
ll
git status
cd ..
cd linux-combined/
git status
git fetch kvm
git status
git checkout patch_v2_internal_v6
git checkout -b patch_v2_internal_v6
git status
git rebase kvm/next
git status
git diff
rm tools/testing/selftests/kvm/x86_64/user_msr_test
vim arch/x86/boot/compressed/head_64.S
git diff
git status
git add -A
git status
git diff --staged
git rebase --continue
git status
make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
make olddefconfig
make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
sudo reboot
cd ..
git status
git diff
git stauts
git status
ll /boot/
sudo grubby --set-default=/boot/vmlinuz-5.11.0-rc3+
sudo reboot
tmux a
uname -a
~/test.sh
~/test.sh kexec
cat ~/chroot/usr/bin/test_kexec.sh
cat test.sh 
git status
cd linux-combined/
git status
cd ../qemu
ll
git fetch --all
"tmux
tmux
cd ~/kexec-tools/
ll
git status
git fetch origin 
git rebase origin/master 
git log
git log -p
git grep Nothing
vim kexec/kexec.c 
make
ll
ll kexec/kexec
find . -name kexec
ll build/sbin/kexec 
ldd build/sbin/kexec
sudo ldd ~/chroot/usr/sbin/kexec
sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
sudo find ~/chroot -name kexec
sudo find /home/johnsa1/chroot -name kexec
sudo find /home/johnsa1/chroot
sudo find /home/johnsa1/chroot -name kexec
sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
sudo find /home/johnsa1/chroot -name kexec
ll kexec
sudo find /home/johnsa1/chroot -name kexec
file $(sudo find /home/johnsa1/chroot -name kexec)
sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
file $(sudo find /home/johnsa1/chroot -name kexec)
file build/sbin/kexec
vim kexec/kexec.c 
make
sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
vim ~/README.md
git status
sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
vim kexec/kexec.c 
git status
git diff
git status
git log
git branch -r
git checkout -b patch_v2_internal_v6
git push -u pdxjohnny 
git log
git staus
git log
cd ~/linux-combined/
ll
git log
git rebase -i HEAD~9
git log
git rebase -i HEAD~9
git status
git push -f
dme
dmesg 
tmux a
ll
cd linux-combined/
ll
git fetch kvm
git statsu
git status
git checkout -b patch_v2_internal_v6_rebase_2
git rebase kvm/next
git status
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/kvm/x86.c
git diff
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
git add -A
git diff --staged
git status
git rebase --continue
git status
git log
git status
git log
make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
ll
sudo make modules_install -j $(($(nproc)*4)) && sudo make install
