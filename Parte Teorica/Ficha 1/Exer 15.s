	.data

A: 	.word	120
B:	.word	250
C:	.word	 50
D:	.word	15
E:	.word	0

	.text
main:
	lw $s1, A
	lw $s2, B
	lw $s3, C
	lw $s4, D
	
	add $s1, $s1,$s3
	add $s1, $s1, $s3

	add $s2, $s4, $s2
	sub $s2, $s1, $s2
	sw $s2, E