[org 0x0100]

mov  ax,0
mov cx,0
mov bx,0

mov al , [num1]
add al ,[num2]
add al ,[num3]
add al ,[num4]
mov [num5],al

mov ax , 0x4c00
int 0x21

num1: dw 2
num2: dw 3
num3: db 1
num4: db 2
num5: db 0