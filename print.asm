print:
    pusha
print_char:
    mov al, [bx]
    cmp al, 0
    je print_exit

    mov ah, 0x0e
    int 0x10

    add bx, 1
    jmp print_char
print_exit:
    popa
    ret
