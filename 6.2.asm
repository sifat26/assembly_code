;EXP 6.8: WRITE A COUNT -CONTROLLED LOOP TO DISPLAY A ROW OF 80 STARS. CODE-EXAMPLE:
.model small
.stack 100h
.data
msg1 db "Tanvir Ahmmed Sifat IT20026$"
msg2 db 10,13,"$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov ah,9
 lea dx,msg1
 int 21h
 lea dx,msg2
 int 21h
 mov cx,80 
 jcxz exit
 L:
 mov ah,2
 mov dx,"*"
 int 21h
 loop l
 
 exit:
 
 mov ah,4ch
 int 21h
 
 main endp
end main