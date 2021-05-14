assume cs:code,ds:data
data segment
	src db 11h,12h,13h,14h,15h
	org 0010h
	dest db ?
data ends
code segment
org 0100h
start:	mov ax,data
	mov ds,ax
		
	mov si,offset src
	mov di,offset dest
	mov cx,05h
loop1:	mov al,[si]
	mov [di],al
	inc si
	inc di
	loop loop1
	mov ah,4ch
	int 21h
code ends	
end start	