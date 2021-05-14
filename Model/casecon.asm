assume ds:data,cs:code
data segment
	count dw 0005h
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	mov cx,count
loop1:
	mov ah,01h
	int 21h
	
	cmp al,60h
	jnc here
	add al,20h
	jmp here1 
here:	sub al,20h
here1: 	mov dl,al
	mov ah,02h
	int 21h
	loop loop1
	mov ah,4ch
	int 21h
code ends
end start		