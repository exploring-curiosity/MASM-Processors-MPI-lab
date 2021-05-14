assume ds:data,cs:code
data segment
	opr1 db 12h
	opr2 db 35h
	res db ?
	carry db ?
data ends
code segment
org 0100h
start :
	mov ax,data
	mov ds,ax
	mov ah,00h
	mov al,opr1
	mov bl,opr2
	add al,bl
	daa
	jnc here
	inc ah
here : 	mov res,al
	mov carry,ah
	mov ah,4ch
	int 21h	
code ends
end start
	