[org 0x0100]
mov dx,0
jmp main
factorial :
   sub bx,1
   mul bx
   cmp bx,1
   je  b
call factorial  
ret
main:
mov ax,[x]  
mov bx,[x]
call factorial
b:
mov ax,[0x4c00]
int 0x21 

x: dw 5