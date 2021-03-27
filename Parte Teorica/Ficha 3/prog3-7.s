	.data

I:	.word	1
LIMIT:	.word	20	

	.text
main:
	lw $s1, I
	li $s2, 1
	lw $s3, LIMIT
	li $s4, 2

CYCLE:
	beq $s1, $s3, FIM
	div $s1, $s4
	mfhi $t1
	beq $t1, $s2, etiqueta

etiqueta2:
	add $s1, $s1, $s2
	j CYCLE

etiqueta:
	move $s7, $s1
	j etiqueta2
FIM:
	