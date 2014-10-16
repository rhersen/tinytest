	.section	__TEXT,__text,regular,pure_instructions
	.globl	_add_numbers
	.align	4, 0x90
_add_numbers:                           ## @add_numbers
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, %rax
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_multiply_numbers
	.align	4, 0x90
_multiply_numbers:                      ## @multiply_numbers
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	cmpq	$0, %rax
	je	LBB1_3
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_add_numbers
	movq	%rax, -24(%rbp)
	jmp	LBB1_1
LBB1_3:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc


.subsections_via_symbols
