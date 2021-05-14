assume cs:code,ds:data
data segment
    source db 11h,22h,33h,44h
    destin db ?
data ends
code segment
    org 0100h
start:
    mov ax,data
    mov ds,ax
    
    mov si,offset source
    mov di,offset destin
    mov cx,0004h
here: mov bl,[si]
         mov [di],bl
         inc si
         inc di
         loop here
    mov ah,4ch
    int 21h
code ends
end start
