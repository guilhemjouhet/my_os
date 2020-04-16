;;;;;;;;;;;;;;;;;;; OS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov al, 0x41		;0x41 is "A" ASCII code
mov ah, 0xe      	;parameter for int0x10 function
int 0x10
