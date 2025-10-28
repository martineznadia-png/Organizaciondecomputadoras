%include "../LIB/pc_iox.inc"

section .text

    global _start

_start:

    call getche ;ingresar el numero

    sub al, 0x30 ;Se le resta un 0 en hexadecimal
    cmp al, 5
    jae .mayor

    mov edx, msg 
    call puts
    jmp .fin

    .mayor: mov edx, msgg
    call puts

    .fin: mov eax, 1  ;fin del programa
    int 0x80 

section data
msg db ' Es menor que 5', 0xa,0
msgg db ' Es mayor que 5', 0xa,0