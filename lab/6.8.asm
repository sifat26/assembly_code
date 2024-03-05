.model small
.stack 100h
.data
.code
   main proc
     mov cx,80
     
     do:         
         mov ah,2
         mov dx,'*'
         int 21h
     
     loop do
     
     mov ah,4ch
     int 21h

   main endp
end main