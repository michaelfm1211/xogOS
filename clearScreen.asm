; taken from https://stackoverflow.com/questions/22972951/cant-clear-entire-screen-in-16-bit-real-mode-assembly

clearScreen:
    pusha

    mov ax, 0x0700
    mov bh, 0x07
    mov cx, 0x0000
    mov dx, 0x184f
    int 0x10

    popa
    ret
