clearScreen:
    pusha
    mov ah, 0x7
    mov al, 0x0
    mov bh, 0x07
    mov ch, 0x0
    mov cl, 0x0
    mov dh, 0x18
    mov dl, 0x4f
    int 0x10
    popa
    ret
