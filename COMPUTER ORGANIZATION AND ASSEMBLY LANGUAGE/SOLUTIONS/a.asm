org 100h


jmp start

odd:
mov ah,9
mov dx,od
int 21h
jmp sortng

start:
mov ah,9
mov dx,msg;
int 21h

mov ah,1 
int 21h
mov [chk],al

mov dl, 10 
mov ah, 02h
int 21h
mov dl, 13  
mov ah, 02h
int 21h

mov dx,0
mov ax,[chk]
mov cx ,2
div cx

cmp dx ,0
jne odd

mov ah,9 
mov dx,evn
int 21h

mov ax ,0
mov bx ,0
mov cx ,0
mov dx ,0

sortng:
        
mov dl, 10 
mov ah, 02h
int 21h
mov dl, 13  
mov ah, 02h
int 21h

mov ah,9 
mov dx,entarrmbr;
int 21h

mov dl, 10 
mov ah, 02h
int 21h
mov dl, 13  
mov ah, 02h
int 21h

mov bx,0

l1: 
mov ah,1 
int 21h
mov [arr + bx],al
add bx ,2
cmp bx, 20
jne l1

mov bx , 0
mov cx ,  10

loop1:  
    mov bx , 0

        loop2:
                mov ax , [arr +bx ]
                cmp ax , [arr + bx+2]
                jbe loop3
                mov dx , [arr + bx+2]
                mov [arr + bx+2] , ax
                mov [arr + bx] , dx

        loop3:
                add bx , 2
                cmp bx , 20
                jne loop2
  


    sub cx , 1
    jnz loop1 
     
mov ax ,0
mov bx ,0
mov cx ,0
mov dx ,0
mov si ,  0 
    
MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h    
      
      
    mov ah,9
    mov dx,sort  
    int 21h
    
MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h
    
    mov bx ,0
  parrt:    
 
    
  
  mov ah, 02h
  mov dl , [arr + bx ]
  int 21h
  
add bx,2
cmp bx, 20
jne parrt 




mov ax ,0x4c00
int 21h


chk : dw 0
arr: dw 0,0,0,0,0,0,0,0,0,0
msg db "enter 1 nmbr $"
evn db " even nmbr $"
od db " odd nmbr $"
entarrmbr db "enter 10 nmbrz $"
sort db "sorted aray : $"

