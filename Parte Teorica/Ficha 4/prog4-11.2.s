	.data	

Q:		.asciiz	"Escreva um valor inteiro: "
Ma:		.asciiz	"O maior valor apresentado foi: "
Me:		.asciiz	"O menor valor apresentado foi: "
NEWLINE: 	.asciiz       "\n"
	
	.text
main:
	li $t0, -1		
	
	li $t0, 4		
	la $a0, Q	
 	syscall

	li $v0, 5 			
	syscall 			
	
	move $s2, $v0
	move $s3, $v0
	
ciclo:
	li $s0, 4
	la $a0, Q
	syscall

	li $v0, 5 					
	syscall 					
	
	beq $v0, $t0, RESULTADO
	bgt $v0, $s3, maior_e
	bgt $v0, $s2, menor_e
	j code

maior_e:
	move $s3, $v0
	j ciclo
	
menor_e:
	move $s2, $v0
	j ciclo
	
RESULTADO:
	li $v0, 4 			
	la $a0, Me			
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4 		
	la $a0, NEWLINE 	
	syscall 		
	
	li $v0, 4 			
	la $a0, Ma			
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall
	
