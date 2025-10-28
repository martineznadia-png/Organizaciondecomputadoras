%include "../LIB/pc_iox.inc"

extern pBin_w ; procedimientos del objeto "pbin" que se encuentra en LIB
extern pBin_b 
extern pBin_dw

section        .text

        global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov esi, 0x20D685F3
    call pBin_dw    ;100000110101101000010111110011
    push esi

    mov al, 10
    call putchar

    pop esi

    mov al,10        ; cambio de linea
    call putchar

mov eax, 1        ;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel