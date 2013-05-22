	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:                                ## %entry
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	$2147483647, -12(%ebp)  ## imm = 0x7FFFFFFF
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	_malloc
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	$0, %eax
	addl	$24, %esp
	popl	%ebp
	ret


.subsections_via_symbols
