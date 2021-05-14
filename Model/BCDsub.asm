assume ds:data,cs:code
data segment
	opr1 db 32h
	opr2 db 45h
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
	sub al,bl
	das
	jnc here
	inc ah
	mov bh,99h
	sub bh,al
	add bh,01h
	mov al,bh
	das
here : 	mov res,al
	mov carry,ah
	mov ah,4ch
	int 21h	
code ends
end start
	