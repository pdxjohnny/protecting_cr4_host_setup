git status
git c 'in progress on low'
git push -f
git status
vim x86/cr_pin_high.c
vim x86/cr_pin_low.c
git status
git diff
vim x86/cr_pin_low.c
vim ../linux-combined/arch/x86/kvm/x86.c
vim ~/.vimrc
vim ../linux-combined/arch/x86/kvm/x86.c
vim x86/cr_pin_low.c
git status
git add -A
git status
git commit --amend --date="$(date)"
git status
vim x86/cr_pin_high.c
git status
git diff
vim x86/cr_pin_high.c
vim x86/cr_pin_low.
vim x86/cr_pin_low.c 
vim x86/cr_pin_low.
vim x86/cr_pin_low.c 
vim x86/cr_pin_high.c
git status
git add -A
git commit --amend --date="$(date)"
git rebase -i HEAD~2
git push -f
git log -p
git grep nested
vim x86/vmx.c
git grep main
vim x86/README
git grep main
git grep main x86/
vim x86/cstart.S
git grep __argv
vim lib/argv.c
vim run_tests.sh 
vim x86/run
vim x86/vmx.c
vim x86/run
git grep append
vim x86/unittests.cfg 
git satus
git status
git diff
vim x86/vmx.c
git grep vmx_tests
vim x86/vmx_tests.c
vim x86/vmx.c
vim x86/cr_pin.c
vim x86/cr_pin_high.c
vim x86/cr_pin.c
                                                                                                              │x86/unittests.cfg:extra_params = -append 'mov_from_cr8'
cr0 = 80010011                                                                                                                                                 │x86/unittests.cfg:extra_params = -append 'mov_to_cr8'
cr3 = 63d000                                                                                                                                                   │x86/unittests.cfg:extra_params = -append 'inl_from_pmtimer'
cr4 = 20                                                                                                                                                       │x86/unittests.cfg:extra_params = -append 'ipi'
                                                                                                                                                               │x86/unittests.cfg:extra_params = -append 'ipi_halt'
git status
git diff
vim x86/cr_pin.c
vim x86/cr_pin_high.
vim x86/cr_pin_high.c
vim x86/vmx.c
vim x86/vmx_tests.c
vim x86/vmx.c
vim x86/vmx_tests.c
vim x86/cr_pin_high.c
vim x86/vmx_tests.c
git grep -p wrsmr x86/vmx_tests.c
git grep -p wrsmr -- x86/vmx_tests.c
git grep -p wrmsr -- x86/vmx_tests.c
git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/.* //g'
git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g'
git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c; done
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c | grep -vE "static.\*$func"; done
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c | grep -vE "static.*$func"; done
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c | grep -v $func(; done
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c | grep -v ${func}\(; done
for func in $(git grep -p wrmsr -- x86/vmx_tests.c | grep = | sed -e 's/(.*//g' | awk '{print $NF}'); do git grep -p $func -- x86/vmx_tests.c | grep -v ${func}\( | grep $func; done
git grep VMX_WRMSR
vim x86/vmx.c 
vim x86/vmx.c
git status
cd linux-combined/
git log
ll
cd ../kvm-unit-tests/
vim logs/vmx.log 
less -r logs/vmx.log
vim logs/vmx.log 
git grep 'Expected pending debug'
vim x86/vmx_tests.c
cd ~/linux-combined/
git grep kvm_spinlock_init
git grep -C 5 -np kvm_spinlock_init
git grep -C 5 -np kvm_disable_steal_time
git log -p
git add arch/x86/kernel/setup.c
vim arch/x86/kernel/setup.c
git log -p
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kvm/x86.c
vim ~/.vim/plugin/cscope_maps.vim
vim ~/.vim/bundle/cscope-maps/plugin/cscope_maps.vim 
vim ~/.vim/plugin/cscope_maps.vim
vim arch/x86/kvm/x86.c
git diff arch/x86/kvm/x86.c
git diff
git diff arch/x86/kvm/x86.c
vim arch/x86/kvm/x86.c
git status
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
rm tools/testing/selftests/kvm/x86_64/svm_vmcall_test
git status
git diff
git add -A
git commit --amend
git status
git log -p
vim arch/x86/kvm/x86.c
git log -p
git status
git diff
git add -A
git commit --amend
git log
git log -p
git status
git rebase --continue
git log -p
git rebase -i HEAD~4
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git add -A
git rebase --continue
git status
git log --state
git log --stat
git rebase -i HEAD~4
vim arch/x86/kvm/x86.c
git rebase -i HEAD~4
git status
rm tools/testing/selftests/kvm/x86_64/svm_vmcall_test
git diff
vim arch/x86/kvm/x86.c
git grep post_leave_smm
git diff
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
git status
git add -A
git rebase --continue
git status
git log
git rebase -i HEAD~4
git checkout HEAD~1
git status
git diff
git log
git rebase --abort
git status
git log
git stats
git status
rm tools/testing/selftests/kvm/x86_64/svm_vmcall_test
git status
git push -f
git log -p
git status
git diff -R HEAD~1
git diff -R HEAD~1 > /tmp/f
vim /tmp/f
git log -p
git diff -R HEAD~2 > /tmp/f
vim /tmp/f
git diff -R HEAD~1 HEAD~2 > /tmp/f
vim /tmp/f
git diff -R HEAD~1 HEAD~2 > /tmp/f
vim /tmp/f
cat /tmp/f
git rebase -i HEAD~4
git apply --help
git apply -R < /tmp/f
git status
git diff
git commit --amend -a
git status
git rebase --continue
git rebase -i HEAD~4
git apply < /tmp/f
git stuts
git status
rm tools/testing/selftests/kvm/x86_64/s*_test
git status
git add -A
git rebase --continue
git log -p
git rebase -i HEAD~3
git log -p
git rebase -i HEAD~2
git status
git rebase --abort
git rebase -i HEAD~4
git rebase --continue
git rebase -i HEAD~4
git status
git rebase --continue
git status
git log -p
vim -t kvm_set_msr_common
vim ~/linux-combined/tools/testing/selftests/kvm/x86_64/evmcs_test.c 
vim ~/linux-combined/tools/testing/selftests/kvm/lib/x86_64/vmx.c
vim ~/linux-combined/tools/testing/selftests/kvm/lib/x86_64/processor.c 
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git status
rm tools/testing/selftests/kvm/x86_64/smm_*test
git status
git add -A
git status
rm tools/testing/selftests/kvm/x86_64/s*_*test
git status
git add -A
git diff --staged
git status
git rebase --continue
git status
git log -p
git rebase -i HEAD~4
it rebase -i HEAD~4git statgit stac
git status
git diff
ll
vim ~/.gitignore_global 
git status
git diff
vim arch/x86/kvm/x86.c
git log -p
git diff
git status
git stash
git push
git rebase -i HEAD~4
git stash pop
git diff
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/emulate.c 
vim arch/x86/kvm/x86.c
git diff HEAD~1
git diff
git diff HEAD~1
vim arch/x86/kvm/x86.c
git diff
vim -t cr4_pinned
vim arch/x86/kvm/x86.c
vim -t cr4_pinned
vim arch/x86/kvm/x86.c
git status
git diff
git grep PINNED
git grep CR.\*PINNED
vim arch/x86/kvm/x86.c
git grep CR.\*PINNED
vim tools/testing/selftests/kvm/include/x86_64/processor.h 
vim arch/x86/kvm/x86.c
vim tools/testing/selftests/kvm/include/x86_64/processor.h 
git grep CR.\*PINNED
vim Documentation/virt/kvm/msr.rst
vim ~/.vimrc 
vim Documentation/virt/kvm/msr.rst
git diff
vim arch/x86/kvm/x86.c
git status
git diff
git checkout --help
git status
git diff > /tmp/f
git status
git checkout -p -- arch/x86/kvm/x86.c
git status
git diff
vim arch/x86/kvm/x86.c
git diff
git diff > /tmp/f
git status
git checkout -b high_low
git add -A
git c 'working on high low'
git push -u pdxjohnny
git remote add origin pdxjohnny git@github.com:pdxjohnny/linux
git remote add pdxjohnny git@github.com:pdxjohnny/linux
git push -u pdxjohnny
git status
git log
git rebase --edit-todo
git status
git rebase --continue
git status
git log
git checkout high_low 
git status
git push
git rebase -i HEAD~3
git rebase -i HEAD~5
git status
git diff
git status
git checkout -- arch/ Documentation/
git status
git reset HEAD arch/ Documentation/
git status
git checkout -- arch/ Documentation/
git status
git diff
git diff --staged
git status
git reset HEAD tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git checkout -- tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git status
git rebase --continue
git log
git log -p
git rebase -i HEAD~5
git checkout HEAD~1 tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c
git status
git diff --staged
git rebase --continue
git status
rm .git/.COMMIT_EDITMSG.swp 
git rebase --continue
git log
git log -p
git push -f
git rebase -i HEAD~5
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c 
git status
git log -p
git diff
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c 
git diff
git add -A
git status
git rebase --continue
git push -f
git status
git log -p
git status
ll
cp tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c tools/testing/selftests/kvm/x86_64/cr_pin_test.c 
vim tools/testing/selftests/kvm/x86_64/cr_pin_test.c
rm tools/testing/selftests/kvm/x86_64/cr_pin_test.c
git status
git rebase --continue
cd ../qemu
vim target/i386/cpu.h 
vim include/standard-headers/asm-x86/kvm_para.h
vim target/i386/kvm.c 
vim target/i386/machine.c 
git status
git stash
git status
git rebase -i HEAD~2
git stash pop
git add target/ include/
git rebase --continue
git log -p
git rebase -i HEAD~2
vim target/i386/kvm.c 
git add target/
git status
git rebase --continue
git log -p
git status
make -j
ll
cd build/
make -j $(($(nproc))*4))
make -j $(($(nproc)*4))
cd ..
git log -p
vim target/i386/cpu.h 
cd build/
make -j $(($(nproc)*4))
cd ../../kvm-unit-tests/
ll
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
make
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log 
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log 
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log 
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1'
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1"
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1"
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log 
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log ; test 1"
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log 
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_low.log 
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log 
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high; cat logs/cr_pin_high.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_low; cat logs/cr_pin_low.log ; test 1"
make
./run_tests.sh pcid
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh vmx; cat logs/vmx.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh vmx test_vmx_feature_control; cat logs/vmx.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=test_vmptrld ./run_tests.sh vmx test_vmx_feature_control; cat logs/vmx.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx test_vmx_feature_control; cat logs/vmx.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_vmcs_shadow_test; cat logs/vmx.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test; cat logs/vmx_cr_pin_test.log ; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log ; test 1"
nodemon -e c --exec "clear; killall qemu-system-x86_64; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log; killall qemu-system-x86_64; test 1"
nodemon -e c --exec "clear; killall qemu-system-x86_64 || test 1; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log; killall qemu-system-x86_64; test 1"
man killall
nodemon -e c --exec "clear; killall -q qemu-system-x86_64; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log; killall qemu-system-x86_64; test 1"
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log; killall -q qemu-system-x86_64; test 1"
git status
ps aux
nodemon -e c --exec "clear; make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 CMDLINE=vmx_store_tsc_test ./run_tests.sh vmx_cr_pin_test && cat logs/vmx_cr_pin_test.log ; test 1"
./run_tests.sh vmx
grep cr logs/vmx.log 
vim logs/vmx.log
./run_tests.sh vmx
./run_tests.sh vmx_cr_pin_test
./run_tests.sh cr_pin_high
./run_tests.sh cr_pin_low
vim .travis.yml 
git status
git push -f
ll x86
git satus
git status
tmux attach
git status
ll
tmux attach
ps aux | grep qemu
kill -9 14524
sudo kill -9 14524
kill -9 14524
ps aux | grep qemu
sudo kill -9 14523
ps aux | grep qemu
ps aux | grep run.sh
sudo kill -9 14420
ll /tmp/cr-pin-test-mlXRoNO3RF/
sudo ls -lAF /tmp/cr-pin-test-mlXRoNO3RF/
sudo ls -lAF /tmp/cr-pin-*
git add test.sh 
git status
git add chroot/usr/bin/test_hibernate.sh 
git status
git commit -sm 'asdf'
git push
git add test.sh 
git status
git commit -sm 'hibernate fix test'
git push
git log -p
git status
ll chroot/usr/bin/
ll chroot/usr/bin/init.sh 
cat chroot/usr/bin/init.sh
sudo cp chroot/usr/bin/test_hibernate.sh chroot/usr/bin/test_l2.sh
vim chroot/usr/bin/test_l2.sh
sudo vim chroot/usr/bin/test_l2.sh
sudo vim chroot/home/johnsa1/run.sh
git add -f chroot/home/johnsa1/run.sh
git satuts
git status
git add test.sh 
git add -f chroot/usr/bin/test_l2.sh 
vim chroot/usr/bin/test_l2.sh
sudo vim chroot/usr/bin/test_l2.sh
tmux attach
git add test.sh 
git status
git add chroot/usr/bin/test_l2.sh 
git status
vim .git/config 
vim .gitconfig 
git status
git commit -sm 'test l2'
git push
sudo vim chroot/usr/bin/test_l2.sh
git status
git stauts
git status
git add README.md chroot/usr/ test.sh 
git status
git commit -sm 'test l2 working'
git push
sudo vim chroot/usr/bin/init.sh
vim README.md 
git add README.md
git status
git commit -sm 'README: Add last working agasint'
git log -p | grep format-patch
git status
git diff
git status
git add -f outgoing/*
git status
git rm -f outgoing/0000-cover-letter.patch 
git status
git add -f outgoing/0002-KVM-X86-Add-CR-pin-MSRs.patch
git status
git commit -sm 'patchset'
git push
git status
git diff
git status
cd ..
ll chroot/do 
cat chroot/do
sudo cp chroot/do chroot/usr/bin/test_hibernate.sh
sudo chmod 755 chroot/usr/bin/test_hibernate.sh
vim chroot/usr/bin/test_hibernate.sh
sudo cp chroot/usr/bin/test_hibernate.sh chroot/usr/bin/test_hibernate.sh
sudo cp /tmp/f chroot/usr/bin/test_hibernate.sh
sudo chmod 755 chroot/usr/bin/test_hibernate.sh
ll chroot/usr/bin/test_hibernate.sh
cat chroot/usr/bin/test_hibernate.sh
git status
git add -f test.sh 
git status
git commit -sm 'test'
git push
vim chroot/usr/bin/test_hibernate.sh
man timeout
vim chroot/usr/bin/test_hibernate.sh
sudo vim chroot/usr/bin/test_hibernate.sh
vim test.sh 
man timeout
vim test.sh 
ll
cd qemu
git status
git log -p
git status
vim target/i386/cpu.c
git diff
git add target/
git commit --amend -a
git status
git log -p
git rebase -i HEAD~2
vim include/standard-headers/asm-x86/kvm_para.h
git log -p
git add target/
git status
git add include/
git status
git commit --ammend
git commit -a
git status
git commit --amend
git status
git log -p
git rebase --continue
cd build/
make -j $(($(nproc)*4))
cd ..
git log -p
cd ..
git log -p
ll chroot/home/johnsa1/qemu/
rm -rf chroot/home/johnsa1/qemu/
rm -rf chroot/home/johnsa1/qemu/ && sudo cp -r ~/qemu chroot/home/johnsa1/qemu/ && sudo chown johnsa1: -R chroot/home/johnsa1/qemu/
ll chroot/home/johnsa1/qemu/
git status
tmux attach
cd ~/linux-combined/
git log -p
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
git grep BITMAPS
git grep MSR_BITMAP
vim arch/x86/kvm/vmx/vmx.c
vim -t is_guest_mode
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
vim -t is_guest_mode
vim -t enter_guest_mode
git grep struct\ vmcs
vim -t vmcs_host_state
git grep nested_\*enter
git grep vmexit
git grep HOST_CR0
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/vmcs12.c
git grep host_cr0
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
git status
git push
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
vim arch/x86/kvm/vmx/nested.c
vim arch/x86/kvm/vmx/nested.h
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
vim arch/x86/kvm/vmx/nested.h
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
dmesg -T
vim arch/x86/kvm/vmx/nested.h
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
vim arch/x86/kvm/vmx/nested.h
git diff
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.h
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.h
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
vim arch/x86/kvm/vmx/nested.c
git grep host_cr0
git grep host_cr4
git grep -C host_cr4
git grep -C 5 host_cr4
git grep evmcs
git grep -C 5 host_cr4
vim arch/x86/kvm/vmx/nested.c
git status
git diff
git grep vmx_set_cr4
git grep -C 4 vmx_set_cr4
git grep -C 10 vmx_set_cr4
git status
git diff
git log
git c 'nested vmx ensure pinning stays on modifications to vmcs host-state'
git push
git status
gi tlog
git log -p
git grep host_cr4
vim arch/x86/kvm/svm.c
git diff
vim arch/x86/kvm/svm.c
git diff
git status
git diff
clang-format-diff.py 
clang-format --help
sudo dnf -y install clang-format
locate clang-format
man locate
man updatedb
sudo dnf -y install clang
man locate
locate clang-format
which clang-format
ll clang-format
ll $(which clang-format)
ll /usr/share/clang/clang-format
ll /usr/share/clang/clang-format*
ll /usr/share/clang/clang-format-diff.py 
vim /usr/share/clang/clang-format-diff.py
/usr/share/clang/clang-format-diff.py
git diff | /usr/share/clang/clang-format-diff.py
git status
git diff
git diff | /usr/share/clang/clang-format-diff.py --help
git diff | /usr/share/clang/clang-format-diff.py -v
git diff | /usr/share/clang/clang-format-diff.py -i
git diff | /usr/share/clang/clang-format-diff.py -i -p1
git status
git log -p -n 1 | /usr/share/clang/clang-format-diff.py -i -p1
git log -p -n 1 HEAD~1 | /usr/share/clang/clang-format-diff.py -i -p1
git log -p -n 1 HEAD~2 | /usr/share/clang/clang-format-diff.py -i -p1
git log -p -n 1 HEAD~3 | /usr/share/clang/clang-format-diff.py -i -p1
git log -p -n 1 HEAD~4 | /usr/share/clang/clang-format-diff.py -i -p1
git log -p -n 1 HEAD~5 | /usr/share/clang/clang-format-diff.py -i -p1
git status
git diff
vim arch/x86/kvm/svm.c
git diff
git status
vim arch/x86/kvm/svm.c
git add arch/x86/kvm/svm.c
git commit --amend
git status
git diff
git reset --hard HEAD
git status
git log -p
vim arch/x86/kvm/vmx/nested.c
git diff
git status
git add -A
git commit --amend
git status
git log -p
~/run.sh -kernel ~/linux-combined/arch/x86/boot/bzImage -append 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'
RELOAD=1 ~/run.sh
~/run.sh
sudo vim ../chroot/usr/bin/init.sh
~/run.sh 
git status
~/run.sh 
ll /boot/
git status
~/run.sh 
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh) && journalctl --dmesg -f
sudo vim ../chroot/usr/bin/init.sh
vim ../chroot/home/johnsa1/run.sh
~/run.sh 
git status
git diff
~/run.sh
dmesg -T
~/run.sh
ll
git status
git diff
~/run.sh
git stauts
git status
git diff
git log -p
vim ~/run.sh 
git log -p
git grep kvm_paravirt_cr_pinning_init
vim -t kvm_paravirt_cr_pinning_init
git grep -p -C 5 kvm_paravirt_cr_pinning_init
vim ~/run.sh 
git status
git diff
git push
git status
git rebase --continue
git status
git diff
git satus
git status
vim arch/x86/include/asm/kvm_para.h
git status
vim arch/x86/include/asm/kvm_para.h
git diff
git status
git add -A
git diff --staged
git status
git rebase --continue
git status
git log -p
git rebase -i HEAD~3
git log -p
vim tools/testing/selftests/kvm/include/x86_64/processor.h
git status
git add -A
git commit --amend
git log -p
git status
git rebase --continue
git tsatus
git status
make -j $(($(nproc)*4))
~/test.sh
git status
55
/dev/nbd0 disconnected                                                                         │  fi
+ '[' -d /sys/module/kvm_intel ']'                                                             │}
+ sudo modprobe -rf kvm-intel                                                                  │
+ '[' -d /sys/module/kvm ']'                                                                   │# L2
++ uname -r                                                                                    │test_l2() {
git status
vim ~/run.sh 
git log -p ~/run.sh
git status
cd ..
git log -p ~/run.sh
git status
git diff
git c 'vmx kvm-unit-tests'
git push
git status
vim run.sh 
vim chroot/usr/bin/init.sh 
sudo cp /tmp/init.sh chroot/usr/bin/init.sh
git add chroot/usr/bin/init.sh
git diff --staged
git status
vim run.sh 
git add chroot/usr/bin/init.sh
git status
git diff --staged
git c 'mount boot'
git push
ll
vim run.sh 
ll
vim run..s
vim run.sh
git status
ll
du -h image.qcow2 
sha384sum image.qcow2
git status
git diff run.sh
git checkout -- run.sh
git status
cp /boot/vmlinuz-5.0.9-301.fc30.x86_64 chroot/stable-kernel
sudo cp /boot/vmlinuz-5.0.9-301.fc30.x86_64 chroot/stable-kernel
ll chroot/home/johnsa1/run.sh
vim chroot/home/johnsa1/run.sh
git diff chroot/home/johnsa1/run.sh
cat run.sh 
cat chroot/boot/startup.nsh 
cat chroot/usr/bin/uefi-setup.sh 
git diff
git add -A
git satus
git status
git c 'L2 add pv_cr_pin'
git push
git status
dmesg -T
git status
git diff
git checkout -- chroot/home/johnsa1/run.sh
git status
dme
dmesg 
git status
ll
git status
ll chroot/home/johnsa1/qu
ll chroot/home/johnsa1/qemu/
mv chroot/home/johnsa1/qemu/ qemu-guest-old-2019-12-19
cp -r qemu chroot/home/johnsa1/qemu
sudo sync
git status
git c 'bash history'
git push
git status
ll
cp run.sh test.sh
vim test.sh
ll test.sh
~/test.sh
vim test.sh
~/test.sh
vim test.sh
~/test.sh
vim test.sh
~/test.sh
vim test.sh
~/test.sh
vim test.sh 
~/test.sh
vim test.sh 
~/test.sh
vim test.sh 
vim run.sh 
vim test.sh 
git status
git diff
git add -f chroot/usr/bin/test_hibernate.sh
ll chroot/usr bi
ll chroot/usr
ll chroot
git status
git add run.sh test.sh 
git status
git commit -sm 'leading trailing'
git push
~/test.sh
ll chroot
ll chroot/usr/bin/
ll chroot/usr/bin/test_hibernate.sh 
git add -f chroot/usr/bin/test_hibernate.sh
git status
git commit -sm 'test hibernate'
git push
~/test.sh
vim run.sh 
~/test.sh
vim run.sh 
~/test.sh
vim run.sh 
vim test.sh
~/test.sh
vim run.sh 
~/test.sh
vim test.sh 
~/test.sh
vim test.sh 
~/test.sh
ll cr-pin-test-
rm rf cr-pin-test-*
rm -rf cr-pin-test-*
~/test.sh
vim test.sh 
~/test.sh
vim test.sh 
test.sh
./test.sh
vim test.sh 
git status
git diff linux-combined/.config
cd qemu
git status
git push -f
cd ..
cd kvm-unit-tests/
ll
git status
git remote -v
git push
grubby
sudo grubby
sudo grubby --help
sudo grubby --default-kernel
git commit --amend
git status
git reset --hard HEAD~1
git pull
cd ../linux-combined/
make install
sudo make install
sudo make -j $(($(nproc)*4)) modules_install
sudo make install
sudo grubby --default-kernel
sudo grubby --default-kernel /boot/vmlinuz-5.7.0+
ll /boot/vmlinuz-5.7.0+
sudo grubby --set-default-kernel /boot/vmlinuz-5.7.0+
sudo grubby --help
sudo grubby --set-default-kernel=/boot/vmlinuz-5.7.0+
sudo grubby --set-default=/boot/vmlinuz-5.7.0+
sudo reboot
uptime
dmesg 
uname -a
tmux attach
tmux
tmux attach
uname -a
lll
git status
rm tools/testing/selftests/kvm/x86_64/cr_pin_test.c
vim tools/testing/selftests/kvm/x86_64/cr_pin_test.c
git status
git log
ll
cd ~/linux-combined/
vim tools/testing/selftests/kvm/x86_64/cr_pin_test.c
vim tools/testing/selftests/kvm/x86_64/smm_cr_pin_test.c 
git grep stringify.h 
git grep stringify.h  --s/testing/selftests/kvm/x86_64/
git grep stringify.h  -- tools/testing/selftests/kvm/x86_64/
git grep stringify.h  -- tools/testing/selftests/kvm/
git grep stringify.h  -- tools/testing/selftests/
git grep stringify.h  -- tools/testing/
git grep stringify.h tools/testing/
git grep stringify.h
git diff
vim tools/testing/selftests/kvm/x86_64/smm_test.c
find . -name stringify.h
vim tools/include/linux/stringify.h
git grep GUEST_SYNC
vim tools/testing/selftests/kvm/include/kvm_util.h
