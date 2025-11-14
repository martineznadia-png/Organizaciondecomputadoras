%include "../LIB/pc_iox.inc"

section .data
cadena db 'cadena de texto', 0xa,0

section .text

    global PrintStr

PrintStr:

mov edx, cadena
call PrintStr

mov eax,1
int 0x80