assume cs:code,ds:data
data segment
	opr1 dd 20.52
	org 0010h
	opr2 dd 10.13
	org 0020h
	diff dd ?
data ends
code segment
org 0100h
start:
	mov ax,data
	mov ds,ax
	finit
	fld opr1
	fld opr2
	fsub st(0),st(1)
	fst diff
	mov ah,4ch
	int 21h
code ends
end start