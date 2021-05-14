assume cs:code,ds:data,es:extra
data segment
    source db 11h,22h,33h,44h
    status dw 0000h
data ends
extra segment
    destin db 11h,22h,35h,44h
extra ends
code segment
org 0100h
start:
    mov ax,data
    mov ds,ax
    mov ax,extra
    mov es,ax

    mov cx,0004h
    inc cx
    mov si, offset source
    mov di, offset destin
    cld
repe cmpsb
    mov status,cx
    mov ah,4ch
    int 21h
code ends
end start