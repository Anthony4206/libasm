extern	__errno_location

section	.text
global	ft_read

ft_read:
	mov	rax, 0
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
