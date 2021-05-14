assume cs:code,ds:data
data segment 
	hex db 0FFh
        bcd dw  ?
data ends

code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
       
	mov ah, 00h
	mov al, hex
        mov bl, 064h
	div bl
	mov dl, al
	mov al, ah
	mov ah, 00h
	mov bl, 00Ah
	div bl
	mov cl, 004h
	rol al, cl
	mov dh,ah	
	add dh, al
	mov bcd, dx	

        mov ah,4ch
        int 21h
	code ends
end start
