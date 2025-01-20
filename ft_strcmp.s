section .text
global ft_strcmp

ft_strcmp:
	xor	rax, rax
	xor	rdx, rdx

.loop:
	mov 	al, byte [rdi]
	mov	dl, byte [rsi]
	cmp	rax, rdx
	je	.next

	sub	rax, rdx
	ret

.next:
	test	al, al
	jz	.end_cmp

	inc	rdi
	inc	rsi
	jmp	.loop

.end_cmp:
	ret
