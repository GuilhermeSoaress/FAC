.data                                   #atribuicao de valor para as variaveis
    overflow: .asciiz "overflow"        #atribuicao de valor para a string overflow
    pulaLinha: .asciiz "\n"             #atribuicao de valor para a string pulaLinha

.text                                   #instrucoes do programa

main:                                   #inicio para a execucao do programa    

    li $v0, 5                           #chamada de sistema para que leia um inteiro
    syscall                             #chamada                    
    move $t4, $v0                       #$t4 recebe o valor lido do usuário

    li $v0, 5                           #chamada de sistema para que leia um inteiro
    syscall                             #chamada
    move $t0, $v0                       #$t0 recebe o valor lido do usuário

    li $v0, 5                           #chamada de sistema para que leia um inteiro
    syscall                             #chamada          
    move $t1, $v0                       #$t1 recebe o valor lido do usuário 
    
    addu $t2, $t0, $t1                  #faz a soma sem sinal de $t0 com $t1 e armazena em $t2                  

    bne $t4, $zero, comSinal            #verifica a opção escolhida pelo usuário

    nor $t3, $t0, $zero                 #nega o primeiro termo
    sltu $t3, $t3, $t1                  #se menor que o resultado da soma sem sinal, quer dizer que houve oveflow 
    bne $t3, $zero, comOverflow         #se for overflow, pule para o rótulo comOverflow
    j semOverflow                       #pule para o rótulo semOverflow
    
    comSinal:                           #rótulo comSinal
        xor $t3, $t0, $t1               #faz o xor entre os dois números 
        slt $t3, $t3, $zero             #a partir do xor verifica se são de sinais diferentes
        bne $t3, $zero, semOverflow     #se são diferentes, pula para semOverflow já que contas entre números de sinais diferentes não geram overflow
        
        xor $t3, $t2, $t0               #faz o xor entre o resultado e um dos números 
        slt $t3, $t3, $zero             #a partir do xor verifica se são de sinais diferentes
        bne $t3, $zero, comOverflow     #se forem diferentes, houve overflow, e então pula para comOverflow
        j semOverflow                   #pule para semOverflow
    
    comOverflow:                        #rótulo comOverflow
        la $a0, overflow                #passa para $a0 o endereço de overflow
        li $v0, 4                       #chamada para imprimir uma string
        syscall                         #chamada
    j fim                               #pule para fim
    
    semOverflow:                        #rótulo semOverflow
        move $a0, $t2                   #move para $a0 o conteúdo de $t2
        li $v0, 1                       #chamada para imprimir um inteiro
        syscall                         #chamada
    
    fim:                                #rótulo fim

    la $a0, pulaLinha                   #passa o endereço de pulaLinha para o registrador $a0
    li $v0, 4                           #chamada pare imprimir uma string
    syscall                             #chamada

    li $v0, 10                          #chamada de saida do programa
    syscall                             #chamada
