[org 0x100]
jmp main
data: dw 2, 2, 1, 2 ,4 ,3, 1,3,3,4
size: dw 10
median: dw 0
mode: dw 0
count : dw 0
count2: dw 0
number: dw 0,0,0,0
bubbleSort:
mov cx,10
outerloop:
mov bx,0
innerloop:
mov ax,[data +bx ]
cmp ax, [data + bx+2]
jbe noswap
mov dx , [data + bx+2]
mov [data + bx+2],ax
mov [data + bx],dx
noswap:
add bx,2
cmp bx,18
jne innerloop
sub cx,1
cmp cx,0
je outerloop
ret
calculateMode: 
call bubbleSort
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
mov cx,9
looop:
;mov dx,[count]
cmp [count2],dx
jb coount
add bx,2
looop1:
mov dx,0


mov ax,[data+bx]
looop2:
    add bx,2
    add dx,1
    
    cmp [data+bx+2],ax 
    je  looop2
    sub cx,1
    cmp cx,0
   jne looop
   
coount:
     
     mov [count2],dx
     mov [number],ax
     cmp cx,0
     jne looop1

ret
main:
call calculateMode
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
mov ax,[number]
mov bx,[count2]


mov ax, 0x4c00
int 0x21
