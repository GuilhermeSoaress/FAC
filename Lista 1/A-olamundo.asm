.data
msg: .asciiz "Ola Mundo\n"

.text
main:
    la $a0, msg
    syscall
    li $v0, 10
    syscall