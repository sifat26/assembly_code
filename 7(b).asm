
.model small
.stack 100h
.data 
 mg db 0ah,0dh, "The sum of "
 a db ?," and "
 b db ? ," is "  
 s db ?,'$'
.code

main proc
    
    mov ax,@data 
    mov ds,ax 
    mov ah,2
    mov dl,'?' 
   
    int 21h
     mov ah,1
     int 21h
     mov a,al
        
     mov ah,1
     int 21h
     mov b,al   
        
     add al,a
     sub al,30h
     mov s,al
    
    mov ah,9
    lea dx,mg
    int 21h
        
  
    mov ah,4ch
    int 21h
   main endp

end main