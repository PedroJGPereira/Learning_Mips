
	.data		

A:	.word	14
B:	.word	5 
C:	.word	0 
D:    	.word   	0


	.text

main:			
	
	lw $s3,A
	lw $s2,B
	
	add $s1,$s3,$s2 
	sw $s1,C
	
	add $s1,$s1,$s1
	sw $s1,D
	


