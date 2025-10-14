%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:

mov eax, 212322abh ;imprime en pantalla 212322ab decimal
call pHex_dw

mov al,10       ; cambio de linea
call putchar

mov eax, 0x2202471
mov ebx, 0x5C4B2A60
add ebx, eax
mov eax, ebx
call pHex_dw

mov al,10
call putchar

mov eax, 1  ;fin del programa
int 0x80 