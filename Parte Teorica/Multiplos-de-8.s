          .data
ArrayA:   .word 0, 1, 2, 3, -4, 10, 8, 12, 5, 7, 11, -3
tamArray: .word 12
n1:       .asciiz "\n"
          .text
main:
la $s0, ArrayA
lw $s1, tamArray
li $s2, 0
li $s3, 8
li $s4, 0

cycle:

lw $s5, ($s0)

div $s5, $s3
mfhi $s6

beq $s6, $s4, multiplos8
addi $s0, $s0, 4
addi $s2, $s2, 1
beq $s2, $s1, end
j cycle

multiplos8: 

li $v0, 1
move $a0, $s5
syscall

li $v0, 4
la $a0, n1
syscall

addi $s0, $s0, 4
addi $s2, $s2, 1
j cycle

end:

li $v0, 10
syscall

