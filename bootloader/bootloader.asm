bits 16
global bootloader_entry

section .text
bootloader_entry:
;;; BASIC PRINT ;;;
	mov si, msg 		;set text loc at GP reg SI
	mov ah, 0xe      	;call int0x10 function
	call print_routine
	cli 				; no interrupts
	cld 				; all that we need to init
	
;;; LOAD MINIMALIST OS ;;;
	mov ax, 0x50 		;set storage loc
	mov es, ax
	xor bx, bx
	
	mov al, 26 			;read 2 sector
	mov ch, 0 			;cyl 0
	mov cl, 2 			;read from sector 2
	mov dh, 0			;head 0
	mov dl, 0			;drive 0
	
	mov ah, 0x02		;int 13 param
	int 0x13			;call BIOS routine
	jmp [500h + 0x18] ;0x50:0x0		;execute code that has been loaded
	
;;; END OF BOOTLOADER ;;;
	hlt ; halt the system
	
	
print_routine:
	lodsb				;load 1 char onto GP reg AL (8bit) and inc SI
	cmp al, 0			
	je is_done			;end process if al=0
	int 0x10
	jmp print_routine
is_done:
	ret	
	

;; constant and variable definitions
msg db "Welcome to My Operating System!", 0


; We have to be 512 bytes. Clear the rest of the bytes with

times 510 - ($-$$) db 0
dw 0xAA55 ; Boot Signature