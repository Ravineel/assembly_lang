data segment 
    n1 db 09h
    n2 db 02h
    c dw ?
    data ends
code segment 
    assume cs:code,ds:data
    start:
    mov ax,data
    mov ds,ax
    mov ax,0000
    mov bx,0000
    mov al,n1
    mov bl,n2
    mul n2
    mov c,ax
    code ends
end start