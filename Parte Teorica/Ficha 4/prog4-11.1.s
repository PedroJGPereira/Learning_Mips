
	.data	

Q:	.asciiz	"Escreva um valor inteiro: "
	
	.text
main:
	li $s0, -1
	

ciclo:
	li $v0, 4
	la $a0, Q
	syscall
	
	li $v0, 5 			
	syscall 			
	
	beq $v0, $t0, RESULTADO
	add $s1, $s1, $v0
	j ciclo

RESULTADO:
	li $v0, 1
	move $a0, $s1
	syscall

	li $v0,10 
	syscall