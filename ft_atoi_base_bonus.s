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
	mov	r10, rax
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

.inc_whitespace:
	inc	rdi
	
.atoi:
	mov	bl, [rdi]
	cmp	bl, 32
	jle	.inc_whitespace
	mov	rsi, rdx
	xor	rdx, rdx
	xor	rax, rax
	mov	r9, 1
	cmp	bl, '-'
	je	.neg
	cmp	bl, '+'
	je	.inc_str
	jmp	.add_basetoi

.neg:
	neg	r9

.inc_str:
	inc	rdi

.add_basetoi:
	mov	r8, rsi
	mov	rcx, r10
	mov	dl, [rdi]
	cmp	dl, 0
	jz	.done

.is_base:
        mov     bl, [r8]
        cmp     dl, bl
        je      .add_value
        test    bl, bl
        jz	.done
        inc     r8
	dec	rcx
        jmp     .is_base

.add_value:
	imul	rax, r10
	sub	rcx, r10
	neg	rcx
	add	rax, rcx
	jmp	.inc_str

.ret_zero:
	xor	rax, rax
	ret

.done:
	imul	rax, r9
	ret
