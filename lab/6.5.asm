.model small
.stack 100h
.data  
    even db 10,13,"e$"
    odd db 10,13,"o$"
.code
   main proc  
    
        mov ax,@data
        mov ds,ax    
        
     
        mov ah,1
        int 21h
        
        mov dl,al
        
        cmp dl,'1'
        je print_odd  
        
        cmp dl,'3'
        je print_odd 
        
        cmp dl,'2'
        je print_even   
        
        cmp dl,'4'
        je print_even 
        
        
        mov ah,4ch
        int 21h
        
        
        print_odd:
        lea dx,odd
        
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h 
        
        print_even:
        lea dx,even
        
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h
       
        
        
        

   main endp
end main