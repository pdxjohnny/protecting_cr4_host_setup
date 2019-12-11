# Paravirtualization Based CR Pinning

```console
git send-email --subject-prefix="RFC v3" --annotate --cover-letter --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to sean.j.christopherson@intel.com --to arjan@linux.intel.com HEAD~2
```

See https://gist.github.com/pdxjohnny/aed9d495e606a816f4dfa51db6c2ebd4 for kernel hacking notes

Currently shit is hitting the fan at the `lidt` instruction (triggering SMAP and SMEP to be turned off).

```
      ff81063736:	0f 82 db 00 00 00    	jb     ffffffff81063817 <machine_kexec+0x227>
      ff8106373c:	48 c7 c1 00 00 00 80 	mov    $0xffffffff80000000,%rcx
      ff81063743:	4c 29 c1             	sub    %r8,%rcx
      ff81063746:	48 01 c8             	add    %rcx,%rax
      ff81063749:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
      ff8106374e:	f6 85 78 02 00 00 01 	testb  $0x1,0x278(%rbp)
      ff81063755:	75 14                	jne    ffffffff8106376b <machine_kexec+0x17b>
      ff81063757:	48 8b 45 28          	mov    0x28(%rbp),%rax
      ff8106375b:	48 29 d0             	sub    %rdx,%rax
      ff8106375e:	48 c1 f8 06          	sar    $0x6,%rax
      ff81063762:	48 c1 e0 0c          	shl    $0xc,%rax
      ff81063766:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
      ff8106376b:	b8 18 00 00 00       	mov    $0x18,%eax
      ff81063770:	8e d8                	mov    %eax,%ds
      ff81063772:	8e c0                	mov    %eax,%es
      ff81063774:	8e d0                	mov    %eax,%ss
      ff81063776:	8e e0                	mov    %eax,%fs
      ff81063778:	8e e8                	mov    %eax,%gs
      ff8106377a:	31 c0                	xor    %eax,%eax
      ff8106377c:	66 89 44 24 06       	mov    %ax,0x6(%rsp)
      ff81063781:	48 8b 05 58 1c 18 01 	mov    0x1181c58(%rip),%rax        # ffffffff821e53e0 <page_offset_base>
      ff81063788:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
      ff8106378d:	0f 01 54 24 06       	lgdt   0x6(%rsp)
--->  ff81063792:	0f 01 5c 24 06       	lidt   0x6(%rsp)
      ff81063797:	e8 a4 c4 01 00       	callq  ffffffff8107fc40 <sme_active>
      ff8106379c:	0f b6 8d 78 02 00 00 	movzbl 0x278(%rbp),%ecx
      ff810637a3:	48 8b 55 18          	mov    0x18(%rbp),%rdx
      ff810637a7:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
      ff810637ab:	44 0f b6 c0          	movzbl %al,%r8d
      ff810637af:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
      ff810637b4:	d0 e9                	shr    %cl
      ff810637b6:	83 e1 01             	and    $0x1,%ecx
      ff810637b9:	e8 42 08 00 00       	callq  ffffffff81064000 <relocate_kernel>
      ff810637be:	48 89 45 18          	mov    %rax,0x18(%rbp)
      ff810637c2:	f6 85 78 02 00 00 02 	testb  $0x2,0x278(%rbp)
      ff810637c9:	75 2a                	jne    ffffffff810637f5 <machine_kexec+0x205>
      ff810637cb:	44 89 25 36 ec 4f 01 	mov    %r12d,0x14fec36(%rip)        # ffffffff82562408 <ftrace_enabled>
      ff810637d2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
      ff810637d7:	65 48 33 04 25 28 00 	xor    %gs:0x28,%rax
      ff810637de:	00 00 
      ff810637e0:	75 41                	jne    ffffffff81063823 <machine_kexec+0x233>
      ff810637e2:	48 83 c4 38          	add    $0x38,%rsp
      ff810637e6:	5b                   	pop    %rbx
      ff810637e7:	5d                   	pop    %rbp
      ff810637e8:	41 5c                	pop    %r12
      ff810637ea:	c3                   	retq   
      ff810637eb:	e8 90 b3 7b 00       	callq  ffffffff8181eb80 <save_processor_state>
      ff810637f0:	e9 28 fe ff ff       	jmpq   ffffffff8106361d <machine_kexec+0x2d>
      ff810637f5:	e8 16 b5 7b 00       	callq  ffffffff8181ed10 <restore_processor_state>
      ff810637fa:	eb cf                	jmp    ffffffff810637cb <machine_kexec+0x1db>
      ff810637fc:	e8 cf ae ff ff       	callq  ffffffff8105e6d0 <clear_IO_APIC>
      ff81063801:	e8 6a b2 ff ff       	callq  ffffffff8105ea70 <restore_boot_irq_mode>
      ff81063806:	e9 82 fe ff ff       	jmpq   ffffffff8106368d <machine_kexec+0x9d>
      ff8106380b:	48 8b 0d fe f7 3a 01 	mov    0x13af7fe(%rip),%rcx        # ffffffff82413010 <phys_base>
      ff81063812:	e9 f8 fe ff ff       	jmpq   ffffffff8106370f <machine_kexec+0x11f>
      ff81063817:	48 8b 0d f2 f7 3a 01 	mov    0x13af7f2(%rip),%rcx        # ffffffff82413010 <phys_base>
      ff8106381e:	e9 23 ff ff ff       	jmpq   ffffffff81063746 <machine_kexec+0x156>
      ff81063823:	e8 f8 a7 07 00       	callq  ffffffff810de020 <__stack_chk_fail>
      ff81063828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
      ff8106382f:	00 
      
      ff81063830 <arch_crash_save_vmcoreinfo>:
      ff81063830:	e8 6b e1 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063835:	41 54                	push   %r12
```

```console
[johnsa1@gza linux-combined]$ gdb vmlinux
GNU gdb (GDB) Fedora 8.3-6.fc30
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from vmlinux...
(gdb) target remote :1234
Remote debugging using :1234
0x000000000000fff0 in entry_stack_storage ()
(gdb) c
Continuing.
^C
Program received signal SIGINT, Interrupt.
0xffffffff815a6b42 in acpi_ps_get_arguments (op=<optimized out>, aml_op_start=<optimized out>,
    walk_state=<optimized out>) at drivers/acpi/acpica/psloop.c:113
113                             status =
(gdb) b *relo
reload_early_microcode  reload_ucode_amd.cold   relocate_restore_code
reload_store            reload_ucode_intel      relocated_ramdisk
reload_store.cold       relocate_kernel         relocated_restore_code
reload_ucode_amd        relocate_kernel_64.S
(gdb) b *relocate_kernel
Breakpoint 1 at 0xffffffff81065000: file arch/x86/kernel/relocate_kernel_64.S, line 52.
(gdb) c
Continuing.

Breakpoint 1, relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:52
52              pushq %rbx
(gdb) display/i $pc
1: x/i $pc
=> 0xffffffff81065000 <relocate_kernel>:        push   %rbx
(gdb) si
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:53
53              pushq %rbp
1: x/i $pc
=> 0xffffffff81065001 <relocate_kernel+1>:      push   %rbp
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:54
54              pushq %r12
1: x/i $pc
=> 0xffffffff81065002 <relocate_kernel+2>:      push   %r12
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:55
55              pushq %r13
1: x/i $pc
=> 0xffffffff81065004 <relocate_kernel+4>:      push   %r13
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:56
56              pushq %r14
1: x/i $pc
=> 0xffffffff81065006 <relocate_kernel+6>:      push   %r14
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:57
57              pushq %r15
1: x/i $pc
=> 0xffffffff81065008 <relocate_kernel+8>:      push   %r15
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:58
58              pushf
1: x/i $pc
=> 0xffffffff8106500a <relocate_kernel+10>:     pushfq
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:60
60              movq    PTR(VA_CONTROL_PAGE)(%rsi), %r11
1: x/i $pc
=> 0xffffffff8106500b <relocate_kernel+11>:     mov    0x8(%rsi),%r11
(gdb)
61              movq    %rsp, RSP(%r11)
1: x/i $pc
=> 0xffffffff8106500f <relocate_kernel+15>:     mov    %rsp,0x800(%r11)
(gdb)
62              movq    %cr0, %rax
1: x/i $pc
=> 0xffffffff81065016 <relocate_kernel+22>:     mov    %cr0,%rax
(gdb)
63              movq    %rax, CR0(%r11)
1: x/i $pc
=> 0xffffffff81065019 <relocate_kernel+25>:     mov    %rax,0x808(%r11)
(gdb)
64              movq    %cr3, %rax
1: x/i $pc
=> 0xffffffff81065020 <relocate_kernel+32>:     mov    %cr3,%rax
(gdb)
65              movq    %rax, CR3(%r11)
1: x/i $pc
=> 0xffffffff81065023 <relocate_kernel+35>:     mov    %rax,0x810(%r11)
(gdb)
66              movq    %cr4, %rax
1: x/i $pc
=> 0xffffffff8106502a <relocate_kernel+42>:     mov    %cr4,%rax
(gdb)
67              movq    %rax, CR4(%r11)
1: x/i $pc
=> 0xffffffff8106502d <relocate_kernel+45>:     mov    %rax,0x818(%r11)
(gdb)
70              movq    %rax, %r13
1: x/i $pc
=> 0xffffffff81065034 <relocate_kernel+52>:     mov    %rax,%r13
(gdb)
73              pushq $0
1: x/i $pc
=> 0xffffffff81065037 <relocate_kernel+55>:     pushq  $0x0
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:74
74              popfq
1: x/i $pc
=> 0xffffffff81065039 <relocate_kernel+57>:     popfq
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:77
77              movq    %r8, %r12
1: x/i $pc
=> 0xffffffff8106503a <relocate_kernel+58>:     mov    %r8,%r12
(gdb)
83              movq    PTR(PA_CONTROL_PAGE)(%rsi), %r8
1: x/i $pc
=> 0xffffffff8106503d <relocate_kernel+61>:     mov    (%rsi),%r8
(gdb)
86              movq    PTR(PA_TABLE_PAGE)(%rsi), %r9
1: x/i $pc
=> 0xffffffff81065040 <relocate_kernel+64>:     mov    0x10(%rsi),%r9
(gdb)
89              movq    PTR(PA_SWAP_PAGE)(%rsi), %r10
1: x/i $pc
=> 0xffffffff81065044 <relocate_kernel+68>:     mov    0x18(%rsi),%r10
(gdb)
92              movq    %r9, CP_PA_TABLE_PAGE(%r11)
1: x/i $pc
=> 0xffffffff81065048 <relocate_kernel+72>:     mov    %r9,0x820(%r11)
(gdb)
93              movq    %r10, CP_PA_SWAP_PAGE(%r11)
1: x/i $pc
=> 0xffffffff8106504f <relocate_kernel+79>:     mov    %r10,0x828(%r11)
(gdb)
94              movq    %rdi, CP_PA_BACKUP_PAGES_MAP(%r11)
1: x/i $pc
=> 0xffffffff81065056 <relocate_kernel+86>:     mov    %rdi,0x830(%r11)
(gdb)
97              movq    %r9, %cr3
1: x/i $pc
=> 0xffffffff8106505d <relocate_kernel+93>:     mov    %r9,%cr3
(gdb)
100             lea     PAGE_SIZE(%r8), %rsp
1: x/i $pc
=> 0xffffffff81065061 <relocate_kernel+97>:     lea    0x1000(%r8),%rsp
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:103
103             addq    $(identity_mapped - relocate_kernel), %r8
1: x/i $pc
=> 0xffffffff81065068 <relocate_kernel+104>:    add    $0x72,%r8
(gdb)
104             pushq   %r8
1: x/i $pc
=> 0xffffffff8106506f <relocate_kernel+111>:    push   %r8
(gdb)
relocate_kernel () at arch/x86/kernel/relocate_kernel_64.S:105
105             ret
1: x/i $pc
=> 0xffffffff81065071 <relocate_kernel+113>:    retq
(gdb)
0x000000007c21d072 in ?? ()
1: x/i $pc
=> 0x7c21d072:  pushq  $0x0
(gdb)
0x000000007c21d074 in ?? ()
1: x/i $pc
=> 0x7c21d074:  push   %rdx
(gdb)
0x000000007c21d075 in ?? ()
1: x/i $pc
=> 0x7c21d075:  mov    %cr0,%rax
(gdb)
0x000000007c21d078 in ?? ()
1: x/i $pc
=> 0x7c21d078:  and    $0xfffffffffffbfff3,%rax
(gdb)
0x000000007c21d07e in ?? ()
1: x/i $pc
=> 0x7c21d07e:  or     $0x80010001,%eax
(gdb)
0x000000007c21d083 in ?? ()
1: x/i $pc
=> 0x7c21d083:  mov    %rax,%cr0
(gdb)
0x000000007c21d086 in ?? ()
1: x/i $pc
=> 0x7c21d086:  mov    $0x300820,%eax
(gdb)
0x000000007c21d08b in ?? ()
1: x/i $pc
=> 0x7c21d08b:  test   $0x1000,%r13
(gdb)
0x000000007c21d092 in ?? ()
1: x/i $pc
=> 0x7c21d092:  je     0x7c21d099
(gdb)
0x000000007c21d099 in ?? ()
1: x/i $pc
=> 0x7c21d099:  mov    %rax,%cr4
(gdb)
0x000000007c21d09c in ?? ()
1: x/i $pc
=> 0x7c21d09c:  jmp    0x7c21d09e
(gdb)
0x000000007c21d09e in ?? ()
1: x/i $pc
=> 0x7c21d09e:  mov    %r9,%cr3
(gdb)
0x000000007c21d0a2 in ?? ()
1: x/i $pc
=> 0x7c21d0a2:  test   %r12,%r12
(gdb)
0x000000007c21d0a5 in ?? ()
1: x/i $pc
=> 0x7c21d0a5:  je     0x7c21d0a9
(gdb)
0x000000007c21d0a9 in ?? ()
1: x/i $pc
=> 0x7c21d0a9:  mov    %rcx,%r11
(gdb)
0x000000007c21d0ac in ?? ()
1: x/i $pc
=> 0x7c21d0ac:  callq  0x7c21d161
(gdb)
0x000000007c21d161 in ?? ()
1: x/i $pc
=> 0x7c21d161:  mov    %rdi,%rcx
(gdb)
0x000000007c21d164 in ?? ()
1: x/i $pc
=> 0x7c21d164:  xor    %edi,%edi
(gdb) display/10i $pc
2: x/10i $pc
=> 0x7c21d164:  xor    %edi,%edi
   0x7c21d166:  xor    %esi,%esi
   0x7c21d168:  jmp    0x7c21d171
   0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
(gdb) ci
Undefined command: "ci".  Try "help".
(gdb) si
0x000000007c21d166 in ?? ()
1: x/i $pc
=> 0x7c21d166:  xor    %esi,%esi
2: x/10i $pc
=> 0x7c21d166:  xor    %esi,%esi
   0x7c21d168:  jmp    0x7c21d171
   0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
(gdb)
0x000000007c21d168 in ?? ()
1: x/i $pc
=> 0x7c21d168:  jmp    0x7c21d171
2: x/10i $pc
=> 0x7c21d168:  jmp    0x7c21d171
   0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
(gdb)
0x000000007c21d171 in ?? ()
1: x/i $pc
=> 0x7c21d171:  test   $0x1,%cl
2: x/10i $pc
=> 0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
(gdb)
0x000000007c21d174 in ?? ()
1: x/i $pc
=> 0x7c21d174:  je     0x7c21d182
2: x/10i $pc
=> 0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
(gdb)
0x000000007c21d182 in ?? ()
1: x/i $pc
=> 0x7c21d182:  test   $0x2,%cl
2: x/10i $pc
=> 0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
(gdb)
0x000000007c21d185 in ?? ()
1: x/i $pc
=> 0x7c21d185:  je     0x7c21d193
2: x/10i $pc
=> 0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
(gdb)
0x000000007c21d187 in ?? ()
1: x/i $pc
=> 0x7c21d187:  mov    %rcx,%rbx
2: x/10i $pc
=> 0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
(gdb)
0x000000007c21d18a in ?? ()
1: x/i $pc
=> 0x7c21d18a:  and    $0xfffffffffffff000,%rbx
2: x/10i $pc
=> 0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
(gdb)
0x000000007c21d191 in ?? ()
1: x/i $pc
=> 0x7c21d191:  jmp    0x7c21d16a
2: x/10i $pc
=> 0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
(gdb)
0x000000007c21d16a in ?? ()
1: x/i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
2: x/10i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
(gdb)
0x000000007c21d16d in ?? ()
1: x/i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
2: x/10i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
(gdb)
0x000000007c21d171 in ?? ()
1: x/i $pc
=> 0x7c21d171:  test   $0x1,%cl
2: x/10i $pc
=> 0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
(gdb)
0x000000007c21d174 in ?? ()
1: x/i $pc
=> 0x7c21d174:  je     0x7c21d182
2: x/10i $pc
=> 0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
(gdb)
0x000000007c21d176 in ?? ()
1: x/i $pc
=> 0x7c21d176:  mov    %rcx,%rdi
2: x/10i $pc
=> 0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
(gdb)
0x000000007c21d179 in ?? ()
1: x/i $pc
=> 0x7c21d179:  and    $0xfffffffffffff000,%rdi
2: x/10i $pc
=> 0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
(gdb)
0x000000007c21d180 in ?? ()
1: x/i $pc
=> 0x7c21d180:  jmp    0x7c21d16a
2: x/10i $pc
=> 0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
(gdb)
0x000000007c21d16a in ?? ()
1: x/i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
2: x/10i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
(gdb)
0x000000007c21d16d in ?? ()
1: x/i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
2: x/10i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
(gdb)
0x000000007c21d171 in ?? ()
1: x/i $pc
=> 0x7c21d171:  test   $0x1,%cl
2: x/10i $pc
=> 0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
(gdb)
0x000000007c21d174 in ?? ()
1: x/i $pc
=> 0x7c21d174:  je     0x7c21d182
2: x/10i $pc
=> 0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
(gdb)
0x000000007c21d182 in ?? ()
1: x/i $pc
=> 0x7c21d182:  test   $0x2,%cl
2: x/10i $pc
=> 0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
(gdb)
0x000000007c21d185 in ?? ()
1: x/i $pc
=> 0x7c21d185:  je     0x7c21d193
2: x/10i $pc
=> 0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
(gdb)
0x000000007c21d193 in ?? ()
1: x/i $pc
=> 0x7c21d193:  test   $0x4,%cl
2: x/10i $pc
=> 0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
(gdb)
0x000000007c21d196 in ?? ()
1: x/i $pc
=> 0x7c21d196:  je     0x7c21d19a
2: x/10i $pc
=> 0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
(gdb)
0x000000007c21d19a in ?? ()
1: x/i $pc
=> 0x7c21d19a:  test   $0x8,%cl
2: x/10i $pc
=> 0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
(gdb)
0x000000007c21d19d in ?? ()
1: x/i $pc
=> 0x7c21d19d:  je     0x7c21d16a
2: x/10i $pc
=> 0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
(gdb)
0x000000007c21d19f in ?? ()
1: x/i $pc
=> 0x7c21d19f:  mov    %rcx,%rsi
2: x/10i $pc
=> 0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
(gdb)
0x000000007c21d1a2 in ?? ()
1: x/i $pc
=> 0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
2: x/10i $pc
=> 0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
(gdb)
0x000000007c21d1a9 in ?? ()
1: x/i $pc
=> 0x7c21d1a9:  mov    %rdi,%rdx
2: x/10i $pc
=> 0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
(gdb)
0x000000007c21d1ac in ?? ()
1: x/i $pc
=> 0x7c21d1ac:  mov    %rsi,%rax
2: x/10i $pc
=> 0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
   0x7c21d1cb:  mov    %r10,%rsi
(gdb)
0x000000007c21d1af in ?? ()
1: x/i $pc
=> 0x7c21d1af:  mov    %r10,%rdi
2: x/10i $pc
=> 0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
   0x7c21d1cb:  mov    %r10,%rsi
   0x7c21d1ce:  mov    $0x200,%ecx
(gdb) b *0x7c21d1ce
Breakpoint 2 at 0x7c21d1ce
(gdb) c
Continuing.

Breakpoint 2, 0x000000007c21d1ce in ?? ()
1: x/i $pc
=> 0x7c21d1ce:  mov    $0x200,%ecx
2: x/10i $pc
=> 0x7c21d1ce:  mov    $0x200,%ecx
   0x7c21d1d3:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1d6:  lea    0x1000(%rax),%rsi
   0x7c21d1dd:  jmp    0x7c21d16a
   0x7c21d1df:  retq
   0x7c21d1e0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1e5:  addl   $0x1,(%rsi)
   0x7c21d1e8:  xor    %eax,%eax
   0x7c21d1ea:  retq
   0x7c21d1eb:  nopl   0x0(%rax,%rax,1)
(gdb) b *0x7c21d1d6
Breakpoint 3 at 0x7c21d1d6
(gdb) c
Continuing.

Breakpoint 3, 0x000000007c21d1d6 in ?? ()
1: x/i $pc
=> 0x7c21d1d6:  lea    0x1000(%rax),%rsi
2: x/10i $pc
=> 0x7c21d1d6:  lea    0x1000(%rax),%rsi
   0x7c21d1dd:  jmp    0x7c21d16a
   0x7c21d1df:  retq
   0x7c21d1e0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1e5:  addl   $0x1,(%rsi)
   0x7c21d1e8:  xor    %eax,%eax
   0x7c21d1ea:  retq
   0x7c21d1eb:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f5:  mov    0x4(%rsi),%eax
(gdb) d
Delete all breakpoints? (y or n) y
(gdb) si
0x000000007c21d1dd in ?? ()
1: x/i $pc
=> 0x7c21d1dd:  jmp    0x7c21d16a
2: x/10i $pc
=> 0x7c21d1dd:  jmp    0x7c21d16a
   0x7c21d1df:  retq
   0x7c21d1e0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1e5:  addl   $0x1,(%rsi)
   0x7c21d1e8:  xor    %eax,%eax
   0x7c21d1ea:  retq
   0x7c21d1eb:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f5:  mov    0x4(%rsi),%eax
   0x7c21d1f8:  mov    (%rdi),%rcx
(gdb)
0x000000007c21d16a in ?? ()
1: x/i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
2: x/10i $pc
=> 0x7c21d16a:  mov    (%rbx),%rcx
   0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
(gdb)
0x000000007c21d16d in ?? ()
1: x/i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
2: x/10i $pc
=> 0x7c21d16d:  add    $0x8,%rbx
   0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
(gdb)
0x000000007c21d171 in ?? ()
1: x/i $pc
=> 0x7c21d171:  test   $0x1,%cl
2: x/10i $pc
=> 0x7c21d171:  test   $0x1,%cl
   0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
(gdb)
0x000000007c21d174 in ?? ()
1: x/i $pc
=> 0x7c21d174:  je     0x7c21d182
2: x/10i $pc
=> 0x7c21d174:  je     0x7c21d182
   0x7c21d176:  mov    %rcx,%rdi
   0x7c21d179:  and    $0xfffffffffffff000,%rdi
   0x7c21d180:  jmp    0x7c21d16a
   0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
(gdb)
0x000000007c21d182 in ?? ()
1: x/i $pc
=> 0x7c21d182:  test   $0x2,%cl
2: x/10i $pc
=> 0x7c21d182:  test   $0x2,%cl
   0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
(gdb)
0x000000007c21d185 in ?? ()
1: x/i $pc
=> 0x7c21d185:  je     0x7c21d193
2: x/10i $pc
=> 0x7c21d185:  je     0x7c21d193
   0x7c21d187:  mov    %rcx,%rbx
   0x7c21d18a:  and    $0xfffffffffffff000,%rbx
   0x7c21d191:  jmp    0x7c21d16a
   0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
(gdb)
0x000000007c21d193 in ?? ()
1: x/i $pc
=> 0x7c21d193:  test   $0x4,%cl
2: x/10i $pc
=> 0x7c21d193:  test   $0x4,%cl
   0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
(gdb)
0x000000007c21d196 in ?? ()
1: x/i $pc
=> 0x7c21d196:  je     0x7c21d19a
2: x/10i $pc
=> 0x7c21d196:  je     0x7c21d19a
   0x7c21d198:  jmp    0x7c21d1df
   0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
(gdb)
0x000000007c21d19a in ?? ()
1: x/i $pc
=> 0x7c21d19a:  test   $0x8,%cl
2: x/10i $pc
=> 0x7c21d19a:  test   $0x8,%cl
   0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
(gdb)
0x000000007c21d19d in ?? ()
1: x/i $pc
=> 0x7c21d19d:  je     0x7c21d16a
2: x/10i $pc
=> 0x7c21d19d:  je     0x7c21d16a
   0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
(gdb)
0x000000007c21d19f in ?? ()
1: x/i $pc
=> 0x7c21d19f:  mov    %rcx,%rsi
2: x/10i $pc
=> 0x7c21d19f:  mov    %rcx,%rsi
   0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
(gdb)
0x000000007c21d1a2 in ?? ()
1: x/i $pc
=> 0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
2: x/10i $pc
=> 0x7c21d1a2:  and    $0xfffffffffffff000,%rsi
   0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
(gdb)
0x000000007c21d1a9 in ?? ()
1: x/i $pc
=> 0x7c21d1a9:  mov    %rdi,%rdx
2: x/10i $pc
=> 0x7c21d1a9:  mov    %rdi,%rdx
   0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
(gdb)
0x000000007c21d1ac in ?? ()
1: x/i $pc
=> 0x7c21d1ac:  mov    %rsi,%rax
2: x/10i $pc
=> 0x7c21d1ac:  mov    %rsi,%rax
   0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
   0x7c21d1cb:  mov    %r10,%rsi
(gdb)
0x000000007c21d1af in ?? ()
1: x/i $pc
=> 0x7c21d1af:  mov    %r10,%rdi
2: x/10i $pc
=> 0x7c21d1af:  mov    %r10,%rdi
   0x7c21d1b2:  mov    $0x200,%ecx
   0x7c21d1b7:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1ba:  mov    %rax,%rdi
   0x7c21d1bd:  mov    %rdx,%rsi
   0x7c21d1c0:  mov    $0x200,%ecx
   0x7c21d1c5:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1c8:  mov    %rdx,%rdi
   0x7c21d1cb:  mov    %r10,%rsi
   0x7c21d1ce:  mov    $0x200,%ecx
(gdb) b *0x7c21d1ce
Breakpoint 4 at 0x7c21d1ce
(gdb) c
Continuing.

Breakpoint 4, 0x000000007c21d1ce in ?? ()
1: x/i $pc
=> 0x7c21d1ce:  mov    $0x200,%ecx
2: x/10i $pc
=> 0x7c21d1ce:  mov    $0x200,%ecx
   0x7c21d1d3:  rep movsq %ds:(%rsi),%es:(%rdi)
   0x7c21d1d6:  lea    0x1000(%rax),%rsi
   0x7c21d1dd:  jmp    0x7c21d16a
   0x7c21d1df:  retq
   0x7c21d1e0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1e5:  addl   $0x1,(%rsi)
   0x7c21d1e8:  xor    %eax,%eax
   0x7c21d1ea:  retq
   0x7c21d1eb:  nopl   0x0(%rax,%rax,1)
(gdb) d
Delete all breakpoints? (y or n) y
(gdb) b *0x7c21d1df
Breakpoint 5 at 0x7c21d1df
(gdb) c
Continuing.

Breakpoint 5, 0x000000007c21d1df in ?? ()
1: x/i $pc
=> 0x7c21d1df:  retq
2: x/10i $pc
=> 0x7c21d1df:  retq
   0x7c21d1e0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1e5:  addl   $0x1,(%rsi)
   0x7c21d1e8:  xor    %eax,%eax
   0x7c21d1ea:  retq
   0x7c21d1eb:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f0:  nopl   0x0(%rax,%rax,1)
   0x7c21d1f5:  mov    0x4(%rsi),%eax
   0x7c21d1f8:  mov    (%rdi),%rcx
   0x7c21d1fb:  mov    %rax,%rdx
(gdb) si
0x000000007c21d0b1 in ?? ()
1: x/i $pc
=> 0x7c21d0b1:  mov    %cr3,%rax
2: x/10i $pc
=> 0x7c21d0b1:  mov    %cr3,%rax
   0x7c21d0b4:  mov    %rax,%cr3
   0x7c21d0b7:  test   %r11,%r11
   0x7c21d0ba:  jne    0x7c21d0e3
   0x7c21d0bc:  xor    %eax,%eax
   0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
(gdb) d
Delete all breakpoints? (y or n) y
(gdb) si
0x000000007c21d0b4 in ?? ()
1: x/i $pc
=> 0x7c21d0b4:  mov    %rax,%cr3
2: x/10i $pc
=> 0x7c21d0b4:  mov    %rax,%cr3
   0x7c21d0b7:  test   %r11,%r11
   0x7c21d0ba:  jne    0x7c21d0e3
   0x7c21d0bc:  xor    %eax,%eax
   0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
(gdb)
0x000000007c21d0b7 in ?? ()
1: x/i $pc
=> 0x7c21d0b7:  test   %r11,%r11
2: x/10i $pc
=> 0x7c21d0b7:  test   %r11,%r11
   0x7c21d0ba:  jne    0x7c21d0e3
   0x7c21d0bc:  xor    %eax,%eax
   0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
(gdb)
0x000000007c21d0ba in ?? ()
1: x/i $pc
=> 0x7c21d0ba:  jne    0x7c21d0e3
2: x/10i $pc
=> 0x7c21d0ba:  jne    0x7c21d0e3
   0x7c21d0bc:  xor    %eax,%eax
   0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
(gdb)
0x000000007c21d0bc in ?? ()
1: x/i $pc
=> 0x7c21d0bc:  xor    %eax,%eax
2: x/10i $pc
=> 0x7c21d0bc:  xor    %eax,%eax
   0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
(gdb)
0x000000007c21d0be in ?? ()
1: x/i $pc
=> 0x7c21d0be:  xor    %ebx,%ebx
2: x/10i $pc
=> 0x7c21d0be:  xor    %ebx,%ebx
   0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
(gdb)
0x000000007c21d0c0 in ?? ()
1: x/i $pc
=> 0x7c21d0c0:  xor    %ecx,%ecx
2: x/10i $pc
=> 0x7c21d0c0:  xor    %ecx,%ecx
   0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
(gdb)
0x000000007c21d0c2 in ?? ()
1: x/i $pc
=> 0x7c21d0c2:  xor    %edx,%edx
2: x/10i $pc
=> 0x7c21d0c2:  xor    %edx,%edx
   0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
(gdb)
0x000000007c21d0c4 in ?? ()
1: x/i $pc
=> 0x7c21d0c4:  xor    %esi,%esi
2: x/10i $pc
=> 0x7c21d0c4:  xor    %esi,%esi
   0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
(gdb)
0x000000007c21d0c6 in ?? ()
1: x/i $pc
=> 0x7c21d0c6:  xor    %edi,%edi
2: x/10i $pc
=> 0x7c21d0c6:  xor    %edi,%edi
   0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
(gdb)
0x000000007c21d0c8 in ?? ()
1: x/i $pc
=> 0x7c21d0c8:  xor    %ebp,%ebp
2: x/10i $pc
=> 0x7c21d0c8:  xor    %ebp,%ebp
   0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
(gdb)
0x000000007c21d0ca in ?? ()
1: x/i $pc
=> 0x7c21d0ca:  xor    %r8d,%r8d
2: x/10i $pc
=> 0x7c21d0ca:  xor    %r8d,%r8d
   0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
(gdb)
0x000000007c21d0cd in ?? ()
1: x/i $pc
=> 0x7c21d0cd:  xor    %r9d,%r9d
2: x/10i $pc
=> 0x7c21d0cd:  xor    %r9d,%r9d
   0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
(gdb)
0x000000007c21d0d0 in ?? ()
1: x/i $pc
=> 0x7c21d0d0:  xor    %r10d,%r10d
2: x/10i $pc
=> 0x7c21d0d0:  xor    %r10d,%r10d
   0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
(gdb)
0x000000007c21d0d3 in ?? ()
1: x/i $pc
=> 0x7c21d0d3:  xor    %r11d,%r11d
2: x/10i $pc
=> 0x7c21d0d3:  xor    %r11d,%r11d
   0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
(gdb)
0x000000007c21d0d6 in ?? ()
1: x/i $pc
=> 0x7c21d0d6:  xor    %r12d,%r12d
2: x/10i $pc
=> 0x7c21d0d6:  xor    %r12d,%r12d
   0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
   0x7c21d0f1:  callq  0x7c21d0f6
(gdb)
0x000000007c21d0d9 in ?? ()
1: x/i $pc
=> 0x7c21d0d9:  xor    %r13d,%r13d
2: x/10i $pc
=> 0x7c21d0d9:  xor    %r13d,%r13d
   0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
   0x7c21d0f1:  callq  0x7c21d0f6
   0x7c21d0f6:  pop    %r8
(gdb)
0x000000007c21d0dc in ?? ()
1: x/i $pc
=> 0x7c21d0dc:  xor    %r14d,%r14d
2: x/10i $pc
=> 0x7c21d0dc:  xor    %r14d,%r14d
   0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
   0x7c21d0f1:  callq  0x7c21d0f6
   0x7c21d0f6:  pop    %r8
   0x7c21d0f8:  sub    $0xf6,%r8
(gdb)
0x000000007c21d0df in ?? ()
1: x/i $pc
=> 0x7c21d0df:  xor    %r15d,%r15d
2: x/10i $pc
=> 0x7c21d0df:  xor    %r15d,%r15d
   0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
   0x7c21d0f1:  callq  0x7c21d0f6
   0x7c21d0f6:  pop    %r8
   0x7c21d0f8:  sub    $0xf6,%r8
   0x7c21d0ff:  mov    0x828(%r8),%r10
(gdb)
0x000000007c21d0e2 in ?? ()
1: x/i $pc
=> 0x7c21d0e2:  retq
2: x/10i $pc
=> 0x7c21d0e2:  retq
   0x7c21d0e3:  pop    %rdx
   0x7c21d0e4:  lea    0x1000(%r10),%rsp
   0x7c21d0eb:  callq  *%rdx
   0x7c21d0ed:  mov    (%rsp),%rbp
   0x7c21d0f1:  callq  0x7c21d0f6
   0x7c21d0f6:  pop    %r8
   0x7c21d0f8:  sub    $0xf6,%r8
   0x7c21d0ff:  mov    0x828(%r8),%r10
   0x7c21d106:  mov    0x830(%r8),%rdi
(gdb)
0x0000000000001740 in cpu_debug_store ()
1: x/i $pc
=> 0x1740 <cpu_debug_store+1856>:
    lgdt   0x3789(%rip)        # 0x4ed0 <irq_stack_backing_store+11984>
2: x/10i $pc
=> 0x1740 <cpu_debug_store+1856>:
    lgdt   0x3789(%rip)        # 0x4ed0 <irq_stack_backing_store+11984>
   0x1747 <cpu_debug_store+1863>:       mov    $0x18,%eax
   0x174c <cpu_debug_store+1868>:       mov    %eax,%ds
   0x174e <cpu_debug_store+1870>:       mov    %eax,%es
   0x1750 <cpu_debug_store+1872>:       mov    %eax,%ss
   0x1752 <cpu_debug_store+1874>:       mov    %eax,%fs
   0x1754 <cpu_debug_store+1876>:       mov    %eax,%gs
   0x1756 <cpu_debug_store+1878>:       mov    (%rsp),%rax
   0x175a <cpu_debug_store+1882>:
    mov    %rax,0x68a7(%rip)        # 0x8008 <cpu_tss_rw+8200>
   0x1761 <cpu_debug_store+1889>:
    lea    0x8898(%rip),%rsp        # 0xa000 <exception_stacks>
(gdb) si
(gdb)
```
