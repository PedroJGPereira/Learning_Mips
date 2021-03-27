	.data 

Q: 		.asciiz 	"Insira um valor interiro:"
Quantidade:	.word	0	

	.text
main:

	li $t0, -1
	li $s1, Quantidade

ciclo:
	li $v0, 4
	la  $a0, Q
	syscall

	li $v0, 5
	syscall

	beq $v0, $t0, end 
	addi $s1, $s1, 1
	j ciclo

end:
	sw $s1, Quantidade
	li $v0, 1
	move $a0, $s1
	syscall 

	li $v0, 10
	syscall