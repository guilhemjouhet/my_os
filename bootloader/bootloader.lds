ENTRY(bootloader_entry)

PHDRS
{
	headers PT_PHDR FILEHDR PHDRS;
	code PT_LOAD FILEHDR FLAGS(0x1| 0x2| 0x4);
}

SECTIONS
{
. = 0x7c00;
.text : { *(.text) } : code
. = 0x8000000;
.data : { *(.data) }
.bss : { *(.bss) }
}