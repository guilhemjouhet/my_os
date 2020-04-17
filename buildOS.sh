#@set path=C:\Users\guilh_000\Documents\2020\PRO\MOOC\OS\my_OS;%path%
#:: -------------- clean old disk.img -------------- ::
del disk.img

#:: -------------- compile bootloader -------------- ::
make
make clean

#:: -------------- lanch disk image -------------- ::
qemu-system-i386 -machine q35 -fda disk.img -gdb tcp::26000 -S

#@%comspec%