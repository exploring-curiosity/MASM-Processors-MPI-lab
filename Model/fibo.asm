assume cs:code,ds:data
data segment
	count dw 000ah
	org 0010h
	series db ?
data ends
code segment
org 0100h
start :
	mov ax,data
	mov ds,ax
	mov cx,count
	mov al,00h
	mov bl,01h
	mov si,offset series
loop1:	mov [si],al
	inc si
	mov dl,bl
	add bl,al
	mov al,dl
	loop loop1
	mov ah,4ch
	int 21h
code ends
end start
	