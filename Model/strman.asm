assume cs:code,ds:data,es:extra
data segment
	src db 11h,12h,13h,14h,15h
	res dw ?
data ends
extra segment 
	dest db 11h,12h,13h,44h,15h
extra ends
code segment
org 0100h
start:	mov ax,data
	mov ds,ax
	mov ax,extra
	mov es,ax
	
	mov si,offset src
	mov di,offset dest
	mov cx,05h
	inc cx
	repe cmpsb
	mov res,cx
	mov ah,4ch
	int 21h
code ends	
end start	