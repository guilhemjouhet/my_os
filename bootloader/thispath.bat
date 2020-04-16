@set path=C:\Users\guilh_000\Documents\2020\PRO\MOOC\OS\my_OS\bootloader;%path%
nasm -f bin bootloader.asm -o bootloader.img
qemu-system-i386 -machine q35 -fda bootloader.img -gdb tcp::26000 -S
@%comspec%