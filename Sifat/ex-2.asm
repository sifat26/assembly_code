 ; print the string
 
 .model small
 .stack 100h
 .data
 msg db "Hellow Programmer !$"
 .code
 main proc
     ; initialize ds
    mov ax,@data
    mov ds,ax
    
     ;display string
    mov ah,9
    int 21h
    lea dx,msg
     ;return to dos
    mov ah,4ch
    int 21h
    
    main endp
 
 end main