.model small
.stack 100h
.data
.code
   main proc
      
      mov ah,1
      int 21h
      
      mov bl,2
      div bl;
      
      cmp ah,0
      je even
      
      
       mov ah,2
       mov dl,'o'
       int 21h
    
      mov ah,4ch
      int 21h
      
      
      
      even:
        mov ah,2
        mov dl ,'e'
        int 21h
        
        mov ah,4ch
        int 21h
      

   main endp
end main