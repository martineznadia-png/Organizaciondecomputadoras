%include "../LIB/pc_iox.inc"

section .bss
vec resb 10 

section .data
msg1 db 'capturar valor del areglo', 0xa,0 

section .text 

    global _start

_start:

    mov esi, vec
    mov ecx, 10
    call .capturarVector

    mov al, 10
    call putchar

    mov ebx, vec
    mov ecx, 10
    call .desplegarVector

    mov eax, 1  ;fin del programa
    int 0x80 


   .capturarVector: 

        mov edx, msg1
        call puts

        push ecx
        push esi
        push eax
    .otravez: 
        call getch
        cmp al, '0'
        jb .otravez
        cmp al, '9'
        ja .otravez
        call putchar
        sub al, 30h

        mov [esi], al
        inc esi

        loop .otravez
        pop eax
        pop esi
        pop ecx
        ret

.desplegarVector:
        push ecx 
        push ebx   
        push esi

        cmp ecx, 10
        ja fin
        cmp ecx, 0
        je fin

next:
        mov al, [ebx]      ; lee del vector
        call pHex_b      ; imprime en hexadecimal
        inc ebx            ; corregido: avanzamos EBX
        loop next

fin:
        pop esi
        pop ebx
        pop ecx
        ret
 
    
                


