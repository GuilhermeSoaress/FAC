multfac:
#pre-passos:
    addi $t4, $zero, 32
    
    slt $t8, $a0, $zero
    slt $t9, $a1, $zero

    beq $t8, $zero, verificando_a1   
    nor $a0, $a0, $zero
    addi $a0, $a0, 1

verificando_a1:
    beq $t9, $zero, passo1
    nor $a1, $a1, $zero
    addi $a1, $a1, 1

#passo 1:
    passo1:
    move $t0, $zero

#passo 2:
    move $t1, $a1

#passo 3:
passo3:
    andi $t2, $t1, 1
    beq $t2, $zero, passo4
    add $t0, $t0, $a0

#passo 4:
passo4:
    andi $t3, $t0, 1 
    srl $t0, $t0, 1
    srl $t1, $t1, 1

    sll $t3, $t3, 31
    add $t1, $t1, $t3

#passo 5:
    addi $t4, $t4, -1
    beq $t4, $zero, sinal
    j passo3

#retorno:
sinal:
    beq $t8, $t9, fim
    nor $t1, $t1, $zero
    nor $t0, $t0, $zero    
    addi $t1, $t1, 1

fim:
    mthi $t0
    mtlo $t1
    
    jr $ra
