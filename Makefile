# File              : Makefile
# Author            : Michael M <mic@hael.xyz>
# Date              : 01.09.2021
# Last Modified Date: 01.09.2021
# Last Modified By  : Michael M <mic@hael.xyz>

all: xogOS.bin

xogOS.bin: xog.asm
	nasm $< -f bin -o $@

.PHONY: qemu
qemu: xogOS.bin
	qemu-system-i386 -fda xogOS.bin

.PHONY: clean
clean:
	rm -rf xogOS.bin
