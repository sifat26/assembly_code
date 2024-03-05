.model small
.stack 100h
.data
.code
   main proc
      mov ah,1
      int 21h
      
      mov dl,bl
      
      cmp dl,0
      je goto1:
      jl goto2:
      
      mov bl,1
      
      
      mov ah,4ch
      int 21h
      
      goto1:
      
      mov bl,0
      
      mov ah,4ch
      int 21h
      
      goto2:
      
      mov bl,-1
      
      mov ah,4ch
      int 21h

   main endp
end main