# Paravirtualization Based CR Pinning

## Cover letter guidelines from Tony Luck

That's a good intro for internal folks to let them know what you want. It
needs to be followed by the text of what you plan to submit in the cover
letter when you post upstream.

This is the most important component of an upstream submission. Without a
good one, community reviewers don't even know whether this series is something
they should be interested in.

You need to summarize:

1) What problem you are solving

2) How you are you solving it

3) [optional, but often a good idea] what other options did you consider

4) What's in each patch (or group of patches). You should mention
any open areas, corner cases, or other bits where you are looking for
guidance to improve or fill in gaps.

## Commands

```console
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc liran.alon@oracle.com --cc luto@kernel.org --cc joro@8bytes.org --cc rick.p.edgecombe@intel.com --cc kristen@linux.intel.com --cc arjan@linux.intel.com --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~4
```

full kernel compile

```console
make olddefconfig && time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
```

kvm compile and reload

```console
(cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh)
```

kvm compile with module reload and dmesg log streaming

```console
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
```

selftests

```console
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
```

unit tests

```console
mcr_pinake && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin_high cr_pin_low vmx_cr_pin_test; cat logs/{cr_pin_high,cr_pin_low,vmx_cr_pin_test}.log
```

set boot kernel on host

```console
sudo grubby --set-default /boot/vmlinuz-5.6.0-rc1+
```

CMDLINE="resume=/dev/sda resumewait" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log

For seeing function calls in vim:

```console
$ make ARCH=x86_64 COMPILED_SOURCE=1 cscope tags
$ git clone https://github.com/joe-skb7/cscope-maps.git ~/.vim/bundle/cscope-maps
```

- Ctrl-\ + c
  - All function calls
- Ctrl-]
  - Function definition

```vim
    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "   'S'   struct: find struct definition under cursor
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " displays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.
```

See https://gist.github.com/pdxjohnny/aed9d495e606a816f4dfa51db6c2ebd4 for kernel hacking notes

Suspend-to-RAM is causing a CR4 fault.

```console
bash-5.0# rtcwake -s 10 -m mem
rtcwake: wakeup from "mem" using /dev/rtc0 at Fri Feb  7 00:55:53 2020
[    5.011569] PM: suspend entry (deep)
[    5.018937] Filesystems sync: 0.001 seconds
[    5.026191] Freezing user space processes ... (elapsed 0.001 seconds) done.
[    5.036739] OOM killer disabled.
[    5.040128] Freezing remaining freezable tasks ... (elapsed 0.001 seconds) done.
[    5.048797] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[    5.050984] sd 0:0:0:0: [sda] Stopping disk
[    5.053095] PM: suspend devices took 0.007 seconds
[    5.055757] ACPI: Preparing to enter system sleep state S3
[    5.057238] PM: Saving platform NVS memory
[    5.058319] Disabling non-boot CPUs ...
[   15.172803] traps: PANIC: double fault, error_code: 0x0
[   15.173838] double fault: 0000 [#1] SMP PTI
[   15.174671] CPU: 0 PID: 247 Comm: rtcwake Tainted: G           O      5.5.0+ #95
[   15.176161] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.177678] RIP: 0010:0xfff0
[   15.178257] Code: Bad RIP value.
[   15.178803] RSP: 0018:0000000000000000 EFLAGS: 00010002
[   15.179684] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[   15.180885] RDX: 00000000000406e3 RSI: 0000000000000000 RDI: 0000000000000000
[   15.182070] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   15.183266] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
[   15.184459] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[   15.185656] FS:  00007f14dff38580(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.186991] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.187915] CR2: 000000000000ffc6 CR3: 00000002341e2005 CR4: 0000000000360ef0
[   15.189078] Call Trace:
[   15.189481] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.190411] ---[ end trace cb2fc086914647f9 ]---
[   15.191160] RIP: 0010:0xfff0
[   15.191633] Code: Bad RIP value.
[   15.192164] RSP: 0018:0000000000000000 EFLAGS: 00010002
[   15.193010] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[   15.194162] RDX: 00000000000406e3 RSI: 0000000000000000 RDI: 0000000000000000
[   15.195312] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   15.196465] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
[   15.197623] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[   15.198776] FS:  00007f14dff38580(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.200085] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.201013] CR2: 000000000000ffc6 CR3: 00000002341e2005 CR4: 0000000000360ef0
[   15.202473] ------------[ cut here ]------------
[   15.203241] WARNING: CPU: 0 PID: 0 at kernel/time/timekeeping.c:754 ktime_get+0x85/0x90
[   15.204541] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.205462] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D    O      5.5.0+ #95
[   15.206656] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.207969] RIP: 0010:ktime_get+0x85/0x90
[   15.208621] Code: d2 48 85 c2 8b 15 2b 0e cc 01 48 0f 45 c5 44 3b 25 00 0e cc 01 75 a3 48 0f af d0 48 8d 04 32 48 d3 e8 48 01 d8 5b 5d 41 5c c3 <0f> 0b eb 8a f3 90 eb 88 0f 1f 00 0f 1f 44 00 00 41 54 55 31 ed 53
[   15.211637] RSP: 0018:ffffffff82603e98 EFLAGS: 00010002
[   15.212476] RAX: 0000000000000001 RBX: ffff888237c1e9e0 RCX: ffff888235a07480
[   15.213633] RDX: 0000000000000000 RSI: 0000000000000009 RDI: ffff888235a40000
[   15.214790] RBP: 00000000000000d0 R08: ffff888235a40a38 R09: 00000000000000f4
[   15.215948] R10: 0000000000000000 R11: 0000000000031360 R12: ffffffff82613840
[   15.217103] R13: 00000000bfec1810 R14: 00000000bfec1818 R15: 00000000bfec1be0
[   15.218468] FS:  0000000000000000(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.219777] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.220713] CR2: 000000000000ffc6 CR3: 000000000360a006 CR4: 0000000000360ef0
[   15.221887] Call Trace:
[   15.222275]  tick_nohz_idle_enter+0x2f/0x50
[   15.222946]  do_idle+0x3f/0x260
[   15.223460]  cpu_startup_entry+0x19/0x20
[   15.224105]  start_kernel+0x534/0x551
[   15.224706]  secondary_startup_64+0xa4/0xb0
[   15.225393] ---[ end trace cb2fc086914647fa ]---
[   15.226164] ------------[ cut here ]------------
[   15.226929] WARNING: CPU: 0 PID: 0 at kernel/rcu/tree.c:560 rcu_eqs_enter.constprop.0+0xb4/0xc0
[   15.228462] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.229388] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D W  O      5.5.0+ #95
[   15.230582] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.231897] RIP: 0010:rcu_eqs_enter.constprop.0+0xb4/0xc0
[   15.232768] Code: 0f c1 83 d8 00 00 00 65 8b 15 88 77 eb 7e 65 48 8b 04 25 c0 8b 01 00 89 90 84 03 00 00 5b 5d c3 48 89 ef e8 ae fe ff ff eb bd <0f> 0b e9 75 ff ff ff 0f 1f 44 00 00 0f 1f 44 00 00 65 8b 05 54 77
[   15.235773] RSP: 0018:ffffffff82603eb0 EFLAGS: 00010002
[   15.236617] RAX: ffff888237c2bb80 RBX: 000000000002bb80 RCX: 0000000000000000
[   15.237776] RDX: 4000000000000000 RSI: ffffffff82603e68 RDI: 00000001251b1ead
[   15.238932] RBP: ffffffff82613840 R08: 0000000000000001 R09: 00000000000000f4
[   15.240093] R10: 0000000000000000 R11: 0000000000031360 R12: ffffffff82613840
[   15.241251] R13: 0000000000000000 R14: 0000000000000000 R15: ffffffff82613840
[   15.242409] FS:  0000000000000000(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.243718] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.244652] CR2: 000000000000ffc6 CR3: 000000000360a006 CR4: 0000000000360ef0
[   15.245819] Call Trace:
[   15.246228]  do_idle+0x1f0/0x260
[   15.246785]  cpu_startup_entry+0x19/0x20
[   15.247436]  start_kernel+0x534/0x551
[   15.248042]  secondary_startup_64+0xa4/0xb0
[   15.248721] ---[ end trace cb2fc086914647fb ]---
```

### A patch to selftests for when cr4 was blowing up because msrs were being set before we set that we were in smm

```diff
diff --git a/tools/testing/selftests/kvm/lib/x86_64/processor.c b/tools/testing/selftests/kvm/lib/x86_64/processor.c
index 683d3bdb8f6a..de851ea31f96 100644
--- a/tools/testing/selftests/kvm/lib/x86_64/processor.c
+++ b/tools/testing/selftests/kvm/lib/x86_64/processor.c
@@ -1164,14 +1164,14 @@ void vcpu_load_state(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_x86_state *s
         TEST_ASSERT(r == 0, "Unexpected result from KVM_SET_SREGS, r: %i",
                 r);

-       r = ioctl(vcpu->fd, KVM_SET_MSRS, &state->msrs);
-        TEST_ASSERT(r == state->msrs.nmsrs, "Unexpected result from KVM_SET_MSRS, r: %i (failed at %x)",
-                r, r == state->msrs.nmsrs ? -1 : state->msrs.entries[r].index);
-
        r = ioctl(vcpu->fd, KVM_SET_VCPU_EVENTS, &state->events);
         TEST_ASSERT(r == 0, "Unexpected result from KVM_SET_VCPU_EVENTS, r: %i",
                 r);

+       r = ioctl(vcpu->fd, KVM_SET_MSRS, &state->msrs);
+        TEST_ASSERT(r == state->msrs.nmsrs, "Unexpected result from KVM_SET_MSRS, r: %i (failed at %x)",
+                r, r == state->msrs.nmsrs ? -1 : state->msrs.entries[r].index);
+
        r = ioctl(vcpu->fd, KVM_SET_MP_STATE, &state->mp_state);
         TEST_ASSERT(r == 0, "Unexpected result from KVM_SET_MP_STATE, r: %i",
                 r);
```

### Debug violation code

```c
		pr_info("---- BEGIN CR0 VIOLATION ----\n");
		pr_info("is_smm: %d\n", is_smm(vcpu));
		pr_info("is_guest_mode: %d\n", is_guest_mode(vcpu));
		pr_info("cr0: %lx\n", cr0);
		pr_info("vcpu->arch.cr0_pinned.high: %lx\n", vcpu->arch.cr0_pinned.high);
		pr_info("vcpu->arch.cr0_pinned.low: %lx\n", vcpu->arch.cr0_pinned.low);
		pr_info("----  END  CR0 VIOLATION ----\n");
```

### Get maintainers

```console
$ scripts/get_maintainer.pl --email *.patch
Jonathan Corbet <corbet@lwn.net> (maintainer:DOCUMENTATION,commit_signer:13/110=12%)
Paolo Bonzini <pbonzini@redhat.com> (supporter:KERNEL VIRTUAL MACHINE (KVM),commit_signer:9/12=75%)
Thomas Gleixner <tglx@linutronix.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT),commit_signer:17/110=15%,commit_signer:25/41=61%,authored:12/41=29%,added_lines:189/405=47%,removed_lines:176/361=49%,authored:1/12=8%)
Ingo Molnar <mingo@redhat.com> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT),commit_signer:5/18=28%,authored:3/18=17%,added_lines:48/117=41%,removed_lines:116/142=82%)
Borislav Petkov <bp@alien8.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT),commit_signer:15/41=37%,added_lines:33/405=8%,removed_lines:27/361=7%,commit_signer:6/18=33%)
x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
"H. Peter Anvin" <hpa@zytor.com> (reviewer:X86 ARCHITECTURE (32-BIT AND 64-BIT),commit_signer:2/18=11%)
Sean Christopherson <sean.j.christopherson@intel.com> (reviewer:KERNEL VIRTUAL MACHINE FOR X86 (KVM/x86),authored:1/12=8%,removed_lines:723/756=96%)
Vitaly Kuznetsov <vkuznets@redhat.com> (reviewer:KERNEL VIRTUAL MACHINE FOR X86 (KVM/x86),commit_signer:3/12=25%)
Wanpeng Li <wanpengli@tencent.com> (reviewer:KERNEL VIRTUAL MACHINE FOR X86 (KVM/x86))
Jim Mattson <jmattson@google.com> (reviewer:KERNEL VIRTUAL MACHINE FOR X86 (KVM/x86),commit_signer:3/12=25%)
Joerg Roedel <joro@8bytes.org> (reviewer:KERNEL VIRTUAL MACHINE FOR X86 (KVM/x86))
Shuah Khan <shuah@kernel.org> (maintainer:KERNEL SELFTEST FRAMEWORK)
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> (commit_signer:18/110=16%,authored:18/110=16%,added_lines:43/640=7%,removed_lines:43/196=22%)
"Paul E. McKenney" <paulmck@kernel.org> (commit_signer:10/110=9%,authored:8/110=7%,added_lines:49/640=8%)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (commit_signer:10/110=9%)
Pawan Gupta <pawan.kumar.gupta@linux.intel.com> (added_lines:67/640=10%,commit_signer:5/41=12%,authored:4/41=10%,added_lines:30/405=7%)
Juergen Gross <jgross@suse.com> (removed_lines:21/196=11%)
Mike Kravetz <mike.kravetz@oracle.com> (removed_lines:13/196=7%)
Oliver Neukum <oneukum@suse.com> (removed_lines:10/196=5%)
Andy Lutomirski <luto@kernel.org> (commit_signer:6/41=15%,authored:3/41=7%,added_lines:40/405=10%,removed_lines:28/361=8%)
"Peter Zijlstra (Intel)" <peterz@infradead.org> (commit_signer:5/41=12%)
Fenghua Yu <fenghua.yu@intel.com> (authored:3/41=7%)
Reinette Chatre <reinette.chatre@intel.com> (authored:3/41=7%,removed_lines:42/361=12%)
Vineela Tummalapalli <vineela.tummalapalli@intel.com> (added_lines:35/405=9%,removed_lines:30/361=8%)
Dave Hansen <dave.hansen@linux.intel.com> (commit_signer:3/18=17%,authored:1/18=6%)
John Andersen <john.s.andersen@intel.com> (commit_signer:2/18=11%,authored:2/18=11%,added_lines:10/117=9%,added_lines:13/63=21%,commit_signer:1/1=100%,authored:1/1=100%,added_lines:207/207=100%)
"Ronald G. Minnich" <rminnich@gmail.com> (authored:1/18=6%)
Dan Williams <dan.j.williams@intel.com> (authored:1/18=6%,added_lines:8/117=7%,removed_lines:10/142=7%)
Baoquan He <bhe@redhat.com> (added_lines:12/117=10%)
Kees Cook <keescook@chromium.org> (added_lines:11/117=9%)
Eric Auger <eric.auger@redhat.com> (commit_signer:3/12=25%,authored:3/12=25%,added_lines:24/63=38%)
Aaron Lewis <aaronlewis@google.com> (commit_signer:2/12=17%,authored:1/12=8%,added_lines:6/63=10%)
Peter Xu <peterx@redhat.com> (authored:1/12=8%)
Makarand Sonare <makarandsonare@google.com> (added_lines:7/63=11%)
linux-doc@vger.kernel.org (open list:DOCUMENTATION)
linux-kernel@vger.kernel.org (open list)
kvm@vger.kernel.org (open list:KERNEL VIRTUAL MACHINE (KVM))
linux-kselftest@vger.kernel.org (open list:KERNEL SELFTEST FRAMEWORK)
```

Also add kernel-hardening@lists.openwall.com
And liran.alon@oracle.com
And drjones@redhat.com

```console
git send-email \
  --subject-prefix="PATCH" \
  --annotate \
  --cover-letter \
  --base=kvm/next \
  --to corbet@lwn.net \
  --to pbonzini@redhat.com \
  --to tglx@linutronix.de \
  --to mingo@redhat.com \
  --to bp@alien8.de \
  --to x86@kernel.org \
  --to hpa@zytor.com \
  --to shuah@kernel.org \
  --to sean.j.christopherson@intel.com \
  --to liran.alon@oracle.com \
  --to drjones@redhat.com \
  --cc vkuznets@redhat.com \
  --cc wanpengli@tencent.com \
  --cc jmattson@google.com \
  --cc joro@8bytes.org \
  --cc mchehab+huawei@kernel.org \
  --cc gregkh@linuxfoundation.org \
  --cc paulmck@kernel.org \
  --cc pawan.kumar.gupta@linux.intel.com \
  --cc jgross@suse.com \
  --cc mike.kravetz@oracle.com \
  --cc oneukum@suse.com \
  --cc luto@kernel.org \
  --cc peterz@infradead.org \
  --cc fenghua.yu@intel.com \
  --cc reinette.chatre@intel.com \
  --cc vineela.tummalapalli@intel.com \
  --cc dave.hansen@linux.intel.com \
  --cc john.s.andersen@intel.com \
  --to rick.p.edgecombe@intel.com \
  --to kristen@linux.intel.com \
  --cc arjan@linux.intel.com \
  --cc caoj.fnst@cn.fujitsu.com \
  --cc bhe@redhat.com \
  --cc nivedita@alum.mit.edu \
  --cc keescook@chromium.org \
  --cc dan.j.williams@intel.com \
  --cc eric.auger@redhat.com \
  --cc aaronlewis@google.com \
  --cc peterx@redhat.com \
  --cc makarandsonare@google.com \
  --cc linux-doc@vger.kernel.org \
  --cc linux-kernel@vger.kernel.org \
  --cc kvm@vger.kernel.org \
  --cc linux-kselftest@vger.kernel.org \
  --cc kernel-hardening@lists.openwall.com \
  --bcc sandra.haron@intel.com \
  --bcc deneen.t.dock@intel.com \
  HEAD~4
```

Send kvm-unit-tests patch

```console
git send-email \
  --annotate \
  --subject-prefix="kvm-unit-tests PATCH v2" \
  --base=auto \
  --to corbet@lwn.net \
  --to pbonzini@redhat.com \
  --to tglx@linutronix.de \
  --to mingo@redhat.com \
  --to bp@alien8.de \
  --to hpa@zytor.com \
  --to shuah@kernel.org \
  --to sean.j.christopherson@intel.com \
  --cc john.s.andersen@intel.com \
  --to rick.p.edgecombe@intel.com \
  --to kvm@vger.kernel.org \
  --cc kernel-hardening@lists.openwall.com \
  --bcc johnandersenpdx@gmail.com \
  0001-x86-Add-control-register-pinning-tests.patch
```


PATCH v3 internal

```
git send-email \
  --subject-prefix="[X86REVIEW] PATCH v3" \
  --annotate \
  --cover-letter \
  --base=kvm/next \
  --to x86-patch-review@eclists.intel.com \
  --to linux-drivers-review@eclists.intel.com \
  --cc dave.hansen@linux.intel.com \
  --to sean.j.christopherson@intel.com \
  --to kristen@linux.intel.com \
  --to rick.p.edgecombe@intel.com \
  --cc john.s.andersen@intel.com \
  --bcc sandra.haron@intel.com \
  --bcc johnandersenpdx@gmail.com \
  HEAD~9
```

## kexec

Places that might have to do with kexec

```console
arch/arm/kernel/relocate_kernel.S
arch/x86/boot/compressed/efi_thunk_64.S
arch/x86/boot/compressed/head_64.S
arch/x86/kernel/acpi/wakeup_64.S
arch/x86/kernel/head_64.S
arch/x86/kernel/relocate_kernel_64.S
arch/x86/kernel/relocate_kernel_64.S:103
arch/x86/kernel/relocate_kernel_64.S:105
arch/x86/kernel/relocate_kernel_64.S:52
arch/x86/kernel/relocate_kernel_64.S:53
arch/x86/kernel/relocate_kernel_64.S:54
arch/x86/kernel/relocate_kernel_64.S:55
arch/x86/kernel/relocate_kernel_64.S:56
arch/x86/kernel/relocate_kernel_64.S:57
arch/x86/kernel/relocate_kernel_64.S:58
arch/x86/kernel/relocate_kernel_64.S:60
arch/x86/kernel/relocate_kernel_64.S:74
arch/x86/kernel/relocate_kernel_64.S:77
arch/x86/mm/mem_encrypt_boot.S
arch/x86/platform/olpc/xo1-wakeup.S
arch/x86/power/hibernate_asm_64.S
arch/x86/realmode/rm/trampoline_64.S
arch/x86/realmode/rm/wakeup_asm.S
```

Narrowed with

```console
$ git log --walk-reflogs -p | grep \\.S
arch/x86/boot/compressed/efi_thunk_64.S
arch/x86/boot/compressed/head_64.S
arch/x86/kernel/head_64.S
arch/x86/kernel/relocate_kernel_64.S
arch/x86/realmode/rm/trampoline_64.S
arch/x86/realmode/rm/wakeup_asm.S
```

The branch with kexec support is called nokexec for some dumb reason.



```
commit 2cc63f13ca49339d10bc145717a91362aee7fbdd
Author: John Andersen <john.s.andersen@intel.com>
Date:   Wed Jan 8 13:14:30 2020 -0800

    X86: Update mmu_cr4_features during feature identification

    In identify_cpu() when setting up SMEP/SMAP/UMIP/FSGSBASE call
    cr4_set_bits_and_update_boot() instead of cr4_set_bits(). This ensures
    that mmu_cr4_features contains those bits, and does not disable those
    protections when in hibernation asm. This is necessary to support
    paravirtualized control register pinning in conjunction with hibernation
    / suspend to RAM. Without setting these bits in mmu_cr4_features, the
    trampoline code disables them, resulting in a pinning violation.

    setup_arch() updates mmu_cr4_features to save what identified features
    are supported for later use in hibernation asm when CR4 needs to be
    modified to toggle PGE. CR4 writes happen in restore_image() and
    restore_registers(). setup_arch() occurs before identify_cpu(), this
    leads to mmu_cr4_features not containing some of the CR4 features which
    were enabled via identify_cpu() when hibernation asm is executed.

    Two classes of cr4_set_bits() exist (cr4_set_bits() and
    cr4_set_bits_and_update_boot()) see comment in setup.  Are there
    features we *want* to disable before entering the hibernation assembly?

    For instance, why not leave MCE enabled in there?  What about PCIDs or
    OSPKE?  Does it hurt?

      Update mmu_cr4_features (and, indirectly, trampoline_cr4_features)
      with the current CR4 value.  This may not be necessary, but
      auditing all the early-boot CR4 manipulation would be needed
      to rule it out.

    mmu_cr4_features is only used within the trampoline, the CR4 of the
    image we're loading gets restored shortly

    SMEP/SMAP/UMIP/FSGSBASE differ in nature from other CR4 bits which could
    be added to the maintained set. For example, MCE is used for hardware
    related errors, which could not be handled within the trampoline should
    they occur without

    PCIDE isn't relevant to the trampoline code since there is only one
    processor and one thread running at the time.

    PKE isn't something we'd want to leave enabled because we're not using
    protection keys within the trampoline and

    the maintained set because they are
    related to protections against attackers in userspace and applicable
    within

    For instance, why not leave MCE enabled in there?  What about PCIDs or
    OSPKE?  Does it hurt?

    We can safely use mmu_cr4_features to leave SMEP/SMAP/UMIP set through
    the hibernation trampoline. Should any exceptions occur because of their
    still being enabled, it would signal to kernel developers that they have
    inadvertently touched userspace memory. FSGSBASE is safe because there
    are no userspace

    MCE

    For the boot CPU,
    the __ro_after_init on mmu_cr4_features does not cause a fault. On
    non-boot  CPUs was triggering faults. Therefore,
    cr4_set_bits_and_update_boot() has been updated to check if the bits
    we're attempting to set already exist within mmu_cr4_features. If they
    do, no update is done, thereby avoiding writes which would trigger
    faults.

    Signed-off-by: John Andersen <john.s.andersen@intel.com>

```

### QEMU

```console
$ mkdir /home/johnsa1/backups/
$ mv /home/johnsa1/chroot/home/johnsa1/qemu/ "/home/johnsa1/backups/qemu.$(date)"
$ rsync -avhW --no-compress --progress /home/johnsa1/qemu /home/johnsa1/chroot/home/johnsa1/qemu/
```

## kexec

```console
$ sudo cp /home/johnsa1/kexec-tools/build/sbin/kexec /home/johnsa1/chroot/usr/sbin/kexec
```
