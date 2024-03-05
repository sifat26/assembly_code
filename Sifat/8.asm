include emu8086.inc
.model small
.stack 100h
.data 
 msg db 0ah,0dh, "The sum of "
 num1 db ?," and "
 num2 db ? ," is "  
 sum db ?,'$'
.code

main proc
    
    mov ax,@data 
    mov ds,ax  
   
     print '?'
     mov ah,1
     int 21h
     mov num1,al
        
     mov ah,1
     int 21h
     mov num2,al   
        
     add al,num1
     sub al,30h
     mov sum,al
    
    mov ah,9
    lea dx,msg
    int 21h
        
  
    ret
   main endp

end main