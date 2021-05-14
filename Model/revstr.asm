assume cs:code,ds:data
data segment
	src db 01h,10h,20h,30h,40h,50h,60h,70h,80h,90h
	count dw 000Ah
	org 0010h
	dest db ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	mov si,offset src
	add si,09h
	mov di,offset dest
	mov cx,count
loop1: 	mov al,[si]
	mov [di],al
	dec si
	inc di
	loop loop1
	
	mov ah,4ch
	int 21h
code ends
end start
	