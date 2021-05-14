assume cs:code,ds:data,es:extra
data segment
    source db 11h,22h,33h,44h
    count dw 0004h
data ends
extra segment
    destin db ?
extra ends
code segment
    org 0100h
start:
    mov ax,data
    mov ds,ax
    mov ax,extra
    mov es,ax
    mov cx,count
    mov si, offset source
    mov di, offset destin
    cld
rep movsb
    mov ah,4ch
    int 21h
code ends
end start