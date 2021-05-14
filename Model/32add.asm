assume ds:data,cs:code
data segment
	opr1 dd 12345678h
	org 0010h
	opr2 dd 55555555h
	org 0020h
	carry db 00h
	res dd ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	
	mov ax,word ptr opr1
	mov bx,word ptr opr2
	add ax,bx
	mov word ptr res,ax
	mov ax,word ptr opr1 + 2
	mov bx,word ptr opr2 + 2
	adc ax,bx
	mov word ptr res + 2,ax
	jnc here
	mov carry,01h
here : 	mov ah,4ch
	int 21h
code ends
end start