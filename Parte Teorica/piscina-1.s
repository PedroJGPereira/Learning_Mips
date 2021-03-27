.data
A: .asciiz " Qual e o comprimento? "
B: .asciiz " Qual é a largura? "
C: .asciiz " Qual é a profundidade? "
D: .asciiz " A capacidade é de: "
E: .asciiz " Litros"

.text
main:

li $t0, 1000

prog:

li $v0, 4
la $a0, A
syscall

li $v0, 5
syscall
move $s1, $v0

li $v0, 4
la $a0, B
syscall

li $v0, 5
syscall
move $s2, $v0

li $v0, 4
la $a0, C
syscall

li $v0, 5
syscall
move $s3, $v0

mult $s1, $s2
mflo $s1
mult $s1, $s3
mflo $s1
mult $s1, $t0
mflo $s1

li $v0, 4
la $a0, D
syscall

li $v0, 1
move $a0, $s1
syscall

li $v0, 4
la $a0, E
syscall

li $v0, 10
syscall


