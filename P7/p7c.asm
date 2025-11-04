%include "../LIB/pc_iox.inc"

extern pBin_w ; procedimientos del objeto "pbin" que se encuentra en LIB
extern pBin_b 
extern pBin_dw

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

    mov esi, 0x20D685F5
    mov eax, esi
    call pHex_dw            ;0010 0000 1101 0110 1000 0101 1111 0011 
    
    push esi
    
    mov al, 10
    call putchar
 
    mov ebx 0x4004 2021  
    pop esi
    xor esi, ebx       
            
    mov eax, esi
    call pHex_dw           ; 0100 0000 0000 0100 0010 0000 0010 0001

    mov al,10	
    call putchar
mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel