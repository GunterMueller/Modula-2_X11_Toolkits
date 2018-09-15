	.text
	.globl	_M2ROOT
	.align 4
_M2ROOT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
	.globl	MathLib
	call	MathLib
	.globl	Strings
	call	Strings
	.globl	xgraphic
	call	xgraphic
	.globl	simple
	call	simple
	leave
	ret
	.Lab1 = 4
