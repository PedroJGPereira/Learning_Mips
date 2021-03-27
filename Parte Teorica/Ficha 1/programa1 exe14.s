
	.data		

A:	.word	14
B:	.word	5 
C:	.word	0 
D:    	.word   	0
E:	.word	0

	.text

main:			
	
	lw $s3,A
	lw $s2,B
	
	add $s1,$s3,$s2 
	sw $s1,C
	
	add $s1,$s1,$s1
	sw $s1,D
	
	add $s3, $s3, $s1
	add $s2, $s2, $s1
	add $s1, $s3, $s2

	sub $s1, $s3, $s2
	sw $s1, E


