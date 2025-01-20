extern	malloc
extern	ft_strlen
extern	ft_strcpy

section	.text
global	ft_strdup

ft_strdup:
	push	rdi
	call	ft_strlen
	inc	rax
	mov	rdi, rax
	call	malloc wrt ..plt

	test	rax, rax
	jz	.error

	mov	rdi, rax
	pop	rsi
	call	ft_strcpy

	ret

.error:
	ret
