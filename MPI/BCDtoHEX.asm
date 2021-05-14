assume cs:code,ds:data
data segment 
	bcd db 12h
        hex db ?
data ends

code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
       
	mov al,bcd
	mov ah,00h
	mov bl,10h
	div bl
	mov dl,ah
	mov bl,0ah
	mul bl
	mov bl,dl
	add al,bl
	mov hex,al
	
        mov ah,4ch
        int 21h
	code ends
end start
