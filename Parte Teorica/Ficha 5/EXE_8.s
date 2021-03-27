	.data	

vetor:	.word 	70, 602, 102, 18, 15, -4, 89, 8078, -475, 289
nl:	.asciiz 	"\n"

	.text

main:			
	la $t0, vetor	
	addi $t1, $t0, 36
code:
	lw $s1, ($t0)	
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0,4
	la $a0,nl		
	syscall
	
	addi $t0,$t0,4
	beq $t0, $t1, end
	j code

end:
	li $v0, 10
	syscall

