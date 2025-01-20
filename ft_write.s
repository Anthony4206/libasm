extern	__errno_location

section .text
global	ft_write

ft_write:
	mov	rax, 1
	syscall

	cmp	rax, 0
	js	.error
	ret


.error:
	neg	rax
	push	rax
	call	__errno_location wrt ..plt
	mov	rdi, rax
	pop	rax
	mov	[rdi], rax
	mov	rax, -1
	ret
