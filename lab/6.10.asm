.model small
.stack 100h
.data
.code
   main proc
      
      mov bl,'0'
      
      do:
         mov ah,1
         int 21h
         mov dl,al
         cmp dl,' '
         je end_  
         inc bl
      
      
      loop do 
      
      end_:
        mov dl,bl
        mov ah,2
        int 21h
      

   main endp
end main