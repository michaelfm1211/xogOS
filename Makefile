all: xogOS.bin

xogOS.bin: xog.asm
	nasm $< -f bin -o $@

.PHONY: qemu
qemu: xogOS.bin
	qemu-system-i386 -fda xogOS.bin

.PHONY: clean
clean:
	rm -rf xogOS.bin
