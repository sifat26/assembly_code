
.model small
.stack 100h
.data
a db "Enter a Lowercase : $"  
b db  "The Uppercase It Is : $" 
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
   mov ah,9
   lea dx,a
   int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    mov ah,2 
    mov dl,0DH 
int 21h 
mov dl,0AH 
INT 21h 
      mov ah,9
   lea dx,b
   int 21h
      
    mov ah,2
    sub bl,32
    mov dl,bl
    int 21h
    
   mov ah,4ch
   int 21h
    main endp
end main