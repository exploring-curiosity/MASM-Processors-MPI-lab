
; program for multiplying 2 , 16 bit numbers

assume cs:code,ds:data
data segment
	opr1 dw 1001h
	opr2 dw 2012h
	res dd ?
data ends
code segment
	org 0100h
start:	mov ax,data
	mov ds,ax

	mov ax,opr1
	mov bx,opr2
	mul bx
	mov word ptr res,ax
	mov word ptr res+2,dx
	mov ah,4ch
	int 21h
	code ends
end start