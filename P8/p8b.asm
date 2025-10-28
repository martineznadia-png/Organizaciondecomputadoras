%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:



mov eax, 1  ;fin del programa
int 0x80 
