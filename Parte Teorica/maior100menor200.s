.data
A: .asciiz "Introduz o numero: "
B: .asciiz " A quantidade de numeros maiores que 100 e menores que 200 é : "

.text

main:

li $s0, 0 #contador1
li $s1, 0 #contador2
li $t0, 25 #limite
li $t1, 100
li $t2, 200

prog:

addi $s0, $s0, 1

li $v0, 4
la $a0, A
syscall

li $v0, 5
syscall
move $s2, $v0

bgt $s2, $t1, maior

igual:
beq $s0, $t0, fim2
j prog


maior:
blt $s2, $t2, fim
j igual

fim:
addi $s1, $s1, 1
j igual

fim2:
li $v0, 4
la $a0, B
syscall

li $v0, 1
move $a0, $s1
syscall

li $v0, 10
syscall

