#:: -------------- clean old disk.img -------------- ::
rm disk.img
#:: -------------- compile bootloader -------------- ::
make -f Makefile
make -f Makefile clean
#:: -------------- lanch disk image -------------- ::
echo "lanching qemu"
qemu-system-i386 -machine q35 -fda disk.img -gdb tcp::26000 -S