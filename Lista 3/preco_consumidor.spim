.data

    zero: .double 0.0
    valor: .double 100.0

.text

main:

    # f2 = custo de fabrica
    li $v0, 7
    syscall
    mov.d $f2, $f0

    # f4 = % de lucro
    li $v0, 7
    syscall
    mov.d $f4, $f0

    # f6 = % de impostos
    li $v0, 7
    syscall
    mov.d $f6, $f0

    l.d $f8, valor # f8 = 100

# calcular lucro

    div.d $f4, $f4, $f8 # lucro = lucro(%)/100

    mul.d $f4, $f4, $f2 # lucro = lucro*custo

# calcular impostos

    div.d $f6, $f6, $f8 # impostos = impostos(%)/100

    mul.d $f6, $f6, $f2 # impostos = impostos*custo

# calcular preco

    l.d $f12, zero # f12 = preco

    add.d $f12, $f12, $f2 # preco = custo
    add.d $f14, $f4, $f6 # f14 = lucro + impostos
    add.d $f12, $f12, $f14 # preco = custo + lucro + impostos

    li $v0, 3
    syscall

#saida
    li $v0, 10
    syscall