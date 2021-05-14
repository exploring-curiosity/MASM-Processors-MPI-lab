assume ds:data,cs:code
data segment
	list db 11h,33h,22h,64h,56h,73h,31h,61h,43h
	count dw 0009h
	org 0010h
	num db ?
	pos db ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	mov cx,count
	mov si,offset list
	mov bl,00h
	mov dl,00h
	mov dh,00h
loop1:	mov al,[si]
	inc dl
	cmp bl,al
	jnc here
	mov bl,al
	mov dh,dl
here:	inc si
	loop loop1
	mov num,dl
	mov pos,dh
	mov ah,4ch
	int 21h
code ends
end start
	

	