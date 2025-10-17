%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:

mov ebx, 0x5C4B2A60
add ebx, 0x02202471
mov eax, ebx
call pHex_dw

mov al,10
call putchar

mov eax, 1  ;fin del programa
int 0x80 