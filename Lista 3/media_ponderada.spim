.data                                   #atribuicao de valor para as variaveis

.text                                   #instrucoes do programa

main:                                   #inicio para a execucao do programa
    
    li $v0, 5                           #chamada de sistema para que leia um inteiro
    syscall                             #chamada

    li $t0, 0
    move $t2, $v0

    mtc1 $zero, $f10
    mtc1 $zero, $f14

    FOR:
        slt $t1, $t0, $t2
        beq $t1, $zero, Fim
    
        
        li $v0, 7
        syscall
        
        add.d $f14, $f14, $f0
        mov.d $f2, $f0

        li $v0, 7
        syscall        

        mul.d $f6, $f0, $f2
        add.d $f10, $f10, $f6
        

        addi $t0, $t0, 1
        j FOR
    Fim:

    
    div.d $f10, $f10, $f14
    
    mov.d $f12, $f10
    li $v0, 3
    syscall

    li $v0, 10                          #chamada de saida do programa
    syscall                             #chamada
