
	.data		
	
x:	.word	0x11E
y:	.word	0x112

	.text

main:
	lw $s1, x
	lw $s2, y
	
	add $s3, $s1, $s2
	sub $s2, $s1, $s2		
	