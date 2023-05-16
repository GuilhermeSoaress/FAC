.data
    linha: .asciiz "\n"
    sr: .asciiz "SR"
    ii: .asciiz "II"
    mi: .asciiz "MI"
    mm: .asciiz "MM"
    ms: .asciiz "MS"
    ss: .asciiz "SS"
.text

main: 
    li $v0, 5
    syscall
    move $t0, $v0

    beq $t0,$zero, SR  #nota == 0

    slti $t1, $t0, 30
    bne $t1, $zero, II 

    slti $t1, $t0, 50
    bne $t1, $zero, MI 
    
    slti $t1, $t0, 70
    bne $t1, $zero, MM 

    slti $t1, $t0, 90
    bne $t1, $zero, MS

    slti $t1, $t0, 101
    bne $t1, $zero, SS


SR: li $v0, 4
    la $a0, sr
    syscall

    li $v0, 4
    la $a0, linha
    syscall

    j exit

II: li $v0, 4
    la $a0, ii
    syscall

    li $v0, 4
    la $a0, linha
    syscall
     
    j exit

MI: li $v0, 4
    la $a0, mi
    syscall

    li $v0, 4
    la $a0, linha
    syscall

    j exit
    
MM: li $v0, 4
    la $a0, mm
    syscall

    li $v0, 4
    la $a0, linha
    syscall

    j exit

MS: li $v0, 4
    la $a0, ms
    syscall

    li $v0, 4
    la $a0, linha
    syscall

    j exit

SS: li $v0, 4
    la $a0, ss
    syscall

    li $v0, 4
    la $a0, linha
    syscall

    j exit

exit: li $v0, 10
    syscall