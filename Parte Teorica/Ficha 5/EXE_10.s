
	.data

I:	.asciiz	"Escreva um numero inteiro: "
array:	.space	40
PARES:	.asciiz	"O valor de numeros pares que foram introduzidos: "
nl:		.asciiz	"\n"
 
	.text
main:
	la $s0, array
	li $t0, 10
	li $t1, 1
	li $t2, 1
	li $t3, 2
	li $t4, 1
	li $s2, 0
	
Receber:
	li $v0, 4
	la $a0, I
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	div $s1, $t3
	mfhi $s3
	
	beq $t0, $t1, Escrever
	addi $t1, $t1, 1
	beq $s3, $t4, Receber
	sw $s1, ($s0)
	addi $s2, $s2, 1
	addi $s0, $s0, 4
	j Receber
	
Escrever:
	la $s4, array
	
	li $v0, 4
	la $a0, PARES
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, nl
	syscall
	
Escrever1:
	lw $s5, ($s4)
	
	li $v0, 1
	move $a0, $s5
	syscall
	
	li $v0, 4
	la $a0, nl
	syscall
	
	beq $t2, $s2, end
	addi $t2, $t2, 1
	addi $s4, $s4, 4
	j Escrever1
	
end:
	li $v0, 10
	syscall
