BUILD_DIR=build
BOOTLOADER=$(BUILD_DIR)/bootloader/bootloader.o
OS=$(BUILD_DIR)/os/sample.o
DISK_IMG=disk.img

all: bootdisk

.PHONY: bootdisk bootloader os

bootloader:
	make -C bootloader

os:
	make -C os

bootdisk: bootloader os
#initialise disk image to 0s
	dd if=/dev/zero of=$(DISK_IMG) bs=512 count=2880
#first sector is bootloader
	dd conv=notrunc if=$(BOOTLOADER) of=$(DISK_IMG) bs=512 count=1 seek=0
#second sector is OS
	dd conv=notrunc if=$(OS) of=$(DISK_IMG) bs=512 count=1 seek=1
	
clean:
 	make -C bootloader clean
	make -C os clean