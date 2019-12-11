cd linux-combined/
vim -t x86_spec_ctrl_setup_ap
vim -t identify_secondary_cpu
git grep identify_secondary_cpu
vim arch/x86/kernel/smpboot.c
vim -t identify_secondary_cpu
git diff
git stash
git rebase -i HEAD~2
git stash pop
git log
git status
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git status
git diff --staged
git rebase --abort
git status
git log
git commit --amend
git stash pop
git diff
git add -A
git commit --amend
git format-patch -M upstream/master -o ../outgoing/
git push -u origin
git push --set-upstream origin hc_harden_test
git status
cd linux-combined/
git log
git log --oneline
git rebase v5.4
git status
git diff
git add -A
git commit --amend
git rebase -i v5.4
git log --oneline
git log
git rebase -i HEAD~2
git log -p
git status
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
cp ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
vim ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
git status
git checkout -b hc_harden_test v5.4
git am ../outgoing/*
git log -p
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
git log -p
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-SVM-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0003-KVM-X86-ops-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
vim arch/x86/kvm/x86.c
git status
git diff
git rebase -i HEAD~2
git stash
git rebase -i HEAD~2
git stash pop
git diff
git add -A
git rebase --continue
git status
git log -p
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch   --fix
./scripts/checkpatch.pl --fix ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl --fix-inplace ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
python3.7
python3.7 -m pip install --prefix=~/.local -U pytype
vim
cat /tmp/f
tmpd
cd ~/Doc
cd
cd $(mktemp -d)
git clone https://github.com/intel/ittapi
cd ittapi/
ll
git log
tmux attach
vim -t SVM_CR0_SELECTIVE_MASK
vim ~/git-send-email-cover
vim ~/.vimrc
vim ~/git-send-email-cover
cd ~/qemu/
vim target/i386/cpu.c
git status
git diff
git add target/
git status
git commit --amend
git push -f
git commit --amend
git push -f
vim ~/git-send-email-cover
cat ~/git-send-email-cover 
cd ~/outgoing/
vim 0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch
cd ../out
cd ../outgoing/
vim 0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
vim 0006-X86-Use-KVM-CR-pin-hypercall.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
vim 0006-X86-Use-KVM-CR-pin-hypercall.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
tmux
cd linux-combined/
tmuix
tmux
git log --oneline
cd linux-combined/
tmux
ssh -p 2222
ssh -p 2222 127.0.0.1
fallocate -l 512M image.iso
mv image.iso ../
cd ..
rm image.iso 
fallocate -l 512M image.iso
rm image.iso 
fallocate -l 10G image.iso
ll
mkfs.ext4 -j image.iso
losetup -d -h
losetup -h
losetup -f image.iso 
sudo losetup -f image.iso 
losetup 
sudo mount /dev/loop0 /mnt/
ll /mnt/
sudo cp -r chroot/* /mnt/
ll /mnt/
sudo umount -d /mnt
umount -h
losetup 
vim run.sh 
tmux attach
cd 
mkdir dropbear
cd dropbear
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvz
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvJ
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvj
cd dropbear-2019.78/
ll
./configure --disable-shared --enable-static
./configure --enable-static
make static -j $(($(nproc)*4))
make -j $(($(nproc)*4))
sudo ss -tpln
ll ~/chroot/var/log/
ip a
sudo ss -tpln
sudo dnf install -y golang
cd ~/
mkdir ssh-server
cd ssh-server
ll
curl -O https://gist.github.com/jpillora/b480fde82bff51a06238/raw/546fc573e0520be1cf87da48ce1097214b687dd8/sshd.go
ll
vim sshd.go 
rm sshd.go 
curl -sSLO https://gist.github.com/jpillora/b480fde82bff51a06238/raw/546fc573e0520be1cf87da48ce1097214b687dd8/sshd.go
vim sshd.go 
go get -v .
ll
mkdir -p ~/go/src/github.com/jpillora/sshd
mv sshd.go ~/go/src/github.com/jpillora/sshd/
cd ~/go/src/github.com/jpillora/sshd/
ll
go get -v .
ll
go get -v .
unset CC 
go get -v .
go build -tags netgo .
ll
file sshd
du -h 4
du -h sshd
sudo cp sshd ~/chroot/usr/bin/go-sshd
sudo mkdir -p ~/chroot/var/go-sshd/
cd ~/chroot/var/go-sshd/
sudo ssh-keygen -t rsa
ll
sudo chroot ~/chroot/
vim arch/x86/kvm/vmx/vmx.c
git log -p
python3
vim target/i386/kvm.c
cd ~/qemu/
vim target/i386/kvm.c
cd ~/qemu/
git grep XSTATE_FP_MASK
vim target/i386/cpu.h
git grep MSR_EFER
vim target/i386/cpu.h
git grep MSR_CORE_PERF_GLOBAL_STATUS
vim target/i386/cpu.h
git grep MSR_SMI_COUNT
vim target/i386/kvm.c
git grep steal_time
vim target/i386/machine.c
git grep steal_time
vim target/i386/machine.c
git grep steal_time
vim target/i386/cpu.c
git grep steal_time
git grep 'kvm-steal-time'
dmesg 
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git log -p
git commit --amend
git push -f
git rebase -i HEAD~2
git status
git push -f
vim arch/x86/Kconfig
git diff
git add -A
git commit --amend
git push -f
vim arch/x86/kvm/svm.c
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/x86.c
vim -t setup_cr_pinning
git grep __ro_after_init
vim Documentation/security/self-protection.rst
git grep msr_kvm_poll_control
vim arch/x86/kvm/x86.c
find . -name kvm_host.h
vim ./arch/x86/include/asm/kvm_host.h
git diff
vim ./arch/x86/include/asm/kvm_host.h
git diff
git grep CR4_GU
vim arch/x86/kvm/vmx/vmx.c
cd ..
git status
git diff
git log -p
git log --stat
git add -f outgoing/*
git status
cd linux-combined/
ll
git status
git diff
git stash
git rebase -i HEAD~7
git stash pop
git diff
git grep CR4_GUES
vim arch/x86/kvm/vmx/vmx.c
git grep BUILD_BUG_ON
vim arch/x86/kvm/vmx/vmcs_shadow_fields.h
vim arch/x86/kvm/vmx/vmx.c
git diff
git status
git add -A
git status
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git status
git diff
git add -A
git grep capibility arch/x86
git grep capibility arch/x86/kvm
git grep cap arch/x86/kvm
git grep capability arch/x86/kvm
git grep cap arch/x86/kvm
vim -t kvm_vcpu_ioctl_enable_cap
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git grep kvm_arch_vcpu_ioctl_get_regs
vim virt/kvm/kvm_main.c
git grep -i msr virt/kvm/
git grep -i msr arch/x86/kvm/
git grep __kvm_set_msr
git grep -p __kvm_set_msr
git grep -p do_set_msr
vim -t kvm_arch_vcpu_ioctl
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git log -p
vim include/uapi/linux/kvm_para.h
git status
git add -A
git stash
git status
git rebase -i HEAD~2
git status
git diff
git status
git diff
git diff --staged
git rebase --abort
git status
git rebase -i HEAD~2
git diff
git diff HEAD~1
patch -p1 << 'EOF'
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b83d8201483c..a4625c7e0fec 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -1249,6 +1249,8 @@ static const u32 emulated_msrs_all[] = {
        MSR_KVM_POLL_CONTROL,
        MSR_KVM_CR0_PIN_ALLOWED,
        MSR_KVM_CR4_PIN_ALLOWED,
+       MSR_KVM_CR0_PINNED,
+       MSR_KVM_CR4_PINNED,
 };

 static u32 emulated_msrs[ARRAY_SIZE(emulated_msrs_all)];
@@ -2805,6 +2807,18 @@ int kvm_set_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
                vcpu->arch.msr_kvm_poll_control = data;
                break;

+       case MSR_KVM_CR0_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr0_pinned) ||
+                   (pin & ~KVM_CR0_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr0_pinned = data;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr4_pinned) ||
+                   (pin & ~KVM_CR4_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr4_pinned = data;
+               break;
        case MSR_IA32_MCG_CTL:
        case MSR_IA32_MCG_STATUS:
        case MSR_IA32_MC0_CTL ... MSR_IA32_MCx_CTL(KVM_MAX_MCE_BANKS) - 1:
@@ -3054,6 +3068,12 @@ int kvm_get_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
        case MSR_KVM_CR4_PIN_ALLOWED:
                msr_info->data = KVM_CR4_PIN_ALLOWED;
                break;
+       case MSR_KVM_CR0_PINNED:
+               msr_info->data = vcpu->arch.cr0_pinned;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               msr_info->data = vcpu->arch.cr4_pinned;
+               break;
        case MSR_IA32_P5_MC_ADDR:
        case MSR_IA32_P5_MC_TYPE:
        case MSR_IA32_MCG_CAP:
EOF

vim arch/x86/kvm/x86.c.rej
git diff HEAD~1
vim arch/x86/include/uapi/asm/kvm_para.h
git diff HEAD~1
vim Documentation/virt/kvm/hypercalls.txt
vim Documentation/virt/kvm/msr.txt
patch -p1 << 'EOF'
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b83d8201483c..a4625c7e0fec 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -1249,6 +1249,8 @@ static const u32 emulated_msrs_all[] = {
        MSR_KVM_POLL_CONTROL,
        MSR_KVM_CR0_PIN_ALLOWED,
        MSR_KVM_CR4_PIN_ALLOWED,
+       MSR_KVM_CR0_PINNED,
+       MSR_KVM_CR4_PINNED,
 };

 static u32 emulated_msrs[ARRAY_SIZE(emulated_msrs_all)];
@@ -2805,6 +2807,18 @@ int kvm_set_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
                vcpu->arch.msr_kvm_poll_control = data;
                break;

+       case MSR_KVM_CR0_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr0_pinned) ||
+                   (pin & ~KVM_CR0_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr0_pinned = data;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr4_pinned) ||
+                   (pin & ~KVM_CR4_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr4_pinned = data;
+               break;
        case MSR_IA32_MCG_CTL:
        case MSR_IA32_MCG_STATUS:
        case MSR_IA32_MC0_CTL ... MSR_IA32_MCx_CTL(KVM_MAX_MCE_BANKS) - 1:
@@ -3054,6 +3068,12 @@ int kvm_get_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
        case MSR_KVM_CR4_PIN_ALLOWED:
                msr_info->data = KVM_CR4_PIN_ALLOWED;
                break;
+       case MSR_KVM_CR0_PINNED:
+               msr_info->data = vcpu->arch.cr0_pinned;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               msr_info->data = vcpu->arch.cr4_pinned;
+               break;
        case MSR_IA32_P5_MC_ADDR:
        case MSR_IA32_P5_MC_TYPE:
        case MSR_IA32_MCG_CAP:
EOF

vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim Documentation/virt/kvm/msr.txt
git diff
vim Documentation/virt/kvm/msr.txt
git diff
vim Documentation/virt/kvm/msr.txt
git add -A
git status
git rebase --continue
git status
git log -p
vim arch/x86/kvm/x86.c
git rebase -i HEAD~2
git stash
git rebase -i HEAD~2
git stash pop
git diff
git rebase --continue
git add -A
git rebase --continue
git log -p
git rebase -i HEAD~2
git rm -f arch/x86/kvm/x86.c.rej
git status
git diff HEAD~1
vim include/uapi/linux/kvm_para.h
git diff HEAD~1
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git log -p HEAD~1
vim arch/x86/kernel/cpu/common.c
git grep wrmsr_safe
vim arch/x86/kernel/cpu/common.c
git grep wrmsrl_safe
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git status
git commit --amend
git status
git log -p
git status
git log
git push -f
git status
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git rebase -i HEAD~2
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git status
vim ~/.gitignore 
vim ~/.gitignore
vim ~/.gitconfig 
git rebase -i HEAD~2
rm -rf kernel/kheaders_data.tar.xz
rm -rf kernel/kheaders_data.tar.xz.tmp/
git status
git add -A
git status
git rebase --continue
git log --stat
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim include/uapi/linux/kvm_para.h
vim ./arch/x86/include/asm/kvm_host.h
git status
git grep KVM_STEAL_TIME
vim arch/x86/include/uapi/asm/kvm_para.h
git status
git diff
git reset --hard HEAD
git status
git push -f
git status
~/run.sh 
git log -p
git rebase -i HEAD~2
vim Documentation/virt/kvm/msr.txt
git diff
git add -A
git rebase --continue
git status
git push -f
sudo chroot ~/chroot/
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
~/run.sh 2>&1 | grep -i pinning
git status
git push -f
git grep kvm_set_cr4
git grep kvm_set_cr0
git grep kvm_lmsw
git status
git log -p
git status
git grep VMX_CR0_FIXED0
git grep VMX_CR4_FIXED0
git grep VMX_CR4_FIXED1
git grep VMX_CR0_FIXED1
git grep -E 'VMX_CR[0|1]_FIXED[0|1]'
git grep -E 'kvm_set_cr[0|4]'
git grep -E 'VMX_CR[0|4]_FIXED[0|1]'
git grep -E 'kvm_set_cr[0|4]'
git grep -C 4 -E 'kvm_set_cr[0|4]'
git grep -pC 4 -E 'kvm_set_cr[0|4]'
git grep -p -E '[smv|vmx]_set_cr[0|4]'
git grep -p -E '[\<smv\>|\<vmx\>]_set_cr[0|4]'
git grep -p -E 'vmx_set_cr[0|4]'
git status
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~6
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com --to dave.hansen@intel.com --to enrico.perla@intel.com HEAD~6
echo 'git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com --to dave.hansen@intel.com --to enrico.perla@intel.com HEAD~6' >> ~/README.md 
cd ~
git status
git add outgoing/*
git add -f outgoing/*
git status
vim README.md 
git add -A
git status
git add -f git-send-email-cover 
git status
git c 'RFC v2'
git push
sudo vim chroot/usr/bin/init.sh 
INIT=/usr/bin/init.sh ~/run.sh
sudo vim chroot/usr/bin/init.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
vim ~/run.sh 
~/run.sh 
sudo chroot chroot/
cat ~/.ssh/authorized_keys 
cat ~/.ssh/id_rsa.pub 
sudo cp ~/.ssh/id_rsa.pub chroot/root/.ssh/authorized_keys
sudo mkdir chroot/root/.ssh/
sudo cp ~/.ssh/id_rsa.pub chroot/root/.ssh/authorized_keys
ll chroot/root/.ssh/authorized_keys
sudo ls -lAF chroot/root/.ssh/authorized_keys
vim ~/run.sh 
~/run.sh 
vim ~/run.sh 
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
ll chroot
ll chroot/etc/p
ll chroot/etc/
ll chroot/etc/ | grep ass
vim ~/run.sh
~/run.sh 
sudo vim chroot/etc/selinux/config
~/run.sh 
sudo vim chroot/etc/selinux/config
~/run.sh 
vim ~/run.sh
~/run.sh 
sudo vim /etc/selinux/config
sudo journalctl --dmesg -f
vim ~/run.sh
~/run.sh 
ll chroot
ll chroot/etc/
~/run.sh 
INIT=/usr/bin/bash ~/run.sh 
vim ~/run.sh
INIT=/usr/bin/bash ~/run.sh 
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim run.sh 
~/run.sh
sudo chroot chroot/
sudo vim /etc/selinux/config
sudo vim chroot/usr/bin/init.sh
sudo chroot chroot/
sudo vim chroot/usr/bin/init.sh
mount -t proc proc /proc -n
sudo chroot chroot/
sudo ss -tpln
sudo kill 16487
sudo ss -tpln
~/run.sh
cd linux-combined/
git grep live\ migration
vim Documentation/virt/kvm/api.txt
git grep BUILD_BUG_ON
git grep BUILD_BUG_ON Documentation/
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
git grep CR4_RESERVED_BITS
git grep -C 5 CR4_RESERVED_BITS
vim -t kvm_emulate_hypercall
cd ~/qemu/
ll
git status
git grep reboot
git grep -i reboot
git grep QEMU_OPTION_no_reboot
vim vl.c
git grep reset_requested
vim vl.c
git grep MachineClass
git grep machine_init\(MachineClass
git grep machine_init.\*MachineClass
vim hw/core/null-machine.c
vim -t mcf5208evb_machine_init
vim hw/hppa/machine.c
vim vl.c
cd build/
make -j $(($(nproc)*4))
~/run.sh
sudo chroot chroot/
sudo chroot ~/chroot/
~/run.sh
cat /tmp/f
xxd /tmp/f
stat /tmp/f
rm /tmp/f
vim vl.c
vim ../vl.c
make -j $(($(nproc)*4))
~/run.sh
cat /tmp/f
git grep 'Standard PC (i440FX + PIIX, 1996)'
cd ..
git grep 'Standard PC (i440FX + PIIX, 1996)'
vim hw/i386/pc_piix.c
git grep -pn 'Standard PC (i440FX + PIIX, 1996)'
vim hw/i386/pc_piix.c
git grep MachineClass
git grep MACHINE_GET_CLASS
vun include/hw/boards.h
vim include/hw/boards.h
git grep \-\>reset
git grep \-\\>reset
git grep \\-\\>reset
git grep '\\->reset'
git grep '\->reset'
git grep '\->reset' hw/i386/
git grep pc_machine_reset
vim hw/i386/pc.c
git grep msr
vim target/i386/kvm.c
git grep kvm_has_smm
vim hw/i386/pc.c
git grep qemu_devices_reset
vim include/sysemu/reset.h
vim hw/core/reset.c
git grep qemu_register_reset
vim hw/core/reset.c
git diff
vim vl.c
vim hw/core/reset.c
vim hw/i386/pc.c
vim hw/core/reset.c
git grep qemu_register_reset
git grep kvm
git grep qemu_register_reset
vim target/i386/kvm.c
git grep kvm_msr_list
vim linux-headers/asm-x86/kvm.h
vim target/i386/kvm.c
git grep -C 4 TODOcr4
git grep -nC 4 TODOcr4
vim target/i386/kvm.c
git grep kvm_arch_get_supported_msr_feature
vim target/i386/cpu.c
vim target/i386/cpu.h
git grep 'cr.*pinned'
git grep 'cr.*pin'
git grep 'cr-pin'
git grep 'cr_pin'
git grep 'kvm-cr-pin'
git status
rm reset 
rm git status
git status
git add target/
git diff --staged
vim target/i386/kvm.c
git add target/
git diff --staged
git status
git commit -sm 'Add cr msrs'
git push
cd build/
make -j $(($(nproc)*4))
git grep MSR_KVM_
cd ..
git grep MSR_KVM_
vim include/standard-headers/asm-x86/kvm_para.h
stat include/standard-headers/asm-x86/kvm_para.h
vim include/standard-headers/asm-x86/kvm_para.h
git status
git diff
git grep KVM_FEATURE_PV_SEND_IPI
git grep KVM_FEATURE_PV_TLB_FLUSH
git grep KVM_FEATURE_CR_PIN
git add include/
git status
git commit --amend
git push -f
make -j $(($(nproc)*4))
cd build/
make -j $(($(nproc)*4))
~/run.sh
~/run.sh 2>&1 | grep -i pinning
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git status
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
cd ../
git status
git log -p
git format-patch HEAD~2 ../qemu-outgoing/
mkdir ../qemu-outgoing/
git format-patch HEAD~2 ../qemu-outgoing/
git format-patch ../qemu-outgoing/ HEAD~2
git format-patch -h ../qemu-outgoing/ HEAD~2
git format-patch -o ../qemu-outgoing/ HEAD~2
git reset --hard HEAD~2
git am ../qemu-outgoing/0002-Add-cr-msrs.patch
git status
git log 
git log -p
git blame target/i386/kvm.c
git log 9c600a84544
git commit -s --amend
git am ../qemu-outgoing/0001-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git log
rm -rf ../qemu-outgoing/
git add -A
git status
git push -f
git log -p
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
vim ../qemu-outgoing/0001-target-i386-kvm-Add-cr-pin-MSRs.patch
vim ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch 
git reset --hard HEAD~2
git am ../qemu-outgoing/*
git status
git log -p
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
git reset --hard HEAD~1
cd build/
make
make -j $(($(nproc)*4))
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
~/run.sh -smp cpus=4
cd ..
git am ../qemu-outgoing/*
git status
git am ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git status
git am --abort
git am ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git status
~/run.sh -smp cpus=4
vim ~/run.sh
~/run.sh -smp cpus=4
git status
git push -f
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
cd ..
git add qemu-outgoing/*
git add -f qemu-outgoing/*
git status
git diff
git commit -s 'QEMU patches'
git commit -sm 'QEMU patches'
git push
git add run.sh 
git commit -sm 'mount root rw'
git push
git status
git diff
git checkout -- chroot
sudo chmod 777 chroot/usr/bin/init.sh 
git checkout -- chroot
git checkout -- chroot/usr/bin/init.sh
ll chroot/usr/bin/init.sh
ll chroot/usr/bin/
stat chroot/usr/bin/
sudo chmod o+w chroot/usr/bin/
sudo chmod o+w chroot/usr/
sudo chmod o+w chroot/
git checkout -- chroot/usr/bin/init.sh
git status
git diff
git status
cd ~/qemu/build/
git status
git log
make -j $(($(nproc)*4))
cd ..
rm -rf build/
mkdir build/
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
unset CC
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
cd ..
rm -rf build/
mkdir build/
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static -v
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static --help
ll
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
make -j $(($(nproc)*4))
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
vim ~/run.sh
ll "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
ldd "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
sudo chroot ~/chroot/
ll ~/chroot/home/johnsa1/
ll ~/chroot/home/johnsa1/.ssh/
stat ~/chroot/home/johnsa1/.ssh/
cp ~/.ssh/id_rsa.pub ~/chroot/home/johnsa1/.ssh/authorized_keys
ll ~/chroot/home/johnsa1/.ssh/authorized_keys
cat ~/chroot/home/johnsa1/.ssh/authorized_keys
sudo chroot ~/chroot/
vim ~/run.sh
mkdir -p "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
ll "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "${HOME}/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
mkdir -p ""${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
mkdir -p "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
ll "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
stat "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
cat ~/run.sh
cp "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" "$HOME/chroot${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
ll "$HOME/chroot${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
sudo chroot ~/chroot/
cat ~/run.sh
vim ~/run.sh
vim ~/git-send-email-cover 
rm -rf /home/johnsa1/chroot/home/johnsa1/qemu/build/
cp -r . /home/johnsa1/chroot/home/johnsa1/qemu/build/
ll /home/johnsa1/chroot/home/johnsa1/qemu/build/
sudo chroot ~/chroot/
cp -r ~/chroot ~/nested
sudo rm -rf ~/nested
sudo cp -r ~/chroot ~/nested
sudo umount ~/chroot/proc
sudo rm -rf ~/nested
sudo cp -r ~/chroot ~/nested
sudo df -h --sumarize ~/chroot
sudo df -h --summarize ~/chroot
sudo df -h --sumurize ~/chroot
sudo df -h --sumerize ~/chroot
sudo df -h --max-depth=1 ~/chroot
sudo du -h --max-depth=1 ~/chroot
sudo du -h --max-depth=1 ~/nested/
sudo mv ~/nested/ ~/chroot/home/johnsa1/chroot
sudo cp ~/run.sh ~/chroot/home/johnsa1/
cat /sys/module/kvm_intel/parameters/nested
vim ~/run.sh
sudo cp ~/run.sh ~/chroot/home/johnsa1/run.sh 
cat ~/chroot/home/johnsa1/run.sh
cat /etc/modprobe.d/kvm.conf
sudo vim /etc/modprobe.d/kvm.conf
sudo vim ~/chroot//etc/modprobe.d/kvm.conf
sudo vim /etc/modprobe.d/kvm.conf
sudo reboot
git log -p
git rebase -i HEAD~2
git push -f
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
git statsu
git status
git diff
git log -p
git push -f
cd ..
git status
git add -A
git status
git add -f outgoing/*
git status
git c 'RFC v3'
git push
vim git-send-email-cover 
cat > git-send-email-cover
vim git-send-email-cover
git add git-send-email-cover
git status
git c 'update cover letter'
git push
ll ~/chroot/lib/modules/
ll ~/chroot/lib/*
ll ~/chroot/lib/mod*
ll ~/chroot/boot/
sudo rm ~/chroot/boot/vmlinux
ll ~/chroot/boot/
ssh -p 2222 127.0.0.1
cd linux-combined/
export INSTALL_MOD_PATH=/home/johnsa1/chroot
export INSTALL_PATH=${INSTALL_MOD_PATH}/boot
sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo -E make -j $(($(nproc)*4)) modules_install && sudo -E make install
git grep pin run.log
git grep pinning run.log
ssh -p 2222 127.0.0.1
sudo ss -tpln
ssh -p 2222 localhost
git status
git c 'working on cover letter'
git push
git status
cd ~/qemu
git log -p
vim target/i386/kvm.c
make -j $(($(nproc)*4))
cd by
cd build/
cd by
make -j $(($(nproc)*4))
~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh 
cd ..
git status
git diff
git reset --hard HEAD
git status
cd build/
make -j $(($(nproc)*4))
~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh  | grep -i pinning
