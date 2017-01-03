	.file	"l2vecnorm.c"
	.section	.rodata
.LC0:
	.string	"%f  "
.LC2:
	.string	"%f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L2
.L3:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-104(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -104(%rbp)
.L2:
	movl	-104(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L3
	movl	$0, -100(%rbp)
	jmp	.L4
.L5:
	movq	-72(%rbp), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	movl	$.LC0, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -100(%rbp)
.L4:
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L5
	movl	$10, %edi
	call	putchar
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L6
.L7:
	movq	-72(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm1
	movq	-72(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	addl	$1, -96(%rbp)
.L6:
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L7
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movq	%rbx, %rsp
	movl	$0, %eax
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail
.L9:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
