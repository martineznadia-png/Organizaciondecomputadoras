%include "../LIB/pc_iox.inc"

extern pBin_w ; procedimientos del objeto "pbin" que se encuentra en LIB
extern pBin_b 
extern pBin_dw

section        .text

        global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov cx, 0x3F48  
    mov ax, cx
    call pBin_dw      ; 0011 1111 0100 1000
    push cx

    mov al, 10
    call putchar

    pop cx
    shl cx, 3      ; 1111 1010 0100 0000

    mov ax, cx
    call pBin_dw 

    mov al,10        ; cambio de linea
    call putchar

mov eax, 1        ;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel