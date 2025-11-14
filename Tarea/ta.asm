%include "../LIB/pc_iox.inc"

section .data
cadena db 'cadena de texto', 0xa,0

section .text

    global _start


PrintStr:
    push eax
    push ebx

    .leer:
        mov al,[ebx]
        cmp al, 0
        je .fin 
        
        push eax
        call putchar
        add esp,4
        inc ebx
        jmp .next

    .fin: 
        pop ebx
        pop eax
        ret

_start:

mov ebx, cadena
call PrintStr

mov eax,1
int 0x80