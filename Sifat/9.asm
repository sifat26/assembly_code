 include emu8086.inc
.model small
.stack 100h
.data
 C1 db ?,0ah,0dh
C2 db ?,0ah,0dh
C3 db ?,'$'
.code
main proc
     mov ax,@data
     mov ds,ax
     print "Enter Three initialize: "
     mov ah,1
     int 21h
     mov c1,al
     int 21h
     mov c2,al
     int 21h
      mov c3,al 
      printn ""
     mov ah,9
     lea dx,c1
     int 21h
     
      ret
    
    main endp
end main