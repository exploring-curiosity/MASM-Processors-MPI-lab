assume cs:code,ds:data
data segment 
	src db 10h,12h,16h,14h,15h
	org 0010h
	odd db 00h
	eve db 00h
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	
	mov dl,00h
	mov bl,00h
	mov si,offset src
	mov cx,05h
loop1: 	mov al,[si]
	ror al,01h
	jc here
	inc bl
	jmp here1
here: 	inc dl
here1: 	inc si
	loop loop1
	mov odd,dl
	mov eve,bl
	mov ah,4ch
	int 21h
code ends
end start
	