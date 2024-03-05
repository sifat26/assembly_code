INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA  
A DB ?
B DB ?
C DB ?
.CODE
MAIN PROC
  MOV AX,@DATA
  MOV DS,AX   
  PRINT '?' 
  MOV AH,1
  INT 21H
  MOV A,AL 
  INT 21H
  MOV B,AL
  INT 21H
  MOV C,AL
 
      MOV CX,5 
      PRINTN "" 
      L:
      PRINTN "***********"
      LOOP L
      PRINT "*** "
      MOV AH,2
      MOV DL,A
      INT 21H 
       MOV DL,B
      INT 21H
       MOV DL,C
      INT 21H
      PRINTN " ***"
      MOV CX,5  
      L1:
      PRINTN "***********"
      LOOP L1    
      
      MOV DL,07 
      INT 21H
      
     RET
    MAIN ENDP
END MAIN