; taken from somewhere else, but I forget

; print function
print:
    pusha
start:
    mov al, [bx] ; bx parameter is a pointer to the string
    cmp al, 0 ; if the character is 0,
    je done	; we're done

    mov ah, 0x0e	; change to TTY mode for int 0x10
    int 0x10	; BIOS interrupt for print character in al

    ; increment pointer and continue loop
    add bx, 1
    jmp start
done:
    popa
    ret

; print new line
print_newline:
    pusha
    
    mov ah, 0x0e
    mov al, 0x0a ; newline
    int 0x10
    mov al, 0x0d ; carriage return
    int 0x10
    
    popa
    ret
