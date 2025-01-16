section .text
global ft_strcpy

ft_strcpy:
	mov	rdx, rdi

.loop:
	mov	al, [rsi]
	mov	[rdi], al

	test	al, al
	jz	.done

	inc	rsi
	inc	rdi
	jmp	.loop

.done:
	mov	rax, rdx
	ret
