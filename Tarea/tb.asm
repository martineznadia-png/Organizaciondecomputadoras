%include "../LIB/pc_iox.inc"

section .data
hola db 'Hola Mundo', 0xa,0

section .text
    global InvertirStr

InvertirStr:

mov edx, hola
