.model small
.stack 100h
.data
.code
    main proc
    
    mov ax,5
    mov bx,6
    
    cmp ax,bx
    jg goto
    mov cx,bx
    mov dx,cx
    add dx,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    goto:
        mov cx,ax
        mov dx,cx
        add dx,48
        mov ah,2
        int 21h
    
    
    main endp
end main
            