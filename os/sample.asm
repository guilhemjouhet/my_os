;;;;;;;;;;;;;;;;;;; OS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov al, 0x20		;0x41 is " " ASCII code
mov ah, 0xe      	;parameter for int0x10 function
int 0x10

mov al, 0x3A		;0x41 is ":" ASCII code
mov ah, 0xe      	;parameter for int0x10 function
int 0x10

mov al, 0x29		;0x41 is ")" ASCII code
mov ah, 0xe      	;parameter for int0x10 function
int 0x10