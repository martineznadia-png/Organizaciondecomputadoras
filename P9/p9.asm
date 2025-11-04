%include "../LIB/pc_iox.inc"

section .data
msg db 'tamaño del vector', 0xa, 0 
msg1 db 'capturar valor del areglo', 0xa,0 

section .text 

    global _start

_start:

    mov edx, msg 
    call puts 

    call getche ;captura el tamaño del vector 
    mov ah, al 
    sub ah, 0x30 
    mov ecx, ecx

    leeVertor: cmp ecx, 10 
               je leeVertor
               jmp .finLeer

               mov edx, msg1 ;capturar elemento del arreglo 
               call puts 

    .finLeer: mov eax,1
               int 0x80 
    


