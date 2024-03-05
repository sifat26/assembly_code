include emu8086.inc
.MODEL SMALL 
.STACK 100H
.CODE
MAIN PROC

mov cx,10
L: 
  printn "**********"

loop L
ret
MAIN ENDP
END MAIN