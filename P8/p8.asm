%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:

call getche ;ingresar el numero

cmp al, 
je @@them 
mov edx, msg 
call puts

@@them mov eax, msgg
call puts

mov eax, 1  ;fin del programa
int 0x80 

section data
msg db 'El numero es menor que 5', 0xa,0
msgg db 'El numero no es meno que 5', 0xa,0