.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,2
    MOV DL,"?"
    INT 21H
    MOV AH,1
    INT 21H 
    MOV BL,AL
    MOV AH,2
    MOV DL,0dh
    INT 21H
    MOV DL,0ah
    INT 21H 
    
    
    
   
    MOV DL,BL
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    
