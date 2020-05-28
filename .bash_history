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
cat ~/kvm-unit-tests/COPYRIGHT 
cat ~/kvm-unit-tests/MAINTAINERS 
vim ~/README.md
git status
git push -f
~/run.sh
git status
cd linux-combined/
git status
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
cd ../
git status
git diff
vim git-send-email-cover 
git status
git add -A
git c 'RFCv2'
git push
cd linux-combined/
git status
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
cd ..
git status
head README.md 
cd linux-combined/
git status
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc joro@8bytes.org --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
vim README 
vim ../README.md 
cd ..
git status
git add -A
git status
git diff
git diff --staged
git c 'ready for rfcv2'
git push
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
cd linux-combined/
git status
cd ..
git status
cd linux-combined/
git fetch kvm
git log kvm/next
git rebase kvm/next
git log
cd ..
git status
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
vim git-send-email-cover 
git diff
git c 'updates to wording of cover letter'
git push
cd linux-combined/
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
cd ~/kvm-unit-tests/
ll
cat MAINTAINERS 
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
git send-email --subject-prefix="PATCH" --annotate --cover-letter --to pbonzini@redhat.com --to kvm@vger.kernel.org HEAD~4
git send-email --subject-prefix="PATCH" --annotate --cover-letter --to pbonzini@redhat.com --to kvm@vger.kernel.org HEAD~1
cd kvm-unit-tests/
git pull
git fetch --all
git log
cd ..
git diff
ll .git
ll .git/COMMIT_EDITMSG 
cat .git/COMMIT_EDITMSG
cat .git/objects/
cd linux-combined/
tmux attach
tmux attach
tmux attach
tmux
vim ~/chroot/usr/bin/hibernate 
tmux attach
tmux
tmux attach
tim 
vim
tmux attach
git grep identify_boot_cpu
cd linux-combined/
git grep identify_boot_cpu
vim arch/x86/kernel/cpu/bugs.c
git grep check_bugs
git grep check_bugs arch/x86
git grep check_bugs
vim init/main.c
cat /etc/passwd
source /etc/profile
ll
vim .vimrc 
cat >> .vimrc
vim .vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
vim ~/.vim/autoload/pathogen.vim 
vim ~/.vimrc 
git clone https://github.com/joe-skb7/cscope-maps.git ~/.vim/bundle/cscope-maps
vim .vimrc 
vim init/main.c
vim .vimrc 
vim .bashr
vim .bashrc
vim .prog
vim .prof
vim ~/.bash_profile 
bash
/bin/bash
git status
git diff
git c 'kernel config updated'
git push
vim linux-combined/.config
git log -p linux-combined/.config
git checkout HEAD~1 -- linux-combined/.config
git status
git commit --amend
git status
git push -f
cd linux-combined/
git log --oneline
find . -name mmu.txt
find . -name mmu.rst
vim Documentation/virt/kvm/mmu.rst 
find . -name mmu.rst
git log --oneline | head -n 10
git log --oneline
git rebase -i HEAD~3
git log -p
git diff
make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
sudo apt-get install cscope
sudo dnf -y install cscope
sudo apt-get install cscope
make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
sudo dnf install -y mosh
tmux attach
ps aux | grep git
kill -9 493 447 472
tmux attach
vim ~/README.md 
tmux attach
vim ~/README.md 
im ~/.vim/autoload/pathogen.vim 
vim ~/README.md 
git add ~/README.md
git status
git commit -sm 'README: cscope'
git push
ps aux | grep git
kill -9 4656
vim README.md 
git status
cd linux-combined/
git status
git diff
git rebase --continue
git status
git push -f
git log -p
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
vim tools/testing/selftests/kvm/lib/x86_64/processor.c 
git add tools/testing/selftests/kvm/lib/x86_64/processor.c
git status
git diff --staged
git commit -s
vim tools/testing/selftests/kvm/lib/x86_64/processor.c 
git status
git reset HEAD status
git status
git reset HEAD tools/testing/selftests/kvm/lib/x86_64/processor.c 
git status
git diff tools/testing/
git checkout -- tools/testing/selftests/kvm/lib/x86_64/processor.c 
git status
gitdiff
gi tdiff
git status
git add README.md 
git status
git add .bash_history && git commit -sm 'scope mappings'
git push
tmux attach
dmesg 
git sattus
git status
ll
git branch
dmesg 
cd linux-combined/
git log -n 3 -p
git log -n 4 -p
git log HEAD~3 -p
git log HEAD~2 -p
git status
git log
git status
git log HEAD~2 -p
cd ~/kvm-unit-tests/
cat README
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh
cd ../linux-combined/
ll
git status
cd ..
gits tatsu
git status
cd linux-combined/
zcat ~/01build-fail-RFC-v2-config.gz > .config
cd ..
git diff
cd linux-combined/
git grep kvm_setup_paravirt_cr_pinning
git grep -np -C 5 kvm_setup_paravirt_cr_pinning
vim arch/x86/kernel/cpu/common.c-417-
vim arch/x86/kernel/cpu/common.c
vim arch/x86/include/asm/kvm_para.h
git diff
make -j $(($(nproc)*4)) ARCH=i386 
ll
git status
rm scripts/conmakehash scripts/sortextable 
git status
make -j $(($(nproc)*4)) ARCH=i386 
vim .config
make -j $(($(nproc)*4)) ARCH=i386 
make -j $(($(nproc)*4)) ARCH=i386 olddefconfig
make -j $(($(nproc)*4)) ARCH=i386 
vim arch/x86/kernel/kvm.c
git status
git diff
git status
find . -name kvm -type d
vim ./virt/kvm
git grep flip ./virt/kvm
git grep flip ./arch/x86/kvm/
git grep struct\ file ./arch/x86/kvm/
git grep flip ./virt/kvm/
git grep struct\ file ./virt/kvm/
vim virt/kvm/kvm_main.c
git grep private_data | grep kvm
vim -t anon_inode_getfile
vim ~/.vimrc
vim -t anon_inode_getfile
git status
git diff
git status
git diff
git log
git status
git diff
git status
git diff
vim arch/x86/include/asm/kvm_para.h
git status
git checkout -b cr_pinning_patch
git log
git diff
cat ~/.ssh/authorized_keys 
sudo vim /etc/ssh/sshd_config 
git status
git diff
git add -A
git commit --amend
git status
git push -u pdxjohnny
git remote -v
git push -u origin
git push -u origin cr_pinning_patch
vim ~/README.md
head -n 50 ~/README.md
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest; test 1')
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
vim ../README.md 
git sattus
tmux attach
dme
dmesg
dmesg | tail -n 30
dmesg
make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
cd linux
cd ~/linux-combined/
make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
vim ~/README.md 
vim ~/.vim/bundle/cscope-maps
vim ~/README.md 
make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
make ARCH=x86_64 COMPILED_SOURCE=1 cscope
dme
dmesg 
git log -p
git status
git log -p
git rebase -i HEAD~2
cd ../kvm-unit-tests/
ll
cd ../qemu
ll
git status
git diff
git log -p
git status
git diff
git add target/
git commit --amend
git status
git stash
git status
git rebase -i HEAD~2
git stash pop
git diff
git add target/
git rebase --continue
cd build/
make -j $(($(nproc)*4))
cd ..
git push -f
dme
dmesg 
dmesg  -T
git clone git@github.com:pdxjohnny/dotfiles
mv dotfiles/ .dotfiles
cd .dotfiles
ll
ll configs/
ll
ll bin
ll
git status
git log
git log -p
ls -lAF
ll
rm .vimrc 
rm pathogen-install.sh 
vim install.sh 
vim bin
vim bin-install.sh 
ll bin
ll bin/aur-install 
vim bin/aur-install
vim bin/muttopen 
ll
vim install.sh 
vim link.sh 
ll
ls -lAF
./link.sh 
tmux attach
git status
cd ../linux
git status
cd ../linux-combined/
git status
git push -u pdxjohnny 
git push --all
git push --all pdxjohnny 
cd ../linux-combined/
ll
git status
vim arch/x86/kernel/kvm.c
vim arch/x86/kvm/x86.c
vim ~/.vimrc 
mv ~/.vimrc ~/.vimrc.bak
vim ~/.vimrc
git status
git add -A
git commit --amend
vim x86/run 
git diff
git grep PROCBASED
git grep -p PROCBASED
vim -t test_primary_processor_based_ctls
dme
dmesg 
dmesg -T
date
dmesg -T
dmesg -T --color=always | tail -n 20
dmesg -T --color=always | tail -n 24
dmesg -T --color=always | tail -n 48
dmesg -T --color=always | tail -n 40
dmesg -T --color=always | tail -n 46
watch -n 0.5 sh -c 'dmesg -T --color=always | tail -n 42'
watch -n 0.5 -- dmesg -T --color=always
watch -n 0.5 -- dmesg -T
watch -n 0.5 sh -c 'dmesg -T | tail -n 42'
ps aux | grep kvm
ps aux | grep qemu
kill  -924526 24569
kill -9 24526 24569
ps aux | grep qemu
kill 24571
ps aux | grep qemu
git status
git diff
git status
git stauts
dmesg -T --color=always | tail -n 46
git status
vim ../README.md 
vim ../run.sh 
cd ..
git log -p
dmesg -T --color=always | tail -n 46
ps aux | grep qmeu
ps aux | grep qemu
ps aux | grep /qemu
ps aux | grep /qemu-sys
kilall qemu-system-x86_64
killall qemu-system-x86_64
ps aux | grep /qemu-sys
cd linux-combined/
git grep MSR_BITMAP
vim arch/x86/kvm/vmx/nested.c
git grep nested.c
git grep nested\.c
git grep nested\\.c
git grep nested\\.o
vim arch/x86/kvm/vmx/nested.c
git grep nested_ arch/x86/kvm/
git grep nested_ arch/x86/kvm/vmx/
git grep nested_ arch/x86/kvm/vmx/ | grep -v nested\\.c
git grep MSR_BITMAP
vim -t vmwrite
git grep vmwrite
git tsatus
git status
git diff
git reset --hard HEAD
git lo g-p
git log -p
vim -t kvm_setup_paravirt_cr_pinning
git grep kvm_setup_paravirt_cr_pinning
vim arch/x86/kernel/kvm.c
git add -A
git commit --amend
git log -p
git status
git push -f
vim ../README.md 
vim ~/run.sh
git grep nested
vim Documentation/virt/kvm/nested-vmx.rst
git grep vmwrite
cd ~/linux-combined/
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
vim ~/run..sh
vim ~/run.sh
RELOAD=1 ~/run.sh
dmesg 
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
dmesg -T
tmux attach
git grep 'Map first'
git status
git add -A
git log
git c 'breakthrough on cr pin tets'
git push
git status
git add -A
git commit --amend
git push -f
git add -A
git status
git commit --amend
git push -f
