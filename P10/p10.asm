%include "../LIB/pc_iox.inc"

section .text

    global sumar

_start:

/sumar n1 + n2

push ebx 
mov ebx, esp 

mov eax, [ebx+8]
mov eax, [ebx+12]
pop ebx 

ret 
