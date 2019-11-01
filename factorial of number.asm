data segment 
    n1 dw 05h;5
   
    data ends
code segment 
    assume cs:code,ds:data
    start:
    mov ax,data
    mov ds,ax
    mov ax,0000
    mov bx,0000
    mov cx,n1
    mov ax,0001
    mov dx, 0000
    l1:mul cx
    loop l1
    mov [0600], ax
    mov [0601], dx ;ax => 0078 hex => 120 decimal
    
    code ends
end start                      
