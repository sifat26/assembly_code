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
mov cx,127
mov bl,0
show:
mov ah,2
inc cx
cmp cx,255
jg dos_exit
mov dx,cx
int 21h
mov dx,32
int 21h
jmp go
go:
inc bl
cmp bl,10
je print
jmp show
print: 
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
mov bl,0
jmp show
dos_exit:
mov ah,4ch
int 21h
main endp
end main