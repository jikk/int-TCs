	.section	__TEXT,__text,regular,pure_instructions
	.globl	_overflow
	.align	4, 0x90
_overflow:                              ## @overflow
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movl	$2147483647, -16(%rbp)  ## imm = 0x7FFFFFFF
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	%esi, %ebx
	addl	%edx, %ebx
	jo	LBB0_1
LBB0_2:                                 ## %cont
	movl	%ebx, -16(%rbp)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
LBB0_1:                                 ## %handler.add_overflow
	leaq	L___unnamed_1(%rip), %rdi
	callq	___ubsan_handle_add_overflow
	jmp	LBB0_2
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L___unnamed_2:                          ## @0
	.asciz	 "overflow0.c"

	.section	__TEXT,__const
	.align	3                       ## @1
L___unnamed_3:
	.short	0                       ## 0x0
	.short	11                      ## 0xb
	.asciz	 "'int'"

	.section	__DATA,__data
	.align	4                       ## @2
L___unnamed_1:
	.quad	L___unnamed_2
	.long	6                       ## 0x6
	.long	9                       ## 0x9
	.quad	L___unnamed_3


.subsections_via_symbols
