.MODEL SMALL
.STACK 100H
.DATA
 x DB 'Tanvir Ahmmed Sifat IT20026$'
 y DB 10,13,'$'
 inmsg DB 'Enter a String of Capital Letters : $'
 outmsg DB 0DH,0AH,'The longest consecutive increasing string is : $'
.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX
 MOV AH,9
 LEA DX,x
 INT 21H
 LEA DX,y
 INT 21H
 MOV CH,0
 MOV AH,9
 LEA DX,inmsg
 INT 21H
 INPUT_1:
 MOV AH,1
 INT 21H
 CMP AL,0DH
 JE END_
 MOV CL,1
 MOV BL,AL
 MOV DH,AL
 INPUT_2:
 INT 21H
 CMP AL,0DH
 JE END_ 
 INC BL
 CMP BL,AL
 JNE INIT
 INC CL
 JMP INPUT_2
 INIT:
 CMP CH,CL
 JL UPDATE
 MOV CL,1
 MOV BL,AL
 MOV DH,AL
 JMP INPUT_2 
 UPDATE:
 MOV CH,CL
 MOV BH,DH 
 MOV CL,1
 MOV BL,AL
 MOV DH,AL
 JMP INPUT_2
 END_:
 CMP CH,CL
 JL RUPDATE
 JMP END_2 
 RUPDATE:
 MOV CH,CL
 MOV BH,DH
 JMP END_2
 END_2: 
 MOV AH,9
 LEA DX,outmsg
 INT 21H
 MOV AH,2
 MOV DL,BH
 OUTPUT:
 CMP CH,0
 JE FINISH
 DEC CH
 INT 21H
 INC DL
 JMP OUTPUT
 FINISH: 
 MOV AH,4CH
 INT 21H
 MAIN ENDP
END MAIN