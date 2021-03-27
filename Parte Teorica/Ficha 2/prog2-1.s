
	.data		

v1:	.word	1
v2:	.word	2
v3:	.word	4
v4:    	.word   	8
v5:	.word	0

	.text

main:			
	lw $s1, v1
	lw $s2, v2
	add $s1, $s1, $s2
	lw $s2, v3
	add $s1, $s1, $s2
	lw $s2, v4
	add $s1, $s1, $s2
	sw $s1, v5


