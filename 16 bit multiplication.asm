data segment 
    n1 dw 08h    ;8
    n2 dw 08h      ;8
    c dw ?
    data ends
code segment 
    assume cs:code,ds:data
    start:
    mov ax,data
    mov ds,ax
    mov ax,0000
    mov bx,0000
    mov ax,n1
    mov bx,n2
    mul n2
    mov c,ax         ;0040=64
    code ends
end start