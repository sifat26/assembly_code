.model small
.stack 100h
.data
.code
    main proc
        
        mov ah,1
        int 21h
        mov dl,al
        
        mov ah,1
        int 21h
        mov dh,al
        
        cmp dl,dh
        jl goto
        
        mov ah,2  
        mov dl,dh
        int 21h
        
        mov ah,4ch
        int 21h
        
        goto:
            mov ah,2
            int 21h
        
        mov ah,4ch
        int 21h
        
        
        
        
        
    main endp
end main