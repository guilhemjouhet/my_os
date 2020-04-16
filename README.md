# my_os
A small OS, following T U , D O H OA N G's book "O P E R AT I N G S Y S T EMS : F R OM 0 T O 1"<br>
Requirements : Windows 10 with following tools :
  - gdb
  - HxD
  - MinGW (gcc + make)
  - GNU tools for windows (coreutils 5.3.0)
  - qemu
  - nasm
  - as /dev/null is not available in windows for disk image initialisation, C:\null\zeros is a 14MB binary file full of 0s
## Project organisation
my_os<br>
:|-build<br>
:|  |-bootoader<br>
:|  |-OS<br>
:|-bootloader<br>
:|-OS<br>
## Launch
  - Build OS + create bootable floppy disk + lanch emulation (buildOS.bat)
  - Connect to emulated device through gdb (connect.bat)
