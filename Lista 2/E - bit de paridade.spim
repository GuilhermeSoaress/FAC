bitparidade:
 addi $t2, $zero, 7 
 addi $t1, $zero, 0 
 addi $t4, $zero, 2 
 addi $v0, $zero, 0 
 add $v1, $zero, $a0 

loop:
 addi $t2, $t2, -1 
 blt $t2, $zero, paridade 
 andi $t0, $a0, 1 
 srl $a0, $a0, 1 
 bne $t0, $zero, count 
 j loop

count:
 addi $t1, $t1, 1 
 j loop

paridade:
 div $t1, $t4 
 mfhi $t3 
 beq $t3, $zero, return
 addi $v1, $v1, 128
 addi $v0, $zero, 1 

return:
 jr $ra