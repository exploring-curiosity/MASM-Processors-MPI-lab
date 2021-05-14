; cod eto convert hex to BCD

assume cs:code,ds:data
data segment
	hex db 0FFh
	bcd dw ?
data ends
code segment
	MOV ax,data
	MOV ds,ax
	