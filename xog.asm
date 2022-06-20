[org 0x7c00]
boot:
	call clearScreen

	mov bx, message
	call print
	jmp $

%include "print.asm"
%include "clearScreen.asm"

message db "    xog", 0

; padding
times 510 - ($-$$) db 0
dw 0xaa55
