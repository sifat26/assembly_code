.model small
.data
.code
    main proc
    
    mov dl,-1
    
    
    cmp dl,0
    jge goto:
    
    neg dl
    
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h 
    
    goto:
    add dl,48
    mov ah,2
    int 21h
        
    mov ah,4ch
    int 21h  
        
        
    main endp
end main