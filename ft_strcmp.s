section .text
global ft_strcmp

ft_strcmp:
	xor	rdi, rdi
	xor	rsi, rsi

.loop:
	cmp []

done_
