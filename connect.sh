#@set path=C:\Users\guilh_000\Documents\2020\PRO\MOOC\OS\my_OS\bootloader;%path%
gdb build/bootloader/bootloader.o.elf -iex "add-auto-load-safe-path /home/guilhem/Documents/2020/PRO/my_os/.gdbinit"
#@%comspec%