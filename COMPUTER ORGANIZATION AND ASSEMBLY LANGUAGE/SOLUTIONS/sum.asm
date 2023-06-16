[org 0x0100]
jmp start


Sum2:
    push bp
    mov  bp, sp
 
    mov  bx, [bp + 6]   
    mov  cx, [bp + 4]  
    mov  ax,[bp + 8]
    add bx, cx
    add bx,ax
    mov ax,bx
    mov [ans2] ,ax
    pop bp
ret 6

Sum1:
    push bp
    mov  bp, sp
 
    mov  bx, [bp + 6]   
    mov  cx, [bp + 4]  
    add bx, cx
    mov [ans], bx
    pop bp
    
    mov ax, [ans]
    mov bx, [ans]
    mov cx, [number+2]
    push ax
    push bx
    push cx
    call Sum2
  
ret 4

start:
xor ax, ax
xor bx, bx
xor cx, cx
xor dx, dx
mov ax,[number]
mov bx, [number+2]
push ax
push bx

	call Sum1

mov ax,0x4c00
int 0x21

number: dw 2,2
ans: dw 0
ans2: dw 0
