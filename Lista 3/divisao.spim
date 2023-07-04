.data
msg1: .asciiz "Digite o dividendo (M): "    
msg2: .asciiz "Digite o divisor (Q): "
res1: .asciiz "hi = "
res2: .asciiz "lo = "
nl:   .asciiz "\n"
    .text

main:

    # $a0 : dividendo (M)
    # $a1 : divisor (Q)

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $a1, $v0

    jal divfac
    
    li $v0, 4
    la $a0, res1
    syscall

    li $v0, 1
    mfhi $a0 
    syscall

    li $v0, 4
    la $a0, nl
    syscall

    li $v0, 4
    la $a0, res2
    syscall

    li $v0, 1
    mflo $a0
    syscall

    li $v0, 4
    la $a0, nl
    syscall

    li $v0, 10
    syscall

divfac:
    #Passo 1
    # $t0 : Divisor (D)
    add $t0, $a1 ,$zero
    # $t1 : Quociente (R[63..32])
    move $t1, $a0
    # $t2 : Resto (R[32.. 0])
    add $t2, $a1, $zero
    # $t9 : contador
    addi $t4, $zero, 32

    #Passo 2
    slt $t3, $t2, $zero 
    sll $t1, $t1, 1
    sll $t2, $t2, 1
    beq $t3, $zero, passo3
    addi $t1, $t1, 1 

    #Passo 3
passo3:
    sub $t1, $t1, $t0

    #Passo 4
    slt $t3, $t1, $zero
    beq $t3, $zero, ehmaior
    slt $t3, $t2, $zero
    add $t1, $t1, $t0
    sll $t2, $t2, 1
    beq $t3, $zero, passo5
    addi $t1, $t1, 1
    j passo5

ehmaior:
    sll $t2, $t2, 1 
    ori $t2, $t2, 1
    beq $t3, $zero, passo5
    addi $t1, $t1, 1
    
    #Passo 5
passo5:
    addi $t4, $t4, -1
    beq $t4, $zero, passo6
    j passo3
    #Passo 6
passo6:
    srl $t1, $t1, 1

    #Retorno
    mthi $t1
    mtlo $t2

    jr $ra
