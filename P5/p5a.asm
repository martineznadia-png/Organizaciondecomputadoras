%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.text
	global _start       ;referencia para inicio de programa
	
_start:    

	 mov edx, msg		; edx = dirección de la cadena msg
	call puts		

	mov al,'Z'
	mov [msg],al

    mov edx, msg		; edx = dirección de la cadena msg
	call puts			; imprime cadena msg terminada en valor nulo (0)
    
    mov eax, 1
    int 0x80            ;fin del programa 

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 


