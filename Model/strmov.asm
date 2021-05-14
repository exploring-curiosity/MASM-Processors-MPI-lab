assume cs:code,ds:data,es:extra
data segment
	src db 11h,12h,13h,14h,15h
data ends
extra segment 
	dest db ?
extra ends
code segment
org 0100h
start:	mov ax,data
	mov ds,ax
	mov ax,extra
	mov es,ax
	
	mov si,offset src
	mov di,offset dest
	mov cx,05h
	rep movsb
	mov ah,4ch
	int 21h
code ends	
end start	