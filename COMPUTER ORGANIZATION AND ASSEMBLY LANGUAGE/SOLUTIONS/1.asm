[org 0x0100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0

mov ch,5


main:
 mov ax,[num + bx]
 add dl,al
 add  bx,1
 sub ch,1
 jnz main


mov ax,0x4c00
int 0x21


num : db 1,2,3,1,2 




