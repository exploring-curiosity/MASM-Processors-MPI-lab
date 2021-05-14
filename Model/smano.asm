assume ds:data,cs:code
data segment
	list db 11h,33h,22h,64h,06h,73h,31h,61h,43h
	count dw 0009h
	org 0010h
	res db ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	mov cx,count
	mov si,offset list
	mov bl,[si]
	inc si
	dec cx
loop1:	mov al,[si]
	cmp bl,al
	jnc here
	mov bl,al
here:	inc si
	loop loop1
	mov res,bl
	mov ah,4ch
	int 21h
code ends
end start
	

	