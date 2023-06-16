[org 0x0100]

mov ax,0

mov bx,0

mov cx,0

mov dx,0



mov cx,11


adddd:
  cmp cx,0
  je stop
  mov ax,[num + bx]
  add bx,2
  sub cx,1
  cmp ax,2
  
  je adddd
  
 
   
    add dx,ax
    cmp cx,0
 
    jnz adddd
stop:
mov ax,0x4c00
int 0x21
num : dw 2,2,3,2,1,2,3,0,1,2,1



