include emu8086.inc
.model small
.stack 100h
.data
msg db "In Decimal it is: 1"
c1 db ?, '$'
.code

main proc 
    mov ax,@data
    mov ds,ax
    print "Enter a Hex Number: "
    mov ah,1
    int 21h
    sub al,17
    mov c1,al
    printn ""
    mov ah,9 
    lea dx,msg
    int 21h   
    ret
    main endp
end main
    
    
    