org 100h


jmp start

table:

mov cl,cl

mov ah, 02h 
mov dl , [nmbr]
int 21h

mov dx,msg3
mov ah,09h
int 21h

add ch ,1
mov cl,ch

add cl ,48

mov ah, 02h 
mov dl , cl
int 21h

mov dx,msg4 
mov ah,09h
int 21h

mov ax,0
mul ch
mov [rslt],ax
mov bl,[rslt]

mov ah, 02h
mov dl , bl
int 21h

MOV dl, 10 
MOV ah, 02h
INT 21h
MOV dl, 13  
MOV ah, 02h
INT 21h

mov cl,[nmbr1]
ret

start :

mov ah,9 
mov dx,msg
int 21h

mov ah,1 
int 21h
mov [nmbr],al

MOV dl, 10  
MOV ah, 02h
INT 21h
MOV dl, 13 
MOV ah, 02h
INT 21h

mov ah,9 
mov dx,msg1
int 21h

mov ah,1  
int 21h
mov [nmbr1],al

MOV dl, 10  
MOV ah, 02h
INT 21h
MOV dl, 13  
MOV ah, 02h
INT 21h

mov ah,9
mov dx,msg2
int 21h

MOV dl, 10 
MOV ah, 02h
INT 21h
MOV dl, 13 
MOV ah, 02h
INT 21h

mov cx ,0
mov bl,5

l1 :
 add ch,1
 call table
 cmp ch ,[nmbr1]
 jne l1

mov ax ,0x4c00
int 21h

nmbr : dw 0
nmbr1 : dw 0
inrs : dw 0
rslt : dw 0
msg db "enter table number:    $"
msg1 db "enter table limit:    $"
msg2 db "                                                    $"
msg3 db "  *  $"
msg4 db "  =  $"
