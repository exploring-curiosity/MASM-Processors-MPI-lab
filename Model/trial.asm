assume cs:code,ds:data
data segment 
	src db 01
	org 0010h
	dest db ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
		
	mov al,src
	rol al,01h
	mov dest,al 

	mov ah,4ch
	int 21h
code ends
end start
	