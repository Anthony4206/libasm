extern	ft_strlen

section	.text
global	ft_atoi_base

ft_atoi_base:
	xor	rax, rax

.check_base:
	push	rdi
	mov	rdi, rsi
	call	ft_strlen
	pop	rdi
	cmp	rax, 2
	jl	.ret_zero
	mov	rdx, rsi
	jmp	.loop_char_base

.loop_char_base:
	mov	al, [rsi]
	test	al, al
	jz	.atoi
	cmp	al, '+'
	je	.ret_zero
	cmp	al, '-'
	je	.ret_zero
	cmp	al, 32
	jle	.ret_zero
	mov	r8, rsi
	jmp	.loop_char

.loop_char:
	inc	r8
	mov	bl, [r8]
	cmp	al, bl
	je	.ret_zero
	test	bl, bl
	jnz	.loop_char
	inc	rsi
	jmp	.loop_char_base
	
.atoi:
	mov	rsi, rdx
	mov	rax, 1
	ret

.ret_zero:
	xor	rax, rax
	ret
