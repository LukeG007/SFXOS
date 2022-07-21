#generate binary file tree
mkdir __temp__
mkdir __temp__/binaries

#assemble boot.s file
as --32 boot/scripts/boot.s -o __temp__/binaries/boot.o

#compile kernel.c file
gcc -m32 -c kernel/kernel.c -o __temp__/binaries/kernel.o -std=gnu99 -ffreestanding -O1 -Wall -Wextra

gcc -m32 -c kernel/utils.c -o __temp__/binaries/utils.o -std=gnu99 -ffreestanding -O1 -Wall -Wextra

gcc -m32 -c kernel/char.c -o __temp__/binaries/char.o -std=gnu99 -ffreestanding -O1 -Wall -Wextra

#linking the kernel with kernel.o and boot.o files
ld -m elf_i386 -T linker.ld __temp__/binaries/kernel.o __temp__/binaries/utils.o __temp__/binaries/char.o __temp__/binaries/boot.o -o grub/boot/MyOS.bin -nostdlib

#check MyOS.bin file is x86 multiboot file or not
grub-file --is-x86-multiboot grub/boot/MyOS.bin

#building the iso file
grub-mkrescue -o MyOS.iso grub

#cleaning up the mess :)
rm -r __temp__

#run it in qemu
qemu-system-x86_64 -cdrom MyOS.iso
