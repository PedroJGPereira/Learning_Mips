
	.data

array:	.space	40
Q:	.asciiz	"Escreva um numero inteiro: "
nl:	.asciiz	"\n"

	.text
main:
	la $t0, 10
	li $t1, 0
	la $s0, lista
	li $t2, 0
	
leitura:
	addi $t1, $t1, 1
	
	li $v0, 4
	la $a0, Q
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, ($s0)
	addi $s0, $s0, 4
	beq $t1, $t0, mostrar
	j leitura
	
mostrar:
	la $s0, lista

mostrar1:
	addi $t2, $t2, 1
	lw $s4, ($s0)
	
	li $v0, 1
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, nl
	syscall
	
	addi $s0, $s0, 4
	beq $t2, $t0, end

	j mostrar1
	
end:
	li $v0, 10
	syscall
	
