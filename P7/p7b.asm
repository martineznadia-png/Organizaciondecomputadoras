%include "../LIB/pc_iox.inc"

extern pBin_w ; procedimientos del objeto "pbin" que se encuentra en LIB
extern pBin_b 
extern pBin_dw

section        .text

        global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov eax, 0x22446688
    call pBin_dw
    ror eax, 1 

    mov al,10        ; cambio de linea
        call putchar

    mov cx, 0x3F48   
    call pBin_w      ; 0011 1111 0100 1000
    shl cx,       ; 1111 1010 0100 0000

    mov al,10        ; cambio de linea
        call putchar

    mov esi, 0x20D685F3
    call pBin_dw 

    mov al,10        ; cambio de linea
        call putchar

mov eax, 1        ;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel