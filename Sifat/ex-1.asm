include "emu8086.inc"
.model small
.stack 100h
.data
.code
main proc  
    
 mov ah,2
 mov dl,"?"
 int 21h
     
  ;input character
 mov ah,1
 int 21h
 mov bl,al
   ; print new line  
 mov ah,2    
 mov dl,0dh
 int 21h
 mov dl,0ah
 int 21h
   
   ;display the character
 mov dl,bl
 int 21h   
  ;return to dos
mov ah,4ch
int 21h 
main endp
end main