%include "../LIB/pc_iox.inc"

extern pBin_w ; procedimientos del objeto "pbin" que se encuentra en LIB
extern pBin_b 
extern pBin_dw

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

	mov al,100
	call pHex_b	; muestra en pantalla 64

	mov al,10	; cambio de linea
	call putchar

    mov al,100
	call pBin_b	; muestra en pantalla 64

    mov al,10 	; cambio de linea
	call putchar

	mov ax,0x12ab 	; presenta en pantalla 12AB
	call pHex_w

	mov al,10 	; cambio de linea
	call putchar

    mov ax,0x12ab 	; presenta en pantalla 12AB
	call pBin_w

    mov al,10 	; cambio de linea
	call putchar

	mov eax,0x76543210 ; presenta en pantalla 76543210
        call pHex_dw

	mov al,10       ; cambio de linea
	call putchar

    mov eax,0x76543210 ; presenta en pantalla 76543210
        call pBin_dw

	mov al,10       ; cambio de linea
	call putchar

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel

