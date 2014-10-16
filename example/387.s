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

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI1_0:
	.long	1077936128              ## float 3
LCPI1_1:
	.long	1084227584              ## float 5
	.section	__TEXT,__text,regular,pure_instructions
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
	subq	$128, %rsp
	fldt	16(%rbp)
	fld	%st(0)
	fstpt	-32(%rbp)
	flds	LCPI1_0(%rip)
	fdivrp	%st(1)
	fstpt	-48(%rbp)
	fldt	-32(%rbp)
	flds	LCPI1_1(%rip)
	fdivrp	%st(1)
	fstpt	-64(%rbp)
	fldt	-48(%rbp)
	fstl	-72(%rbp)
	movsd	-72(%rbp), %xmm0
	fstpt	-108(%rbp)              ## 10-byte Folded Spill
	callq	_rint
	movsd	%xmm0, -80(%rbp)
	fldl	-80(%rbp)
	fldt	-108(%rbp)              ## 10-byte Folded Reload
	fucompi	%st(1)
	fstp	%st(0)
	jne	LBB1_1
	jp	LBB1_1
	jmp	LBB1_2
LBB1_1:
	fldt	-64(%rbp)
	fstl	-88(%rbp)
	movsd	-88(%rbp), %xmm0
	fstpt	-120(%rbp)              ## 10-byte Folded Spill
	callq	_rint
	movsd	%xmm0, -96(%rbp)
	fldl	-96(%rbp)
	fldt	-120(%rbp)              ## 10-byte Folded Reload
	fucompi	%st(1)
	fstp	%st(0)
	jne	LBB1_3
	jnp	LBB1_2
	jmp	LBB1_3
LBB1_2:
	fldt	-32(%rbp)
	fstpt	-16(%rbp)
	jmp	LBB1_4
LBB1_3:
	fldz
	fstpt	-16(%rbp)
LBB1_4:
	fldt	-16(%rbp)
	addq	$128, %rsp
	popq	%rbp
	ret
	.cfi_endproc


.subsections_via_symbols
