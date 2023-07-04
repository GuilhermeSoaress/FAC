.data
quebra_linha: .asciiz "\n"
espaco: .asciiz " "
.text
main:
 addi $v0, $0, 5 
 syscall 
 move $s0, $v0 
 move $t1, $zero 
whileLinha:
 move $t2, $zero
 addi $t1, $t1, 1 
 bgt $t1, $s0, secondPiramid 
whileColuna:
 beq $t2, $t1, endWhileColuna
 move $a1, $t1 
 jal zeroing 
 addi $v0, $0, 1
 add $a0, $0, $t1
 syscall 
 addi $t2, $t2, 1
 addi $v0, $0, 4 
 la $a0, espaco
 syscall
 j whileColuna
endWhileColuna:
 li $v0, 4
 la $a0, quebra_linha
 syscall 
 j whileLinha 
secondPiramid:
 li $v0, 4 
 la $a0, quebra_linha
 syscall
 move $t1, $zero 
whileSecondPiramidLinha:
 move $t2, $zero 
 addi $t1, $t1, 1 
 bgt $t1, $s0, exit 
whileSecondPiramidColuna:
 addi $t2, $t2, 1 
 bgt $t2, $t1, endWhileSecondPiramidColuna 
 move $a1, $t2 
 jal zeroing 
 addi $v0, $0, 1
 add $a0, $0, $t2
 syscall 
 addi $v0, $0, 4 
 la $a0, espaco
 syscall 
 j whileSecondPiramidColuna
endWhileSecondPiramidColuna:
 li $v0, 4 
 la $a0, quebra_linha
 syscall 
 j whileSecondPiramidLinha 
zeroing:
 addi $t0, $zero, 10 
 bge $a1, $t0, return 
 addi $v0, $0, 1 
 add $a0, $0, $zero
 syscall 
return:
 jr $ra 
exit:
 li $v0, 4 
 la $a0, quebra_linha
 syscall 
 li $v0, 10
 syscall