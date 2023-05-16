.data
	skip: .asciiz "\n"

.text
main:

	li $v0, 5
	syscall
	move $t0, $v0 
	
	li $v0, 5
	syscall
	move $t1, $v0 

	li $v0, 5
	syscall
	move $t2, $v0

	add $t4, $t1, $t2
	sub $t3, $t0, $t4 
	
	bgt $t1, $t2, saida1 #se filho1 > filho2 
	j saida8 
	
saida1:
	bgt $t1, $t3, saida2
	move $a0, $t3 
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, skip
	syscall
	li $v0, 10
	syscall

saida8:
	bgt $t2, $t3, saida3
	move $a0, $t3 
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, skip
	syscall
	li $v0, 10
	syscall

saida2: 
	move $a0, $t1 
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, skip
	syscall
	li $v0, 10
	syscall
	
saida3:
	move $a0, $t2 
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, skip
	syscall
	li $v0, 10
	syscall