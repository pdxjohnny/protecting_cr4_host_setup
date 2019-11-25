# Paravirtualization Based CR Pinning

```console
git send-email --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~2
```

See https://gist.github.com/pdxjohnny/aed9d495e606a816f4dfa51db6c2ebd4 for kernel hacking notes

Currently shit is hitting the fan at the `lidt` instruction (triggering SMAP and SMEP to be turned off).

```asm
      ff81062c57:	48 c7 c2 45 1a a0 81 	mov    $0xffffffff81a01a45,%rdx
      ff81062c5e:	48 c7 c7 40 1a a0 81 	mov    $0xffffffff81a01a40,%rdi
      ff81062c65:	48 c7 05 c0 7a b4 01 	movq   $0x0,0x1b47ac0(%rip)        # ffffffff82baa730 <ftrace_update_func_call>
      ff81062c6c:	00 00 00 00 
      ff81062c70:	29 d0                	sub    %edx,%eax
      ff81062c72:	c6 05 af 7a b4 01 e9 	movb   $0xe9,0x1b47aaf(%rip)        # ffffffff82baa728 <calc.44817>
      ff81062c79:	89 05 aa 7a b4 01    	mov    %eax,0x1b47aaa(%rip)        # ffffffff82baa729 <calc.44817+0x1>
      ff81062c7f:	e9 4c f7 ff ff       	jmpq   ffffffff810623d0 <update_ftrace_func.constprop.0>
      
      ff81062c84 <addr_from_call.cold>:
      ff81062c84:	0f 0b                	ud2    
      ff81062c86:	48 c7 c7 90 65 10 82 	mov    $0xffffffff82106590,%rdi
      ff81062c8d:	0f b6 f0             	movzbl %al,%esi
      ff81062c90:	e8 29 1e 0e 00       	callq  ffffffff81144abe <printk>
      ff81062c95:	31 c0                	xor    %eax,%eax
      ff81062c97:	e9 79 f3 ff ff       	jmpq   ffffffff81062015 <addr_from_call+0x45>
      
      ff81062c9c <ftrace_modify_call>:
      ff81062c9c:	48 c7 c7 b8 4a 0f 82 	mov    $0xffffffff820f4ab8,%rdi
      ff81062ca3:	e8 16 1e 0e 00       	callq  ffffffff81144abe <printk>
      ff81062ca8:	0f 0b                	ud2    
      ff81062caa:	48 c7 05 b3 b6 bb 01 	movq   $0x0,0x1bbb6b3(%rip)        # ffffffff82c1e368 <ftrace_expected>
      ff81062cb1:	00 00 00 00 
      ff81062cb5:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
      ff81062cba:	c3                   	retq   
      
      ff81062cbb <ftrace_replace_code.cold>:
      ff81062cbb:	48 c7 c6 59 65 10 82 	mov    $0xffffffff82106559,%rsi
      ff81062cc2:	44 89 ea             	mov    %r13d,%edx
      ff81062cc5:	48 c7 c7 6e 65 10 82 	mov    $0xffffffff8210656e,%rdi
      ff81062ccc:	e8 ed 1d 0e 00       	callq  ffffffff81144abe <printk>
      ff81062cd1:	48 89 ee             	mov    %rbp,%rsi
      ff81062cd4:	44 89 e7             	mov    %r12d,%edi
      ff81062cd7:	e8 b4 4b 15 00       	callq  ffffffff811b7890 <ftrace_bug>
      ff81062cdc:	e8 8f 51 15 00       	callq  ffffffff811b7e70 <ftrace_rec_iter_start>
      ff81062ce1:	48 89 c5             	mov    %rax,%rbp
      ff81062ce4:	48 85 ed             	test   %rbp,%rbp
      ff81062ce7:	74 39                	je     ffffffff81062d22 <ftrace_replace_code.cold+0x67>
      ff81062ce9:	48 89 ef             	mov    %rbp,%rdi
      ff81062cec:	e8 0f 52 15 00       	callq  ffffffff811b7f00 <ftrace_rec_iter_record>
      ff81062cf1:	ba 05 00 00 00       	mov    $0x5,%edx
      ff81062cf6:	4c 8b 28             	mov    (%rax),%r13
      ff81062cf9:	48 8d 7c 24 03       	lea    0x3(%rsp),%rdi
      ff81062cfe:	49 89 c4             	mov    %rax,%r12
      ff81062d01:	4c 89 ee             	mov    %r13,%rsi
      ff81062d04:	e8 47 10 1e 00       	callq  ffffffff81243d50 <__probe_kernel_read>
      ff81062d09:	48 85 c0             	test   %rax,%rax
      ff81062d0c:	74 19                	je     ffffffff81062d27 <ftrace_replace_code.cold+0x6c>
      ff81062d0e:	0f 0b                	ud2    
      ff81062d10:	48 c7 c6 38 65 10 82 	mov    $0xffffffff82106538,%rsi
      ff81062d17:	eb a9                	jmp    ffffffff81062cc2 <ftrace_replace_code.cold+0x7>
      ff81062d19:	48 c7 c6 46 65 10 82 	mov    $0xffffffff82106546,%rsi
      ff81062d20:	eb a0                	jmp    ffffffff81062cc2 <ftrace_replace_code.cold+0x7>
      ff81062d22:	e9 3e fb ff ff       	jmpq   ffffffff81062865 <ftrace_replace_code+0x255>
      ff81062d27:	80 7c 24 03 cc       	cmpb   $0xcc,0x3(%rsp)
      ff81062d2c:	74 0d                	je     ffffffff81062d3b <ftrace_replace_code.cold+0x80>
      ff81062d2e:	48 89 ef             	mov    %rbp,%rdi
      ff81062d31:	e8 7a 51 15 00       	callq  ffffffff811b7eb0 <ftrace_rec_iter_next>
      ff81062d36:	48 89 c5             	mov    %rax,%rbp
      ff81062d39:	eb a9                	jmp    ffffffff81062ce4 <ftrace_replace_code.cold+0x29>
      ff81062d3b:	48 8b 05 8e 0d 3c 01 	mov    0x13c0d8e(%rip),%rax        # ffffffff82423ad0 <ideal_nops>
      ff81062d42:	48 8b 70 48          	mov    0x48(%rax),%rsi
      ff81062d46:	8b 46 01             	mov    0x1(%rsi),%eax
      ff81062d49:	39 44 24 04          	cmp    %eax,0x4(%rsp)
      ff81062d4d:	74 28                	je     ffffffff81062d77 <ftrace_replace_code.cold+0xbc>
      ff81062d4f:	4c 89 e7             	mov    %r12,%rdi
      ff81062d52:	49 8d 5d 05          	lea    0x5(%r13),%rbx
      ff81062d56:	e8 15 50 15 00       	callq  ffffffff811b7d70 <ftrace_get_addr_new>
      ff81062d5b:	c6 05 c6 79 b4 01 e8 	movb   $0xe8,0x1b479c6(%rip)        # ffffffff82baa728 <calc.44817>
      ff81062d62:	29 d8                	sub    %ebx,%eax
      ff81062d64:	89 05 bf 79 b4 01    	mov    %eax,0x1b479bf(%rip)        # ffffffff82baa729 <calc.44817+0x1>
      ff81062d6a:	3b 44 24 04          	cmp    0x4(%rsp),%eax
      ff81062d6e:	75 1a                	jne    ffffffff81062d8a <ftrace_replace_code.cold+0xcf>
      ff81062d70:	48 c7 c6 28 a7 ba 82 	mov    $0xffffffff82baa728,%rsi
      ff81062d77:	ba 01 00 00 00       	mov    $0x1,%edx
      ff81062d7c:	4c 89 ef             	mov    %r13,%rdi
      ff81062d7f:	e8 7c f5 ff ff       	callq  ffffffff81062300 <ftrace_write>
      ff81062d84:	85 c0                	test   %eax,%eax
      ff81062d86:	75 86                	jne    ffffffff81062d0e <ftrace_replace_code.cold+0x53>
      ff81062d88:	eb a4                	jmp    ffffffff81062d2e <ftrace_replace_code.cold+0x73>
      ff81062d8a:	4c 89 e7             	mov    %r12,%rdi
      ff81062d8d:	e8 0e 50 15 00       	callq  ffffffff811b7da0 <ftrace_get_addr_curr>
      ff81062d92:	c6 05 8f 79 b4 01 e8 	movb   $0xe8,0x1b4798f(%rip)        # ffffffff82baa728 <calc.44817>
      ff81062d99:	48 c7 05 c4 b5 bb 01 	movq   $0xffffffff82baa728,0x1bbb5c4(%rip)        # ffffffff82c1e368 <ftrace_expected>
      ff81062da0:	28 a7 ba 82 
      ff81062da4:	29 d8                	sub    %ebx,%eax
      ff81062da6:	89 05 7d 79 b4 01    	mov    %eax,0x1b4797d(%rip)        # ffffffff82baa729 <calc.44817+0x1>
      ff81062dac:	39 44 24 04          	cmp    %eax,0x4(%rsp)
      ff81062db0:	0f 85 58 ff ff ff    	jne    ffffffff81062d0e <ftrace_replace_code.cold+0x53>
      ff81062db6:	eb b8                	jmp    ffffffff81062d70 <ftrace_replace_code.cold+0xb5>
      
      ff81062db8 <arch_ftrace_update_trampoline.cold>:
      ff81062db8:	48 c7 c7 b8 4a 0f 82 	mov    $0xffffffff820f4ab8,%rdi
      ff81062dbf:	e8 fa 1c 0e 00       	callq  ffffffff81144abe <printk>
      ff81062dc4:	0f 0b                	ud2    
      ff81062dc6:	e9 1f fb ff ff       	jmpq   ffffffff810628ea <arch_ftrace_update_trampoline+0x3a>
      ff81062dcb:	48 c7 c7 b8 4a 0f 82 	mov    $0xffffffff820f4ab8,%rdi
      ff81062dd2:	e8 e7 1c 0e 00       	callq  ffffffff81144abe <printk>
      ff81062dd7:	0f 0b                	ud2    
      ff81062dd9:	e9 ad fc ff ff       	jmpq   ffffffff81062a8b <arch_ftrace_update_trampoline+0x1db>
      ff81062dde:	48 c7 c7 b8 4a 0f 82 	mov    $0xffffffff820f4ab8,%rdi
      ff81062de5:	e8 d4 1c 0e 00       	callq  ffffffff81144abe <printk>
      ff81062dea:	0f 0b                	ud2    
      ff81062dec:	e9 9a fc ff ff       	jmpq   ffffffff81062a8b <arch_ftrace_update_trampoline+0x1db>
      ff81062df1:	90                   	nop
      ff81062df2:	90                   	nop
      ff81062df3:	90                   	nop
      ff81062df4:	90                   	nop
      ff81062df5:	90                   	nop
      ff81062df6:	90                   	nop
      ff81062df7:	90                   	nop
      ff81062df8:	90                   	nop
      ff81062df9:	90                   	nop
      ff81062dfa:	90                   	nop
      ff81062dfb:	90                   	nop
      ff81062dfc:	90                   	nop
      ff81062dfd:	90                   	nop
      ff81062dfe:	90                   	nop
      ff81062dff:	90                   	nop
      
      ff81062e00 <trace_clock_x86_tsc>:
      ff81062e00:	0f 31                	rdtsc  
      ff81062e02:	90                   	nop
      ff81062e03:	90                   	nop
      ff81062e04:	90                   	nop
      ff81062e05:	48 c1 e2 20          	shl    $0x20,%rdx
      ff81062e09:	48 09 d0             	or     %rdx,%rax
      ff81062e0c:	c3                   	retq   
      ff81062e0d:	90                   	nop
      ff81062e0e:	90                   	nop
      ff81062e0f:	90                   	nop
      
      ff81062e10 <mem_region_callback>:
      ff81062e10:	e8 8b eb 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81062e15:	48 89 f0             	mov    %rsi,%rax
      ff81062e18:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
      ff81062e1c:	48 8b 17             	mov    (%rdi),%rdx
      ff81062e1f:	48 8b 76 08          	mov    0x8(%rsi),%rsi
      ff81062e23:	48 8b 38             	mov    (%rax),%rdi
      ff81062e26:	e9 c5 c6 00 00       	jmpq   ffffffff8106f4f0 <kernel_ident_mapping_init>
      ff81062e2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      
      ff81062e30 <alloc_pgt_page>:
      ff81062e30:	e8 6b eb 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81062e35:	31 f6                	xor    %esi,%esi
      ff81062e37:	e8 a4 08 12 00       	callq  ffffffff811836e0 <kimage_alloc_control_pages>
      ff81062e3c:	49 89 c0             	mov    %rax,%r8
      ff81062e3f:	48 85 c0             	test   %rax,%rax
      ff81062e42:	74 1e                	je     ffffffff81062e62 <alloc_pgt_page+0x32>
      ff81062e44:	4c 2b 05 85 25 18 01 	sub    0x1182585(%rip),%r8        # ffffffff821e53d0 <vmemmap_base>
      ff81062e4b:	49 c1 f8 06          	sar    $0x6,%r8
      ff81062e4f:	49 c1 e0 0c          	shl    $0xc,%r8
      ff81062e53:	4c 03 05 86 25 18 01 	add    0x1182586(%rip),%r8        # ffffffff821e53e0 <page_offset_base>
      ff81062e5a:	4c 89 c7             	mov    %r8,%rdi
      ff81062e5d:	e8 be 63 97 00       	callq  ffffffff819d9220 <clear_page_orig>
      ff81062e62:	4c 89 c0             	mov    %r8,%rax
      ff81062e65:	c3                   	retq   
      ff81062e66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
      ff81062e6d:	00 00 00 
      
      ff81062e70 <kexec_mark_range.part.0>:
      ff81062e70:	e8 2b eb 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81062e75:	48 c1 ef 0c          	shr    $0xc,%rdi
      ff81062e79:	48 c1 ee 0c          	shr    $0xc,%rsi
      ff81062e7d:	49 89 f8             	mov    %rdi,%r8
      ff81062e80:	83 c6 01             	add    $0x1,%esi
      ff81062e83:	49 c1 e0 06          	shl    $0x6,%r8
      ff81062e87:	4c 03 05 42 25 18 01 	add    0x1182542(%rip),%r8        # ffffffff821e53d0 <vmemmap_base>
      ff81062e8e:	29 fe                	sub    %edi,%esi
      ff81062e90:	4c 89 c7             	mov    %r8,%rdi
      ff81062e93:	84 d2                	test   %dl,%dl
      ff81062e95:	74 05                	je     ffffffff81062e9c <kexec_mark_range.part.0+0x2c>
      ff81062e97:	e9 b4 36 01 00       	jmpq   ffffffff81076550 <set_pages_ro>
      ff81062e9c:	e9 1f 37 01 00       	jmpq   ffffffff810765c0 <set_pages_rw>
      ff81062ea1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
      ff81062ea8:	00 00 00 00 
      ff81062eac:	0f 1f 40 00          	nopl   0x0(%rax)
      
      ff81062eb0 <kexec_mark_crashkres>:
      ff81062eb0:	e8 eb ea 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81062eb5:	48 8b 35 4c ce 3f 01 	mov    0x13fce4c(%rip),%rsi        # ffffffff8245fd08 <crashk_low_res+0x8>
      ff81062ebc:	41 54                	push   %r12
      ff81062ebe:	44 0f b6 e7          	movzbl %dil,%r12d
      ff81062ec2:	53                   	push   %rbx
      ff81062ec3:	48 8b 3d 36 ce 3f 01 	mov    0x13fce36(%rip),%rdi        # ffffffff8245fd00 <crashk_low_res>
      ff81062eca:	48 85 f6             	test   %rsi,%rsi
      ff81062ecd:	74 0d                	je     ffffffff81062edc <kexec_mark_crashkres+0x2c>
      ff81062ecf:	48 39 fe             	cmp    %rdi,%rsi
      ff81062ed2:	72 08                	jb     ffffffff81062edc <kexec_mark_crashkres+0x2c>
      ff81062ed4:	44 89 e2             	mov    %r12d,%edx
      ff81062ed7:	e8 94 ff ff ff       	callq  ffffffff81062e70 <kexec_mark_range.part.0>
      ff81062edc:	48 8b 05 c5 d5 ba 01 	mov    0x1bad5c5(%rip),%rax        # ffffffff82c104a8 <kexec_crash_image>
      ff81062ee3:	48 8b 3d 56 ce 3f 01 	mov    0x13fce56(%rip),%rdi        # ffffffff8245fd40 <crashk_res>
      ff81062eea:	48 8b 58 20          	mov    0x20(%rax),%rbx
      ff81062eee:	48 2b 1d db 24 18 01 	sub    0x11824db(%rip),%rbx        # ffffffff821e53d0 <vmemmap_base>
      ff81062ef5:	48 c1 fb 06          	sar    $0x6,%rbx
      ff81062ef9:	48 c1 e3 0c          	shl    $0xc,%rbx
      ff81062efd:	48 8d b3 ff 0f 00 00 	lea    0xfff(%rbx),%rsi
      ff81062f04:	48 39 fe             	cmp    %rdi,%rsi
      ff81062f07:	72 08                	jb     ffffffff81062f11 <kexec_mark_crashkres+0x61>
      ff81062f09:	44 89 e2             	mov    %r12d,%edx
      ff81062f0c:	e8 5f ff ff ff       	callq  ffffffff81062e70 <kexec_mark_range.part.0>
      ff81062f11:	48 8b 35 30 ce 3f 01 	mov    0x13fce30(%rip),%rsi        # ffffffff8245fd48 <crashk_res+0x8>
      ff81062f18:	48 8d bb 00 20 00 00 	lea    0x2000(%rbx),%rdi
      ff81062f1f:	48 85 f6             	test   %rsi,%rsi
      ff81062f22:	74 10                	je     ffffffff81062f34 <kexec_mark_crashkres+0x84>
      ff81062f24:	48 39 fe             	cmp    %rdi,%rsi
      ff81062f27:	72 0b                	jb     ffffffff81062f34 <kexec_mark_crashkres+0x84>
      ff81062f29:	44 89 e2             	mov    %r12d,%edx
      ff81062f2c:	5b                   	pop    %rbx
      ff81062f2d:	41 5c                	pop    %r12
      ff81062f2f:	e9 3c ff ff ff       	jmpq   ffffffff81062e70 <kexec_mark_range.part.0>
      ff81062f34:	5b                   	pop    %rbx
      ff81062f35:	41 5c                	pop    %r12
      ff81062f37:	c3                   	retq   
      ff81062f38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
      ff81062f3f:	00 
      
      ff81062f40 <machine_kexec_prepare>:
      ff81062f40:	e8 5b ea 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81062f45:	41 57                	push   %r15
      ff81062f47:	41 56                	push   %r14
      ff81062f49:	41 55                	push   %r13
      ff81062f4b:	41 54                	push   %r12
      ff81062f4d:	55                   	push   %rbp
      ff81062f4e:	48 89 fd             	mov    %rdi,%rbp
      ff81062f51:	53                   	push   %rbx
      ff81062f52:	48 83 ec 48          	sub    $0x48,%rsp
      ff81062f56:	48 8b 5f 20          	mov    0x20(%rdi),%rbx
      ff81062f5a:	48 2b 1d 6f 24 18 01 	sub    0x118246f(%rip),%rbx        # ffffffff821e53d0 <vmemmap_base>
      ff81062f61:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
      ff81062f68:	00 00 
      ff81062f6a:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
      ff81062f6f:	31 c0                	xor    %eax,%eax
      ff81062f71:	48 c1 fb 06          	sar    $0x6,%rbx
      ff81062f75:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
      ff81062f7a:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
      ff81062f81:	00 00 
      ff81062f83:	48 c1 e3 0c          	shl    $0xc,%rbx
      ff81062f87:	48 03 1d 52 24 18 01 	add    0x1182452(%rip),%rbx        # ffffffff821e53e0 <page_offset_base>
      ff81062f8e:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
      ff81062f95:	00 00 
      ff81062f97:	49 89 df             	mov    %rbx,%r15
      ff81062f9a:	48 89 df             	mov    %rbx,%rdi
      ff81062f9d:	48 c7 44 24 10 30 2e 	movq   $0xffffffff81062e30,0x10(%rsp)
      ff81062fa4:	06 81 
      ff81062fa6:	48 c7 44 24 20 e3 01 	movq   $0x1e3,0x20(%rsp)
      ff81062fad:	00 00 
      ff81062faf:	48 c7 44 24 38 63 00 	movq   $0x63,0x38(%rsp)
      ff81062fb6:	00 00 
      ff81062fb8:	e8 63 62 97 00       	callq  ffffffff819d9220 <clear_page_orig>
      ff81062fbd:	e8 9e cc 01 00       	callq  ffffffff8107fc60 <sev_active>
      ff81062fc2:	84 c0                	test   %al,%al
      ff81062fc4:	74 11                	je     ffffffff81062fd7 <machine_kexec_prepare+0x97>
      ff81062fc6:	48 8b 05 53 7c 3d 01 	mov    0x13d7c53(%rip),%rax        # ffffffff8243ac20 <sme_me_mask>
      ff81062fcd:	48 09 44 24 20       	or     %rax,0x20(%rsp)
      ff81062fd2:	48 09 44 24 38       	or     %rax,0x38(%rsp)
      ff81062fd7:	8b 15 83 71 3c 01    	mov    0x13c7183(%rip),%edx        # ffffffff8242a160 <direct_gbpages>
      ff81062fdd:	85 d2                	test   %edx,%edx
      ff81062fdf:	74 05                	je     ffffffff81062fe6 <machine_kexec_prepare+0xa6>
      ff81062fe1:	c6 44 24 30 01       	movb   $0x1,0x30(%rsp)
      ff81062fe6:	8b 05 54 8a b4 01    	mov    0x1b48a54(%rip),%eax        # ffffffff82baba40 <nr_pfn_mapped>
      ff81062fec:	31 db                	xor    %ebx,%ebx
      ff81062fee:	85 c0                	test   %eax,%eax
      ff81062ff0:	7f 0d                	jg     ffffffff81062fff <machine_kexec_prepare+0xbf>
      ff81062ff2:	eb 5c                	jmp    ffffffff81063050 <machine_kexec_prepare+0x110>
      ff81062ff4:	83 c3 01             	add    $0x1,%ebx
      ff81062ff7:	3b 1d 43 8a b4 01    	cmp    0x1b48a43(%rip),%ebx        # ffffffff82baba40 <nr_pfn_mapped>
      ff81062ffd:	7d 51                	jge    ffffffff81063050 <machine_kexec_prepare+0x110>
      ff81062fff:	48 63 c3             	movslq %ebx,%rax
      ff81063002:	4c 89 fe             	mov    %r15,%rsi
      ff81063005:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
      ff8106300a:	48 c1 e0 04          	shl    $0x4,%rax
      ff8106300e:	48 8b 88 68 ba ba 82 	mov    -0x7d454598(%rax),%rcx
      ff81063015:	48 8b 90 60 ba ba 82 	mov    -0x7d4545a0(%rax),%rdx
      ff8106301c:	48 c1 e1 0c          	shl    $0xc,%rcx
      ff81063020:	48 c1 e2 0c          	shl    $0xc,%rdx
      ff81063024:	e8 c7 c4 00 00       	callq  ffffffff8106f4f0 <kernel_ident_mapping_init>
      ff81063029:	85 c0                	test   %eax,%eax
      ff8106302b:	74 c7                	je     ffffffff81062ff4 <machine_kexec_prepare+0xb4>
      ff8106302d:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
      ff81063032:	65 48 33 34 25 28 00 	xor    %gs:0x28,%rsi
      ff81063039:	00 00 
      ff8106303b:	0f 85 fc 04 00 00    	jne    ffffffff8106353d <machine_kexec_prepare+0x5fd>
      ff81063041:	48 83 c4 48          	add    $0x48,%rsp
      ff81063045:	5b                   	pop    %rbx
      ff81063046:	5d                   	pop    %rbp
      ff81063047:	41 5c                	pop    %r12
      ff81063049:	41 5d                	pop    %r13
      ff8106304b:	41 5e                	pop    %r14
      ff8106304d:	41 5f                	pop    %r15
      ff8106304f:	c3                   	retq   
      ff81063050:	45 31 e4             	xor    %r12d,%r12d
      ff81063053:	48 83 7d 38 00       	cmpq   $0x0,0x38(%rbp)
      ff81063058:	48 8d 5d 50          	lea    0x50(%rbp),%rbx
      ff8106305c:	0f 85 ef 03 00 00    	jne    ffffffff81063451 <machine_kexec_prepare+0x511>
      ff81063062:	48 8b 05 57 5a 50 01 	mov    0x1505a57(%rip),%rax        # ffffffff82568ac0 <efi+0x160>
      ff81063069:	a8 01                	test   $0x1,%al
      ff8106306b:	74 3f                	je     ffffffff810630ac <machine_kexec_prepare+0x16c>
      ff8106306d:	8b 15 85 79 b3 01    	mov    0x1b37985(%rip),%edx        # ffffffff82b9a9f8 <boot_params+0x1d8>
      ff81063073:	8b 05 6b 79 b3 01    	mov    0x1b3796b(%rip),%eax        # ffffffff82b9a9e4 <boot_params+0x1c4>
      ff81063079:	48 8b 35 40 5a 50 01 	mov    0x1505a40(%rip),%rsi        # ffffffff82568ac0 <efi+0x160>
      ff81063080:	48 c1 e2 20          	shl    $0x20,%rdx
      ff81063084:	48 09 c2             	or     %rax,%rdx
      ff81063087:	83 e6 20             	and    $0x20,%esi
      ff8106308a:	48 8d 42 78          	lea    0x78(%rdx),%rax
      ff8106308e:	48 8d 4a 48          	lea    0x48(%rdx),%rcx
      ff81063092:	48 0f 45 c8          	cmovne %rax,%rcx
      ff81063096:	48 85 d2             	test   %rdx,%rdx
      ff81063099:	74 11                	je     ffffffff810630ac <machine_kexec_prepare+0x16c>
      ff8106309b:	4c 89 fe             	mov    %r15,%rsi
      ff8106309e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
      ff810630a3:	e8 48 c4 00 00       	callq  ffffffff8106f4f0 <kernel_ident_mapping_init>
      ff810630a8:	85 c0                	test   %eax,%eax
      ff810630aa:	75 81                	jne    ffffffff8106302d <machine_kexec_prepare+0xed>
      ff810630ac:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
      ff810630b1:	31 d2                	xor    %edx,%edx
      ff810630b3:	49 89 e0             	mov    %rsp,%r8
      ff810630b6:	be 00 02 00 80       	mov    $0x80000200,%esi
      ff810630bb:	49 c7 c1 10 2e 06 81 	mov    $0xffffffff81062e10,%r9
      ff810630c2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
      ff810630c9:	bf 02 00 00 00       	mov    $0x2,%edi
      ff810630ce:	48 89 04 24          	mov    %rax,(%rsp)
      ff810630d2:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
      ff810630d7:	e8 74 20 08 00       	callq  ffffffff810e5150 <walk_iomem_res_desc>
      ff810630dc:	85 c0                	test   %eax,%eax
      ff810630de:	74 09                	je     ffffffff810630e9 <machine_kexec_prepare+0x1a9>
      ff810630e0:	83 f8 ea             	cmp    $0xffffffea,%eax
      ff810630e3:	0f 85 44 ff ff ff    	jne    ffffffff8106302d <machine_kexec_prepare+0xed>
      ff810630e9:	31 d2                	xor    %edx,%edx
      ff810630eb:	49 89 e0             	mov    %rsp,%r8
      ff810630ee:	be 00 02 00 80       	mov    $0x80000200,%esi
      ff810630f3:	bf 03 00 00 00       	mov    $0x3,%edi
      ff810630f8:	49 c7 c1 10 2e 06 81 	mov    $0xffffffff81062e10,%r9
      ff810630ff:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
      ff81063106:	e8 45 20 08 00       	callq  ffffffff810e5150 <walk_iomem_res_desc>
      ff8106310b:	85 c0                	test   %eax,%eax
      ff8106310d:	74 09                	je     ffffffff81063118 <machine_kexec_prepare+0x1d8>
      ff8106310f:	83 f8 ea             	cmp    $0xffffffea,%eax
      ff81063112:	0f 85 15 ff ff ff    	jne    ffffffff8106302d <machine_kexec_prepare+0xed>
      ff81063118:	48 8b 45 20          	mov    0x20(%rbp),%rax
      ff8106311c:	48 2b 05 ad 22 18 01 	sub    0x11822ad(%rip),%rax        # ffffffff821e53d0 <vmemmap_base>
      ff81063123:	49 c7 c5 00 40 06 81 	mov    $0xffffffff81064000,%r13
      ff8106312a:	48 8b 15 af 22 18 01 	mov    0x11822af(%rip),%rdx        # ffffffff821e53e0 <page_offset_base>
      ff81063131:	48 c1 f8 06          	sar    $0x6,%rax
      ff81063135:	4c 8b 35 bc ce 4f 01 	mov    0x14fcebc(%rip),%r14        # ffffffff8255fff8 <__default_kernel_pte_mask>
      ff8106313c:	48 c1 e0 0c          	shl    $0xc,%rax
      ff81063140:	4c 8d a4 02 00 10 00 	lea    0x1000(%rdx,%rax,1),%r12
      ff81063147:	00 
      ff81063148:	b8 00 00 00 80       	mov    $0x80000000,%eax
      ff8106314d:	49 01 c4             	add    %rax,%r12
      ff81063150:	0f 82 0c 04 00 00    	jb     ffffffff81063562 <machine_kexec_prepare+0x622>
      ff81063156:	48 c7 c0 00 00 00 80 	mov    $0xffffffff80000000,%rax
      ff8106315d:	48 29 d0             	sub    %rdx,%rax
      ff81063160:	4c 89 eb             	mov    %r13,%rbx
      ff81063163:	49 01 c4             	add    %rax,%r12
      ff81063166:	48 c1 eb 24          	shr    $0x24,%rbx
      ff8106316a:	81 e3 f8 0f 00 00    	and    $0xff8,%ebx
      ff81063170:	4c 01 fb             	add    %r15,%rbx
      ff81063173:	48 8b 3b             	mov    (%rbx),%rdi
      ff81063176:	40 f6 c7 01          	test   $0x1,%dil
      ff8106317a:	75 5e                	jne    ffffffff810631da <machine_kexec_prepare+0x29a>
      ff8106317c:	bf c0 0c 00 00       	mov    $0xcc0,%edi
      ff81063181:	e8 ba 12 23 00       	callq  ffffffff81294440 <get_zeroed_page>
      ff81063186:	48 85 c0             	test   %rax,%rax
      ff81063189:	0f 84 a4 03 00 00    	je     ffffffff81063533 <machine_kexec_prepare+0x5f3>
      ff8106318f:	be 00 00 00 80       	mov    $0x80000000,%esi
      ff81063194:	48 89 85 88 02 00 00 	mov    %rax,0x288(%rbp)
      ff8106319b:	48 01 f0             	add    %rsi,%rax
      ff8106319e:	0f 82 9e 03 00 00    	jb     ffffffff81063542 <machine_kexec_prepare+0x602>
      ff810631a4:	48 c7 c6 00 00 00 80 	mov    $0xffffffff80000000,%rsi
      ff810631ab:	48 2b 35 2e 22 18 01 	sub    0x118222e(%rip),%rsi        # ffffffff821e53e0 <page_offset_base>
      ff810631b2:	48 01 c6             	add    %rax,%rsi
      ff810631b5:	48 0b 35 64 7a 3d 01 	or     0x13d7a64(%rip),%rsi        # ffffffff8243ac20 <sme_me_mask>
      ff810631bc:	48 83 ce 63          	or     $0x63,%rsi
      ff810631c0:	48 89 f7             	mov    %rsi,%rdi
      ff810631c3:	ff 14 25 88 98 42 82 	callq  *0xffffffff82429888
      ff810631ca:	48 89 c6             	mov    %rax,%rsi
      ff810631cd:	48 89 df             	mov    %rbx,%rdi
      ff810631d0:	ff 14 25 b8 98 42 82 	callq  *0xffffffff824298b8
      ff810631d7:	48 8b 3b             	mov    (%rbx),%rdi
      ff810631da:	ff 14 25 80 98 42 82 	callq  *0xffffffff82429880
      ff810631e1:	48 8b 0d 18 61 18 01 	mov    0x1186118(%rip),%rcx        # ffffffff821e9300 <physical_mask>
      ff810631e8:	4c 89 eb             	mov    %r13,%rbx
      ff810631eb:	48 c1 eb 1b          	shr    $0x1b,%rbx
      ff810631ef:	48 89 ca             	mov    %rcx,%rdx
      ff810631f2:	81 e3 f8 0f 00 00    	and    $0xff8,%ebx
      ff810631f8:	48 03 1d e1 21 18 01 	add    0x11821e1(%rip),%rbx        # ffffffff821e53e0 <page_offset_base>
      ff810631ff:	48 81 e1 00 00 00 c0 	and    $0xffffffffc0000000,%rcx
      ff81063206:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
      ff8106320d:	48 21 d0             	and    %rdx,%rax
      ff81063210:	48 01 c3             	add    %rax,%rbx
      ff81063213:	48 8b 3b             	mov    (%rbx),%rdi
      ff81063216:	48 89 fe             	mov    %rdi,%rsi
      ff81063219:	81 e6 80 00 00 00    	and    $0x80,%esi
      ff8106321f:	48 0f 45 d1          	cmovne %rcx,%rdx
      ff81063223:	48 f7 d2             	not    %rdx
      ff81063226:	48 21 fa             	and    %rdi,%rdx
      ff81063229:	83 e2 01             	and    $0x1,%edx
      ff8106322c:	75 67                	jne    ffffffff81063295 <machine_kexec_prepare+0x355>
      ff8106322e:	bf c0 0c 00 00       	mov    $0xcc0,%edi
      ff81063233:	e8 08 12 23 00       	callq  ffffffff81294440 <get_zeroed_page>
      ff81063238:	48 85 c0             	test   %rax,%rax
      ff8106323b:	0f 84 f2 02 00 00    	je     ffffffff81063533 <machine_kexec_prepare+0x5f3>
      ff81063241:	be 00 00 00 80       	mov    $0x80000000,%esi
      ff81063246:	48 89 85 90 02 00 00 	mov    %rax,0x290(%rbp)
      ff8106324d:	48 01 f0             	add    %rsi,%rax
      ff81063250:	0f 82 18 03 00 00    	jb     ffffffff8106356e <machine_kexec_prepare+0x62e>
      ff81063256:	48 c7 c6 00 00 00 80 	mov    $0xffffffff80000000,%rsi
      ff8106325d:	48 2b 35 7c 21 18 01 	sub    0x118217c(%rip),%rsi        # ffffffff821e53e0 <page_offset_base>
      ff81063264:	48 01 c6             	add    %rax,%rsi
      ff81063267:	48 0b 35 b2 79 3d 01 	or     0x13d79b2(%rip),%rsi        # ffffffff8243ac20 <sme_me_mask>
      ff8106326e:	48 83 ce 63          	or     $0x63,%rsi
      ff81063272:	48 89 f7             	mov    %rsi,%rdi
      ff81063275:	ff 14 25 b0 98 42 82 	callq  *0xffffffff824298b0
      ff8106327c:	48 89 c6             	mov    %rax,%rsi
      ff8106327f:	48 89 df             	mov    %rbx,%rdi
      ff81063282:	ff 14 25 90 98 42 82 	callq  *0xffffffff82429890
      ff81063289:	48 8b 3b             	mov    (%rbx),%rdi
      ff8106328c:	48 89 fe             	mov    %rdi,%rsi
      ff8106328f:	81 e6 80 00 00 00    	and    $0x80,%esi
      ff81063295:	4c 89 e9             	mov    %r13,%rcx
      ff81063298:	48 c1 e9 12          	shr    $0x12,%rcx
      ff8106329c:	81 e1 f8 0f 00 00    	and    $0xff8,%ecx
      ff810632a2:	ff 14 25 a8 98 42 82 	callq  *0xffffffff824298a8
      ff810632a9:	48 8b 15 50 60 18 01 	mov    0x1186050(%rip),%rdx        # ffffffff821e9300 <physical_mask>
      ff810632b0:	48 89 d3             	mov    %rdx,%rbx
      ff810632b3:	48 85 f6             	test   %rsi,%rsi
      ff810632b6:	0f 84 b5 01 00 00    	je     ffffffff81063471 <machine_kexec_prepare+0x531>
      ff810632bc:	48 81 e3 00 00 00 c0 	and    $0xffffffffc0000000,%rbx
      ff810632c3:	48 03 0d 16 21 18 01 	add    0x1182116(%rip),%rcx        # ffffffff821e53e0 <page_offset_base>
      ff810632ca:	48 21 d8             	and    %rbx,%rax
      ff810632cd:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
      ff810632d1:	48 89 d0             	mov    %rdx,%rax
      ff810632d4:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
      ff810632db:	48 8b 3b             	mov    (%rbx),%rdi
      ff810632de:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
      ff810632e4:	48 89 f9             	mov    %rdi,%rcx
      ff810632e7:	81 e1 80 00 00 00    	and    $0x80,%ecx
      ff810632ed:	48 0f 45 d0          	cmovne %rax,%rdx
      ff810632f1:	48 f7 d2             	not    %rdx
      ff810632f4:	48 21 fa             	and    %rdi,%rdx
      ff810632f7:	f7 c2 81 01 00 00    	test   $0x181,%edx
      ff810632fd:	75 67                	jne    ffffffff81063366 <machine_kexec_prepare+0x426>
      ff810632ff:	bf c0 0c 00 00       	mov    $0xcc0,%edi
      ff81063304:	e8 37 11 23 00       	callq  ffffffff81294440 <get_zeroed_page>
      ff81063309:	48 85 c0             	test   %rax,%rax
      ff8106330c:	0f 84 21 02 00 00    	je     ffffffff81063533 <machine_kexec_prepare+0x5f3>
      ff81063312:	be 00 00 00 80       	mov    $0x80000000,%esi
      ff81063317:	48 89 85 98 02 00 00 	mov    %rax,0x298(%rbp)
      ff8106331e:	48 01 f0             	add    %rsi,%rax
      ff81063321:	0f 82 2f 02 00 00    	jb     ffffffff81063556 <machine_kexec_prepare+0x616>
      ff81063327:	48 c7 c6 00 00 00 80 	mov    $0xffffffff80000000,%rsi
      ff8106332e:	48 2b 35 ab 20 18 01 	sub    0x11820ab(%rip),%rsi        # ffffffff821e53e0 <page_offset_base>
      ff81063335:	48 01 c6             	add    %rax,%rsi
      ff81063338:	48 0b 35 e1 78 3d 01 	or     0x13d78e1(%rip),%rsi        # ffffffff8243ac20 <sme_me_mask>
      ff8106333f:	48 83 ce 63          	or     $0x63,%rsi
      ff81063343:	48 89 f7             	mov    %rsi,%rdi
      ff81063346:	ff 14 25 a0 98 42 82 	callq  *0xffffffff824298a0
      ff8106334d:	48 89 c6             	mov    %rax,%rsi
      ff81063350:	48 89 df             	mov    %rbx,%rdi
      ff81063353:	ff 14 25 58 98 42 82 	callq  *0xffffffff82429858
      ff8106335a:	48 8b 3b             	mov    (%rbx),%rdi
      ff8106335d:	48 89 f9             	mov    %rdi,%rcx
      ff81063360:	81 e1 80 00 00 00    	and    $0x80,%ecx
      ff81063366:	49 c1 ed 09          	shr    $0x9,%r13
      ff8106336a:	41 81 e5 f8 0f 00 00 	and    $0xff8,%r13d
      ff81063371:	ff 14 25 98 98 42 82 	callq  *0xffffffff82429898
      ff81063378:	48 8b 1d 81 5f 18 01 	mov    0x1185f81(%rip),%rbx        # ffffffff821e9300 <physical_mask>
      ff8106337f:	48 85 c9             	test   %rcx,%rcx
      ff81063382:	0f 84 6f 01 00 00    	je     ffffffff810634f7 <machine_kexec_prepare+0x5b7>
      ff81063388:	48 81 e3 00 00 e0 ff 	and    $0xffffffffffe00000,%rbx
      ff8106338f:	4c 03 2d 4a 20 18 01 	add    0x118204a(%rip),%r13        # ffffffff821e53e0 <page_offset_base>
      ff81063396:	48 21 d8             	and    %rbx,%rax
      ff81063399:	41 81 e6 63 01 00 00 	and    $0x163,%r14d
      ff810633a0:	49 8d 5c 05 00       	lea    0x0(%r13,%rax,1),%rbx
      ff810633a5:	e8 b6 c8 01 00       	callq  ffffffff8107fc60 <sev_active>
      ff810633aa:	84 c0                	test   %al,%al
      ff810633ac:	74 15                	je     ffffffff810633c3 <machine_kexec_prepare+0x483>
      ff810633ae:	4c 8b 35 6b 78 3d 01 	mov    0x13d786b(%rip),%r14        # ffffffff8243ac20 <sme_me_mask>
      ff810633b5:	49 81 ce 63 01 00 00 	or     $0x163,%r14
      ff810633bc:	4c 23 35 35 cc 4f 01 	and    0x14fcc35(%rip),%r14        # ffffffff8255fff8 <__default_kernel_pte_mask>
      ff810633c3:	48 8b 3d 36 5f 18 01 	mov    0x1185f36(%rip),%rdi        # ffffffff821e9300 <physical_mask>
      ff810633ca:	49 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%r12
      ff810633d1:	4d 85 f6             	test   %r14,%r14
      ff810633d4:	0f 84 12 01 00 00    	je     ffffffff810634ec <machine_kexec_prepare+0x5ac>
      ff810633da:	4c 89 f2             	mov    %r14,%rdx
      ff810633dd:	83 e2 01             	and    $0x1,%edx
      ff810633e0:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
      ff810633e4:	49 31 c4             	xor    %rax,%r12
      ff810633e7:	49 21 fc             	and    %rdi,%r12
      ff810633ea:	49 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%r12
      ff810633f1:	48 85 d2             	test   %rdx,%rdx
      ff810633f4:	0f 84 54 01 00 00    	je     ffffffff8106354e <machine_kexec_prepare+0x60e>
      ff810633fa:	48 8b 0d ff cb 4f 01 	mov    0x14fcbff(%rip),%rcx        # ffffffff82560000 <__supported_pte_mask>
      ff81063401:	4d 89 f5             	mov    %r14,%r13
      ff81063404:	49 21 cd             	and    %rcx,%r13
      ff81063407:	4d 39 ee             	cmp    %r13,%r14
      ff8106340a:	0f 85 f3 00 00 00    	jne    ffffffff81063503 <machine_kexec_prepare+0x5c3>
      ff81063410:	4c 89 e7             	mov    %r12,%rdi
      ff81063413:	4c 09 ef             	or     %r13,%rdi
      ff81063416:	ff 14 25 78 98 42 82 	callq  *0xffffffff82429878
      ff8106341d:	48 89 c6             	mov    %rax,%rsi
      ff81063420:	48 89 df             	mov    %rbx,%rdi
      ff81063423:	ff 14 25 48 98 42 82 	callq  *0xffffffff82429848
      ff8106342a:	0f b6 85 78 02 00 00 	movzbl 0x278(%rbp),%eax
      ff81063431:	83 e0 05             	and    $0x5,%eax
      ff81063434:	3c 05                	cmp    $0x5,%al
      ff81063436:	74 45                	je     ffffffff8106347d <machine_kexec_prepare+0x53d>
      ff81063438:	31 c0                	xor    %eax,%eax
      ff8106343a:	e9 ee fb ff ff       	jmpq   ffffffff8106302d <machine_kexec_prepare+0xed>
      ff8106343f:	49 83 c4 01          	add    $0x1,%r12
      ff81063443:	48 83 c3 20          	add    $0x20,%rbx
      ff81063447:	4c 39 65 38          	cmp    %r12,0x38(%rbp)
      ff8106344b:	0f 86 11 fc ff ff    	jbe    ffffffff81063062 <machine_kexec_prepare+0x122>
      ff81063451:	48 8b 13             	mov    (%rbx),%rdx
      ff81063454:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
      ff81063458:	4c 89 fe             	mov    %r15,%rsi
      ff8106345b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
      ff81063460:	48 01 d1             	add    %rdx,%rcx
      ff81063463:	e8 88 c0 00 00       	callq  ffffffff8106f4f0 <kernel_ident_mapping_init>
      ff81063468:	85 c0                	test   %eax,%eax
      ff8106346a:	74 d3                	je     ffffffff8106343f <machine_kexec_prepare+0x4ff>
      ff8106346c:	e9 bc fb ff ff       	jmpq   ffffffff8106302d <machine_kexec_prepare+0xed>
      ff81063471:	48 81 e3 00 f0 ff ff 	and    $0xfffffffffffff000,%rbx
      ff81063478:	e9 46 fe ff ff       	jmpq   ffffffff810632c3 <machine_kexec_prepare+0x383>
      ff8106347d:	45 31 c0             	xor    %r8d,%r8d
      ff81063480:	b9 08 00 00 00       	mov    $0x8,%ecx
      ff81063485:	48 89 ef             	mov    %rbp,%rdi
      ff81063488:	48 c7 c6 c4 67 10 82 	mov    $0xffffffff821067c4,%rsi
      ff8106348f:	48 8d 95 b0 02 00 00 	lea    0x2b0(%rbp),%rdx
      ff81063496:	e8 85 23 12 00       	callq  ffffffff81185820 <kexec_purgatory_get_set_symbol>
      ff8106349b:	85 c0                	test   %eax,%eax
      ff8106349d:	0f 85 8a fb ff ff    	jne    ffffffff8106302d <machine_kexec_prepare+0xed>
      ff810634a3:	45 31 c0             	xor    %r8d,%r8d
      ff810634a6:	b9 08 00 00 00       	mov    $0x8,%ecx
      ff810634ab:	48 89 ef             	mov    %rbp,%rdi
      ff810634ae:	48 c7 c6 da 67 10 82 	mov    $0xffffffff821067da,%rsi
      ff810634b5:	48 8d 95 a0 02 00 00 	lea    0x2a0(%rbp),%rdx
      ff810634bc:	e8 5f 23 12 00       	callq  ffffffff81185820 <kexec_purgatory_get_set_symbol>
      ff810634c1:	85 c0                	test   %eax,%eax
      ff810634c3:	0f 85 64 fb ff ff    	jne    ffffffff8106302d <machine_kexec_prepare+0xed>
      ff810634c9:	48 8d 95 a8 02 00 00 	lea    0x2a8(%rbp),%rdx
      ff810634d0:	45 31 c0             	xor    %r8d,%r8d
      ff810634d3:	b9 08 00 00 00       	mov    $0x8,%ecx
      ff810634d8:	48 89 ef             	mov    %rbp,%rdi
      ff810634db:	48 c7 c6 ef 67 10 82 	mov    $0xffffffff821067ef,%rsi
      ff810634e2:	e8 39 23 12 00       	callq  ffffffff81185820 <kexec_purgatory_get_set_symbol>
      ff810634e7:	e9 41 fb ff ff       	jmpq   ffffffff8106302d <machine_kexec_prepare+0xed>
      ff810634ec:	49 21 fc             	and    %rdi,%r12
      ff810634ef:	45 31 ed             	xor    %r13d,%r13d
      ff810634f2:	e9 19 ff ff ff       	jmpq   ffffffff81063410 <machine_kexec_prepare+0x4d0>
      ff810634f7:	48 81 e3 00 f0 ff ff 	and    $0xfffffffffffff000,%rbx
      ff810634fe:	e9 8c fe ff ff       	jmpq   ffffffff8106338f <machine_kexec_prepare+0x44f>
      ff81063503:	80 3d 6a 80 4c 01 00 	cmpb   $0x0,0x14c806a(%rip)        # ffffffff8252b574 <__warned.20087>
      ff8106350a:	0f 85 00 ff ff ff    	jne    ffffffff81063410 <machine_kexec_prepare+0x4d0>
      ff81063510:	4c 89 f2             	mov    %r14,%rdx
      ff81063513:	4c 89 f6             	mov    %r14,%rsi
      ff81063516:	48 c7 c7 20 76 0f 82 	mov    $0xffffffff820f7620,%rdi
      ff8106351d:	c6 05 50 80 4c 01 01 	movb   $0x1,0x14c8050(%rip)        # ffffffff8252b574 <__warned.20087>
      ff81063524:	4c 31 ea             	xor    %r13,%rdx
      ff81063527:	e8 d2 ad 07 00       	callq  ffffffff810de2fe <__warn_printk>
      ff8106352c:	0f 0b                	ud2    
      ff8106352e:	e9 dd fe ff ff       	jmpq   ffffffff81063410 <machine_kexec_prepare+0x4d0>
      ff81063533:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
      ff81063538:	e9 f0 fa ff ff       	jmpq   ffffffff8106302d <machine_kexec_prepare+0xed>
      ff8106353d:	e8 de aa 07 00       	callq  ffffffff810de020 <__stack_chk_fail>
      ff81063542:	48 8b 35 c7 fa 3a 01 	mov    0x13afac7(%rip),%rsi        # ffffffff82413010 <phys_base>
      ff81063549:	e9 64 fc ff ff       	jmpq   ffffffff810631b2 <machine_kexec_prepare+0x272>
      ff8106354e:	4d 89 f5             	mov    %r14,%r13
      ff81063551:	e9 ba fe ff ff       	jmpq   ffffffff81063410 <machine_kexec_prepare+0x4d0>
      ff81063556:	48 8b 35 b3 fa 3a 01 	mov    0x13afab3(%rip),%rsi        # ffffffff82413010 <phys_base>
      ff8106355d:	e9 d3 fd ff ff       	jmpq   ffffffff81063335 <machine_kexec_prepare+0x3f5>
      ff81063562:	48 8b 05 a7 fa 3a 01 	mov    0x13afaa7(%rip),%rax        # ffffffff82413010 <phys_base>
      ff81063569:	e9 f2 fb ff ff       	jmpq   ffffffff81063160 <machine_kexec_prepare+0x220>
      ff8106356e:	48 8b 35 9b fa 3a 01 	mov    0x13afa9b(%rip),%rsi        # ffffffff82413010 <phys_base>
      ff81063575:	e9 ea fc ff ff       	jmpq   ffffffff81063264 <machine_kexec_prepare+0x324>
      ff8106357a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      
      ff81063580 <machine_kexec_cleanup>:
      ff81063580:	e8 1b e4 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063585:	53                   	push   %rbx
      ff81063586:	48 89 fb             	mov    %rdi,%rbx
      ff81063589:	48 8b bf 80 02 00 00 	mov    0x280(%rdi),%rdi
      ff81063590:	31 f6                	xor    %esi,%esi
      ff81063592:	e8 99 37 23 00       	callq  ffffffff81296d30 <free_pages>
      ff81063597:	48 8b bb 88 02 00 00 	mov    0x288(%rbx),%rdi
      ff8106359e:	31 f6                	xor    %esi,%esi
      ff810635a0:	48 c7 83 80 02 00 00 	movq   $0x0,0x280(%rbx)
      ff810635a7:	00 00 00 00 
      ff810635ab:	e8 80 37 23 00       	callq  ffffffff81296d30 <free_pages>
      ff810635b0:	48 8b bb 90 02 00 00 	mov    0x290(%rbx),%rdi
      ff810635b7:	31 f6                	xor    %esi,%esi
      ff810635b9:	48 c7 83 88 02 00 00 	movq   $0x0,0x288(%rbx)
      ff810635c0:	00 00 00 00 
      ff810635c4:	e8 67 37 23 00       	callq  ffffffff81296d30 <free_pages>
      ff810635c9:	48 8b bb 98 02 00 00 	mov    0x298(%rbx),%rdi
      ff810635d0:	31 f6                	xor    %esi,%esi
      ff810635d2:	48 c7 83 90 02 00 00 	movq   $0x0,0x290(%rbx)
      ff810635d9:	00 00 00 00 
      ff810635dd:	e8 4e 37 23 00       	callq  ffffffff81296d30 <free_pages>
      ff810635e2:	48 c7 83 98 02 00 00 	movq   $0x0,0x298(%rbx)
      ff810635e9:	00 00 00 00 
      ff810635ed:	5b                   	pop    %rbx
      ff810635ee:	c3                   	retq   
      ff810635ef:	90                   	nop
      
      ff810635f0 <machine_kexec>:
      ff810635f0:	e8 ab e3 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff810635f5:	41 54                	push   %r12
      ff810635f7:	55                   	push   %rbp
      ff810635f8:	48 89 fd             	mov    %rdi,%rbp
      ff810635fb:	53                   	push   %rbx
      ff810635fc:	48 83 ec 38          	sub    $0x38,%rsp
      ff81063600:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
      ff81063607:	00 00 
      ff81063609:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
      ff8106360e:	31 c0                	xor    %eax,%eax
      ff81063610:	f6 87 78 02 00 00 02 	testb  $0x2,0x278(%rdi)
      ff81063617:	0f 85 ce 01 00 00    	jne    ffffffff810637eb <machine_kexec+0x1fb>
      ff8106361d:	44 8b 25 e4 ed 4f 01 	mov    0x14fede4(%rip),%r12d        # ffffffff82562408 <ftrace_enabled>
      ff81063624:	c7 05 da ed 4f 01 00 	movl   $0x0,0x14fedda(%rip)        # ffffffff82562408 <ftrace_enabled>
      ff8106362b:	00 00 00 
      ff8106362e:	ff 14 25 78 97 42 82 	callq  *0xffffffff82429778
      ff81063635:	31 db                	xor    %ebx,%ebx
      ff81063637:	bf 07 00 00 00       	mov    $0x7,%edi
      ff8106363c:	48 89 de             	mov    %rbx,%rsi
      ff8106363f:	ff 14 25 68 96 42 82 	callq  *0xffffffff82429668
      ff81063646:	48 89 df             	mov    %rbx,%rdi
      ff81063649:	48 89 de             	mov    %rbx,%rsi
      ff8106364c:	ff 14 25 68 96 42 82 	callq  *0xffffffff82429668
      ff81063653:	bf 01 00 00 00       	mov    $0x1,%edi
      ff81063658:	48 89 de             	mov    %rbx,%rsi
      ff8106365b:	ff 14 25 68 96 42 82 	callq  *0xffffffff82429668
      ff81063662:	bf 02 00 00 00       	mov    $0x2,%edi
      ff81063667:	48 89 de             	mov    %rbx,%rsi
      ff8106366a:	ff 14 25 68 96 42 82 	callq  *0xffffffff82429668
      ff81063671:	bf 03 00 00 00       	mov    $0x3,%edi
      ff81063676:	48 89 de             	mov    %rbx,%rsi
      ff81063679:	ff 14 25 68 96 42 82 	callq  *0xffffffff82429668
      ff81063680:	f6 85 78 02 00 00 02 	testb  $0x2,0x278(%rbp)
      ff81063687:	0f 85 6f 01 00 00    	jne    ffffffff810637fc <machine_kexec+0x20c>
      ff8106368d:	48 8b 15 3c 1d 18 01 	mov    0x1181d3c(%rip),%rdx        # ffffffff821e53d0 <vmemmap_base>
      ff81063694:	48 8b 7d 20          	mov    0x20(%rbp),%rdi
      ff81063698:	48 c7 c6 00 40 06 81 	mov    $0xffffffff81064000,%rsi
      ff8106369f:	4c 8b 05 3a 1d 18 01 	mov    0x1181d3a(%rip),%r8        # ffffffff821e53e0 <page_offset_base>
      ff810636a6:	48 8b 05 53 09 00 00 	mov    0x953(%rip),%rax        # ffffffff81064000 <relocate_kernel>
      ff810636ad:	48 29 d7             	sub    %rdx,%rdi
      ff810636b0:	48 c1 ff 06          	sar    $0x6,%rdi
      ff810636b4:	48 c1 e7 0c          	shl    $0xc,%rdi
      ff810636b8:	4c 01 c7             	add    %r8,%rdi
      ff810636bb:	48 89 87 00 10 00 00 	mov    %rax,0x1000(%rdi)
      ff810636c2:	48 8b 05 2f 11 00 00 	mov    0x112f(%rip),%rax        # ffffffff810647f8 <crash_setup_memmap_entries+0x168>
      ff810636c9:	4c 8d 8f 00 10 00 00 	lea    0x1000(%rdi),%r9
      ff810636d0:	48 81 c7 08 10 00 00 	add    $0x1008,%rdi
      ff810636d7:	4c 89 c9             	mov    %r9,%rcx
      ff810636da:	48 89 87 f0 07 00 00 	mov    %rax,0x7f0(%rdi)
      ff810636e1:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
      ff810636e5:	b8 00 00 00 80       	mov    $0x80000000,%eax
      ff810636ea:	48 29 f9             	sub    %rdi,%rcx
      ff810636ed:	48 29 ce             	sub    %rcx,%rsi
      ff810636f0:	81 c1 00 08 00 00    	add    $0x800,%ecx
      ff810636f6:	c1 e9 03             	shr    $0x3,%ecx
      ff810636f9:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
      ff810636fc:	4c 01 c8             	add    %r9,%rax
      ff810636ff:	0f 82 06 01 00 00    	jb     ffffffff8106380b <machine_kexec+0x21b>
      ff81063705:	48 c7 c1 00 00 00 80 	mov    $0xffffffff80000000,%rcx
      ff8106370c:	4c 29 c1             	sub    %r8,%rcx
      ff8106370f:	48 01 c8             	add    %rcx,%rax
      ff81063712:	b9 00 00 00 80       	mov    $0x80000000,%ecx
      ff81063717:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
      ff8106371c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
      ff81063721:	48 8b 45 20          	mov    0x20(%rbp),%rax
      ff81063725:	48 29 d0             	sub    %rdx,%rax
      ff81063728:	48 c1 f8 06          	sar    $0x6,%rax
      ff8106372c:	48 c1 e0 0c          	shl    $0xc,%rax
      ff81063730:	4c 01 c0             	add    %r8,%rax
      ff81063733:	48 01 c8             	add    %rcx,%rax
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
      ff81063837:	48 8b 15 d2 f7 3a 01 	mov    0x13af7d2(%rip),%rdx        # ffffffff82413010 <phys_base>
      ff8106383e:	48 c7 c6 03 68 10 82 	mov    $0xffffffff82106803,%rsi
      ff81063845:	48 c7 c7 0d 68 10 82 	mov    $0xffffffff8210680d,%rdi
      ff8106384c:	4c 8b 25 cd 73 3d 01 	mov    0x13d73cd(%rip),%r12        # ffffffff8243ac20 <sme_me_mask>
      ff81063853:	e8 88 f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff81063858:	48 c7 c2 00 a0 40 82 	mov    $0xffffffff8240a000,%rdx
      ff8106385f:	48 c7 c6 1d 68 10 82 	mov    $0xffffffff8210681d,%rsi
      ff81063866:	48 c7 c7 2a 68 10 82 	mov    $0xffffffff8210682a,%rdi
      ff8106386d:	e8 6e f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff81063872:	31 f6                	xor    %esi,%esi
      ff81063874:	48 c7 c7 d0 65 10 82 	mov    $0xffffffff821065d0,%rdi
      ff8106387b:	e8 60 f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff81063880:	48 c7 c2 a0 00 56 82 	mov    $0xffffffff825600a0,%rdx
      ff81063887:	48 c7 c6 3a 68 10 82 	mov    $0xffffffff8210683a,%rsi
      ff8106388e:	48 c7 c7 2a 68 10 82 	mov    $0xffffffff8210682a,%rdi
      ff81063895:	e8 46 f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff8106389a:	ba 00 04 00 00       	mov    $0x400,%edx
      ff8106389f:	48 c7 c6 3a 68 10 82 	mov    $0xffffffff8210683a,%rsi
      ff810638a6:	48 c7 c7 44 68 10 82 	mov    $0xffffffff82106844,%rdi
      ff810638ad:	e8 2e f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff810638b2:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
      ff810638b9:	48 c7 c7 54 68 10 82 	mov    $0xffffffff82106854,%rdi
      ff810638c0:	e8 1b f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff810638c5:	ba 00 00 00 40       	mov    $0x40000000,%edx
      ff810638ca:	48 c7 c6 66 68 10 82 	mov    $0xffffffff82106866,%rsi
      ff810638d1:	48 c7 c7 0d 68 10 82 	mov    $0xffffffff8210680d,%rdi
      ff810638d8:	e8 03 f4 11 00       	callq  ffffffff81182ce0 <vmcoreinfo_append_str>
      ff810638dd:	4c 89 e2             	mov    %r12,%rdx
      ff810638e0:	41 5c                	pop    %r12
      ff810638e2:	48 c7 c6 78 68 10 82 	mov    $0xffffffff82106878,%rsi
      ff810638e9:	48 c7 c7 0d 68 10 82 	mov    $0xffffffff8210680d,%rdi
      ff810638f0:	e9 eb f3 11 00       	jmpq   ffffffff81182ce0 <vmcoreinfo_append_str>
      ff810638f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
      ff810638fc:	00 00 00 00 
      
      ff81063900 <arch_kexec_kernel_image_load>:
      ff81063900:	e8 9b e0 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063905:	55                   	push   %rbp
      ff81063906:	48 89 fd             	mov    %rdi,%rbp
      ff81063909:	48 8b bf b8 02 00 00 	mov    0x2b8(%rdi),%rdi
      ff81063910:	e8 bb d6 22 00       	callq  ffffffff81290fd0 <vfree>
      ff81063915:	48 8b 85 00 03 00 00 	mov    0x300(%rbp),%rax
      ff8106391c:	48 c7 85 b8 02 00 00 	movq   $0x0,0x2b8(%rbp)
      ff81063923:	00 00 00 00 
      ff81063927:	48 85 c0             	test   %rax,%rax
      ff8106392a:	74 3d                	je     ffffffff81063969 <arch_kexec_kernel_image_load+0x69>
      ff8106392c:	48 8b 40 08          	mov    0x8(%rax),%rax
      ff81063930:	48 85 c0             	test   %rax,%rax
      ff81063933:	74 34                	je     ffffffff81063969 <arch_kexec_kernel_image_load+0x69>
      ff81063935:	ff b5 f8 02 00 00    	pushq  0x2f8(%rbp)
      ff8106393b:	48 8b 95 d8 02 00 00 	mov    0x2d8(%rbp),%rdx
      ff81063942:	48 89 ef             	mov    %rbp,%rdi
      ff81063945:	48 8b 8d e0 02 00 00 	mov    0x2e0(%rbp),%rcx
      ff8106394c:	48 8b b5 d0 02 00 00 	mov    0x2d0(%rbp),%rsi
      ff81063953:	4c 8b 8d f0 02 00 00 	mov    0x2f0(%rbp),%r9
      ff8106395a:	4c 8b 85 e8 02 00 00 	mov    0x2e8(%rbp),%r8
      ff81063961:	e8 ba d2 b9 00       	callq  ffffffff81c00c20 <__x86_indirect_thunk_rax>
      ff81063966:	5a                   	pop    %rdx
      ff81063967:	5d                   	pop    %rbp
      ff81063968:	c3                   	retq   
      ff81063969:	48 c7 c0 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rax
      ff81063970:	5d                   	pop    %rbp
      ff81063971:	c3                   	retq   
      ff81063972:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
      ff81063979:	00 00 00 00 
      ff8106397d:	0f 1f 00             	nopl   (%rax)
      
      ff81063980 <arch_kexec_apply_relocations_add>:
      ff81063980:	e8 1b e0 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063985:	41 57                	push   %r15
      ff81063987:	49 89 d2             	mov    %rdx,%r10
      ff8106398a:	49 89 f7             	mov    %rsi,%r15
      ff8106398d:	49 89 cb             	mov    %rcx,%r11
      ff81063990:	41 56                	push   %r14
      ff81063992:	41 55                	push   %r13
      ff81063994:	41 54                	push   %r12
      ff81063996:	49 89 fc             	mov    %rdi,%r12
      ff81063999:	55                   	push   %rbp
      ff8106399a:	53                   	push   %rbx
      ff8106399b:	48 83 ec 50          	sub    $0x50,%rsp
      ff8106399f:	48 8b 07             	mov    (%rdi),%rax
      ff810639a2:	48 8b 58 28          	mov    0x28(%rax),%rbx
      ff810639a6:	48 89 c7             	mov    %rax,%rdi
      ff810639a9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
      ff810639ae:	48 01 c3             	add    %rax,%rbx
      ff810639b1:	8b 41 28             	mov    0x28(%rcx),%eax
      ff810639b4:	48 89 5c 24 48       	mov    %rbx,0x48(%rsp)
      ff810639b9:	48 c1 e0 06          	shl    $0x6,%rax
      ff810639bd:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
      ff810639c2:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
      ff810639c7:	0f b7 47 3e          	movzwl 0x3e(%rdi),%eax
      ff810639cb:	48 c1 e0 06          	shl    $0x6,%rax
      ff810639cf:	48 03 7c 03 18       	add    0x18(%rbx,%rax,1),%rdi
      ff810639d4:	48 8b 42 18          	mov    0x18(%rdx),%rax
      ff810639d8:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
      ff810639dd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
      ff810639e2:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      ff810639e7:	45 31 f6             	xor    %r14d,%r14d
      ff810639ea:	31 c9                	xor    %ecx,%ecx
      ff810639ec:	49 83 7a 20 17       	cmpq   $0x17,0x20(%r10)
      ff810639f1:	0f 87 b2 00 00 00    	ja     ffffffff81063aa9 <arch_kexec_apply_relocations_add+0x129>
      ff810639f7:	e9 b8 01 00 00       	jmpq   ffffffff81063bb4 <arch_kexec_apply_relocations_add+0x234>
      ff810639fc:	48 03 54 24 40       	add    0x40(%rsp),%rdx
      ff81063a01:	48 01 fa             	add    %rdi,%rdx
      ff81063a04:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      ff81063a09:	66 45 85 c0          	test   %r8w,%r8w
      ff81063a0d:	0f 84 a0 02 00 00    	je     ffffffff81063cb3 <arch_kexec_apply_relocations_add.cold+0x1a>
      ff81063a13:	66 41 83 f8 f2       	cmp    $0xfff2,%r8w
      ff81063a18:	0f 84 ae 02 00 00    	je     ffffffff81063ccc <arch_kexec_apply_relocations_add.cold+0x33>
      ff81063a1e:	66 41 83 f8 f1       	cmp    $0xfff1,%r8w
      ff81063a23:	0f 84 70 01 00 00    	je     ffffffff81063b99 <arch_kexec_apply_relocations_add+0x219>
      ff81063a29:	49 8b 0c 24          	mov    (%r12),%rcx
      ff81063a2d:	66 44 39 41 3c       	cmp    %r8w,0x3c(%rcx)
      ff81063a32:	0f 86 61 02 00 00    	jbe    ffffffff81063c99 <arch_kexec_apply_relocations_add.cold>
      ff81063a38:	49 c1 e0 06          	shl    $0x6,%r8
      ff81063a3c:	4d 03 44 24 08       	add    0x8(%r12),%r8
      ff81063a41:	49 8b 48 10          	mov    0x10(%r8),%rcx
      ff81063a45:	8b 75 08             	mov    0x8(%rbp),%esi
      ff81063a48:	48 8b 53 08          	mov    0x8(%rbx),%rdx
      ff81063a4c:	48 03 55 10          	add    0x10(%rbp),%rdx
      ff81063a50:	48 01 ca             	add    %rcx,%rdx
      ff81063a53:	48 83 fe 02          	cmp    $0x2,%rsi
      ff81063a57:	0f 84 bf 00 00 00    	je     ffffffff81063b1c <arch_kexec_apply_relocations_add+0x19c>
      ff81063a5d:	0f 86 c9 00 00 00    	jbe    ffffffff81063b2c <arch_kexec_apply_relocations_add+0x1ac>
      ff81063a63:	48 83 fe 0a          	cmp    $0xa,%rsi
      ff81063a67:	0f 84 33 01 00 00    	je     ffffffff81063ba0 <arch_kexec_apply_relocations_add+0x220>
      ff81063a6d:	48 83 fe 0b          	cmp    $0xb,%rsi
      ff81063a71:	0f 85 9b 00 00 00    	jne    ffffffff81063b12 <arch_kexec_apply_relocations_add+0x192>
      ff81063a77:	48 63 c2             	movslq %edx,%rax
      ff81063a7a:	41 89 55 00          	mov    %edx,0x0(%r13)
      ff81063a7e:	48 39 d0             	cmp    %rdx,%rax
      ff81063a81:	0f 85 8a 01 00 00    	jne    ffffffff81063c11 <arch_kexec_apply_relocations_add+0x291>
      ff81063a87:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
      ff81063a8e:	aa aa aa 
      ff81063a91:	49 f7 62 20          	mulq   0x20(%r10)
      ff81063a95:	41 8d 4e 01          	lea    0x1(%r14),%ecx
      ff81063a99:	49 89 ce             	mov    %rcx,%r14
      ff81063a9c:	48 c1 ea 04          	shr    $0x4,%rdx
      ff81063aa0:	48 39 d1             	cmp    %rdx,%rcx
      ff81063aa3:	0f 83 0b 01 00 00    	jae    ffffffff81063bb4 <arch_kexec_apply_relocations_add+0x234>
      ff81063aa9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
      ff81063aae:	48 8d 04 49          	lea    (%rcx,%rcx,2),%rax
      ff81063ab2:	4d 8b 6f 18          	mov    0x18(%r15),%r13
      ff81063ab6:	49 8b 77 10          	mov    0x10(%r15),%rsi
      ff81063aba:	48 8d 2c c7          	lea    (%rdi,%rax,8),%rbp
      ff81063abe:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
      ff81063ac3:	48 89 34 24          	mov    %rsi,(%rsp)
      ff81063ac7:	48 01 fd             	add    %rdi,%rbp
      ff81063aca:	8b 55 0c             	mov    0xc(%rbp),%edx
      ff81063acd:	48 8b 45 00          	mov    0x0(%rbp),%rax
      ff81063ad1:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
      ff81063ad5:	49 8b 53 18          	mov    0x18(%r11),%rdx
      ff81063ad9:	49 01 c5             	add    %rax,%r13
      ff81063adc:	4d 03 6c 24 10       	add    0x10(%r12),%r13
      ff81063ae1:	48 8d 1c ca          	lea    (%rdx,%rcx,8),%rbx
      ff81063ae5:	49 03 1c 24          	add    (%r12),%rbx
      ff81063ae9:	8b 13                	mov    (%rbx),%edx
      ff81063aeb:	44 0f b7 43 06       	movzwl 0x6(%rbx),%r8d
      ff81063af0:	85 d2                	test   %edx,%edx
      ff81063af2:	0f 85 04 ff ff ff    	jne    ffffffff810639fc <arch_kexec_apply_relocations_add+0x7c>
      ff81063af8:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
      ff81063afd:	41 0f b7 d0          	movzwl %r8w,%edx
      ff81063b01:	48 c1 e2 06          	shl    $0x6,%rdx
      ff81063b05:	8b 14 17             	mov    (%rdi,%rdx,1),%edx
      ff81063b08:	48 03 54 24 38       	add    0x38(%rsp),%rdx
      ff81063b0d:	e9 f2 fe ff ff       	jmpq   ffffffff81063a04 <arch_kexec_apply_relocations_add+0x84>
      ff81063b12:	48 83 fe 04          	cmp    $0x4,%rsi
      ff81063b16:	0f 85 e2 00 00 00    	jne    ffffffff81063bfe <arch_kexec_apply_relocations_add+0x27e>
      ff81063b1c:	48 03 04 24          	add    (%rsp),%rax
      ff81063b20:	48 29 c2             	sub    %rax,%rdx
      ff81063b23:	41 89 55 00          	mov    %edx,0x0(%r13)
      ff81063b27:	e9 5b ff ff ff       	jmpq   ffffffff81063a87 <arch_kexec_apply_relocations_add+0x107>
      ff81063b2c:	48 85 f6             	test   %rsi,%rsi
      ff81063b2f:	0f 84 52 ff ff ff    	je     ffffffff81063a87 <arch_kexec_apply_relocations_add+0x107>
      ff81063b35:	48 83 fe 01          	cmp    $0x1,%rsi
      ff81063b39:	0f 85 ba 00 00 00    	jne    ffffffff81063bf9 <arch_kexec_apply_relocations_add+0x279>
      ff81063b3f:	49 89 55 00          	mov    %rdx,0x0(%r13)
      ff81063b43:	e9 3f ff ff ff       	jmpq   ffffffff81063a87 <arch_kexec_apply_relocations_add+0x107>
      ff81063b48:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
      ff81063b4d:	4c 8b 4b 08          	mov    0x8(%rbx),%r9
      ff81063b51:	48 c7 c6 20 66 10 82 	mov    $0xffffffff82106620,%rsi
      ff81063b58:	48 c7 c7 90 8a 53 82 	mov    $0xffffffff82538a90,%rdi
      ff81063b5f:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
      ff81063b64:	0f b6 4b 04          	movzbl 0x4(%rbx),%ecx
      ff81063b68:	4c 89 54 24 28       	mov    %r10,0x28(%rsp)
      ff81063b6d:	ff 73 10             	pushq  0x10(%rbx)
      ff81063b70:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
      ff81063b75:	e8 66 76 49 00       	callq  ffffffff814fb1e0 <__dynamic_pr_debug>
      ff81063b7a:	44 0f b7 43 06       	movzwl 0x6(%rbx),%r8d
      ff81063b7f:	58                   	pop    %rax
      ff81063b80:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
      ff81063b85:	4c 8b 54 24 28       	mov    0x28(%rsp),%r10
      ff81063b8a:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
      ff81063b8f:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
      ff81063b94:	e9 70 fe ff ff       	jmpq   ffffffff81063a09 <arch_kexec_apply_relocations_add+0x89>
      ff81063b99:	31 c9                	xor    %ecx,%ecx
      ff81063b9b:	e9 a5 fe ff ff       	jmpq   ffffffff81063a45 <arch_kexec_apply_relocations_add+0xc5>
      ff81063ba0:	89 d0                	mov    %edx,%eax
      ff81063ba2:	41 89 55 00          	mov    %edx,0x0(%r13)
      ff81063ba6:	48 39 d0             	cmp    %rdx,%rax
      ff81063ba9:	0f 84 d8 fe ff ff    	je     ffffffff81063a87 <arch_kexec_apply_relocations_add+0x107>
      ff81063baf:	e9 31 01 00 00       	jmpq   ffffffff81063ce5 <arch_kexec_apply_relocations_add.cold+0x4c>
      ff81063bb4:	31 c0                	xor    %eax,%eax
      ff81063bb6:	48 83 c4 50          	add    $0x50,%rsp
      ff81063bba:	5b                   	pop    %rbx
      ff81063bbb:	5d                   	pop    %rbp
      ff81063bbc:	41 5c                	pop    %r12
      ff81063bbe:	41 5d                	pop    %r13
      ff81063bc0:	41 5e                	pop    %r14
      ff81063bc2:	41 5f                	pop    %r15
      ff81063bc4:	c3                   	retq   
      ff81063bc5:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
      ff81063bca:	8b 4a 2c             	mov    0x2c(%rdx),%ecx
      ff81063bcd:	48 c7 c6 f0 65 10 82 	mov    $0xffffffff821065f0,%rsi
      ff81063bd4:	48 c7 c7 c8 8a 53 82 	mov    $0xffffffff82538ac8,%rdi
      ff81063bdb:	8b 12                	mov    (%rdx),%edx
      ff81063bdd:	48 03 54 24 38       	add    0x38(%rsp),%rdx
      ff81063be2:	4c 89 14 24          	mov    %r10,(%rsp)
      ff81063be6:	e8 f5 75 49 00       	callq  ffffffff814fb1e0 <__dynamic_pr_debug>
      ff81063beb:	4c 8b 14 24          	mov    (%rsp),%r10
      ff81063bef:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
      ff81063bf4:	e9 ee fd ff ff       	jmpq   ffffffff810639e7 <arch_kexec_apply_relocations_add+0x67>
      ff81063bf9:	be 02 00 00 00       	mov    $0x2,%esi
      ff81063bfe:	48 c7 c7 d8 66 10 82 	mov    $0xffffffff821066d8,%rdi
      ff81063c05:	e8 b4 0e 0e 00       	callq  ffffffff81144abe <printk>
      ff81063c0a:	b8 f8 ff ff ff       	mov    $0xfffffff8,%eax
      ff81063c0f:	eb a5                	jmp    ffffffff81063bb6 <arch_kexec_apply_relocations_add+0x236>
      ff81063c11:	e9 cf 00 00 00       	jmpq   ffffffff81063ce5 <arch_kexec_apply_relocations_add.cold+0x4c>
      ff81063c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
      ff81063c1d:	00 00 00 
      
      ff81063c20 <arch_kexec_protect_crashkres>:
      ff81063c20:	e8 7b dd 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063c25:	bf 01 00 00 00       	mov    $0x1,%edi
      ff81063c2a:	e9 81 f2 ff ff       	jmpq   ffffffff81062eb0 <kexec_mark_crashkres>
      ff81063c2f:	90                   	nop
      
      ff81063c30 <arch_kexec_unprotect_crashkres>:
      ff81063c30:	e8 6b dd 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063c35:	31 ff                	xor    %edi,%edi
      ff81063c37:	e9 74 f2 ff ff       	jmpq   ffffffff81062eb0 <kexec_mark_crashkres>
      ff81063c3c:	0f 1f 40 00          	nopl   0x0(%rax)
      
      ff81063c40 <arch_kexec_post_alloc_pages>:
      ff81063c40:	e8 5b dd 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063c45:	41 54                	push   %r12
      ff81063c47:	41 89 f4             	mov    %esi,%r12d
      ff81063c4a:	55                   	push   %rbp
      ff81063c4b:	48 89 fd             	mov    %rdi,%rbp
      ff81063c4e:	e8 0d c0 01 00       	callq  ffffffff8107fc60 <sev_active>
      ff81063c53:	84 c0                	test   %al,%al
      ff81063c55:	74 06                	je     ffffffff81063c5d <arch_kexec_post_alloc_pages+0x1d>
      ff81063c57:	31 c0                	xor    %eax,%eax
      ff81063c59:	5d                   	pop    %rbp
      ff81063c5a:	41 5c                	pop    %r12
      ff81063c5c:	c3                   	retq   
      ff81063c5d:	44 89 e6             	mov    %r12d,%esi
      ff81063c60:	48 89 ef             	mov    %rbp,%rdi
      ff81063c63:	5d                   	pop    %rbp
      ff81063c64:	41 5c                	pop    %r12
      ff81063c66:	e9 35 23 01 00       	jmpq   ffffffff81075fa0 <set_memory_decrypted>
      ff81063c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      
      ff81063c70 <arch_kexec_pre_free_pages>:
      ff81063c70:	e8 2b dd 99 00       	callq  ffffffff81a019a0 <__fentry__>
      ff81063c75:	41 54                	push   %r12
      ff81063c77:	41 89 f4             	mov    %esi,%r12d
      ff81063c7a:	55                   	push   %rbp
      ff81063c7b:	48 89 fd             	mov    %rdi,%rbp
      ff81063c7e:	e8 dd bf 01 00       	callq  ffffffff8107fc60 <sev_active>
      ff81063c83:	84 c0                	test   %al,%al
      ff81063c85:	74 04                	je     ffffffff81063c8b <arch_kexec_pre_free_pages+0x1b>
      ff81063c87:	5d                   	pop    %rbp
      ff81063c88:	41 5c                	pop    %r12
      ff81063c8a:	c3                   	retq   
      ff81063c8b:	44 89 e6             	mov    %r12d,%esi
      ff81063c8e:	48 89 ef             	mov    %rbp,%rdi
      ff81063c91:	5d                   	pop    %rbp
      ff81063c92:	41 5c                	pop    %r12
      ff81063c94:	e9 f7 22 01 00       	jmpq   ffffffff81075f90 <set_memory_encrypted>
      
      ff81063c99 <arch_kexec_apply_relocations_add.cold>:
      ff81063c99:	41 0f b7 f0          	movzwl %r8w,%esi
      ff81063c9d:	48 c7 c7 a8 66 10 82 	mov    $0xffffffff821066a8,%rdi
      ff81063ca4:	e8 15 0e 0e 00       	callq  ffffffff81144abe <printk>
      ff81063ca9:	b8 f8 ff ff ff       	mov    $0xfffffff8,%eax
      ff81063cae:	e9 03 ff ff ff       	jmpq   ffffffff81063bb6 <arch_kexec_apply_relocations_add+0x236>
      ff81063cb3:	48 89 d6             	mov    %rdx,%rsi
      ff81063cb6:	48 c7 c7 60 66 10 82 	mov    $0xffffffff82106660,%rdi
      ff81063cbd:	e8 fc 0d 0e 00       	callq  ffffffff81144abe <printk>
      ff81063cc2:	b8 f8 ff ff ff       	mov    $0xfffffff8,%eax
      ff81063cc7:	e9 ea fe ff ff       	jmpq   ffffffff81063bb6 <arch_kexec_apply_relocations_add+0x236>
      ff81063ccc:	48 89 d6             	mov    %rdx,%rsi
      ff81063ccf:	48 c7 c7 80 66 10 82 	mov    $0xffffffff82106680,%rdi
      ff81063cd6:	e8 e3 0d 0e 00       	callq  ffffffff81144abe <printk>
      ff81063cdb:	b8 f8 ff ff ff       	mov    $0xfffffff8,%eax
      ff81063ce0:	e9 d1 fe ff ff       	jmpq   ffffffff81063bb6 <arch_kexec_apply_relocations_add+0x236>
      ff81063ce5:	48 8b 75 08          	mov    0x8(%rbp),%rsi
      ff81063ce9:	48 c7 c7 00 67 10 82 	mov    $0xffffffff82106700,%rdi
      ff81063cf0:	e8 c9 0d 0e 00       	callq  ffffffff81144abe <printk>
      ff81063cf5:	b8 f8 ff ff ff       	mov    $0xfffffff8,%eax
      ff81063cfa:	e9 b7 fe ff ff       	jmpq   ffffffff81063bb6 <arch_kexec_apply_relocations_add+0x236>
      ff81063cff:	90                   	nop
      ff81063d00:	90                   	nop
      ff81063d01:	90                   	nop
      ff81063d02:	90                   	nop
