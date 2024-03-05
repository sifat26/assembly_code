
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
 mov bl,30h
 do:
 mov ah,1
 int 21h
 inc bl
 cmp al,20h
 je show
 jmp do
 show:
 mov ah,2
 sub bl,1
 mov dl,bl
 int 21h
 exit:
 
 mov ah,4ch
 int 21h
 
 main endp
end main