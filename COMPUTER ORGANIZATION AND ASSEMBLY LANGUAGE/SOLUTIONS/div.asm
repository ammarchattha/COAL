[org 0x0100]
mov bx ,0

main:
mov cx,0

mov cx,10
mov ax,0

mov ax,[number+bx+0]

div  cx
add ax,dx
mov [suum+bx+0],ax
add bx,3
sub bx,1
mov dx,0
cmp bx,6
jne main

xor ax ,ax
xor bx,bx 
xor cx,cx 
xor dx,dx 

mov cx,2
moov:
 mov dx,[suum+bx]
 mov [s],dx
 mov dx,[number+bx]
 

m:
mov ax,[suum+bx]
add bx,2
cmp ax,[suum + bx ]
jb moov
sub cx,1
cmp cx,0
jne m






mov ax, 0x4c00
int 0x21
number: dw 47,72,31
suum :   dw 0,0,0
s : dw 0