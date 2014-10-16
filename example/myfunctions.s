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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	popq	%rbp
	ret
	.cfi_endproc

	.globl	_is_multiple
	.align	4, 0x90
_is_multiple:                           ## @is_multiple
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
	subq	$48, %rsp
	movabsq	$5, %rax
	cvtsi2sdq	%rax, %xmm1
	movabsq	$3, %rax
	cvtsi2sdq	%rax, %xmm2
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	movsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_rint
	movsd	-40(%rbp), %xmm1        ## 8-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	LBB1_1
	jp	LBB1_1
	jmp	LBB1_2
LBB1_1:
	movsd	-32(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_rint
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	LBB1_3
	jp	LBB1_3
LBB1_2:
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB1_4
LBB1_3:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
LBB1_4:
	movsd	-8(%rbp), %xmm0
	addq	$48, %rsp
	popq	%rbp
	ret
	.cfi_endproc


.subsections_via_symbols
