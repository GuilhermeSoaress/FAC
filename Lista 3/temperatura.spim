.data
    c5: .float 5.0
    c9: .float 9.0
    c32: .float 32.0
    c273: .float 273.15
    nl: .asciiz "\n"


.text

    main:

    li $v0, 12
    syscall
    move $t0, $v0

    buffer1:
        li $v0, 12
        syscall
        beqz $v0, buffer1
        bne $v0, 10, buffer1 

    li $v0, 12
    syscall
    move $t1, $v0

    buffer2:
        li $v0, 12
        syscall
        beqz $v0, buffer2
        bne $v0, 10, buffer2 

    li $v0, 6 #lê um float retorno em $f0
    syscall
    

    li $t2, 'C'
    li $t3, 'K'
    li $t4, 'F'

    l.s $f1, c5
    l.s $f2, c9
    l.s $f3, c32
    l.s $f5, c273
    l.s $f6, c100
    

    beq $t0, $t2, verificaCelsius
    beq $t0, $t3, verificaKelvin
    beq $t0, $t4, verificaFarenheit
    j exit
    


    verificaCelsius:
        beq $t1, $t0, exit
        beq $t1, $t3, CelKelvin 
        beq $t1, $t4, CelFahrenheit
        j exit
        

    verificaKelvin:
        beq $t1, $t0, exit
        beq $t1, $t2, KelCelsius 
        beq $t1, $t4, KelFahrenheit
        j exit

    verificaFarenheit:
        beq $t1, $t0, exit
        beq $t1, $t2, FahrCelsius 
        beq $t1, $t3, FahrKelvin
        j exit

    CelKelvin:
        add.s $f0, $f0, $f5
        j print
        

    CelFahrenheit:
        div.s $f4, $f2, $f1
        mul.s $f0, $f0, $f4
        add.s $f0, $f0, $f3 
        j print

    KelCelsius:
        sub.s $f0, $f0, $f5
        j print

    KelFahrenheit:
        sub.s $f0, $f0, $f5
        div.s $f4, $f1, $f2
        mul.s $f0, $f0, $f4
        add.s $f0, $f0, $f3
        j print

    FahrCelsius:
        sub.s $f0, $f0, $f3
        div.s $f4, $f1, $f2
        mul.s $f0, $f0, $f4
        j print

    FahrKelvin:
        sub.s $f0, $f0, $f3
        div.s $f4, $f1, $f2
        mul.s $f0, $f0, $f4
        add.s $f0, $f0, $f5

    print:
        mov.s $f12, $f0
        li $v0, 2
        syscall

        la $a0, nl
        li $v0, 4
        syscall

    exit:
        li $v0, 10
        syscall
