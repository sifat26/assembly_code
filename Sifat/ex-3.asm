; case conversion
include emu8086.inc
.model small
.stack 100h
.data

char db ?,'$'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter a Lowercase : "
    
    mov ah,1
    int 21h
    sub al,32
    mov char,al 
      printn ""
     print "The Uppercase It Is : " 
    lea dx,char
    mov ah,9
    int 21h
    
   ret
    main endp
end main