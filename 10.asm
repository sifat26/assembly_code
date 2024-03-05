.model small
.stack 100h
.data 
a db 'Tanvir Ahmmed Sifat IT20026$'
b db 10,13,'$'
mg1 db 10,13,'Enter a hex digit $'
mg2 db 10,13,'In decimal is it $'
mg3 db 10,13,'Do you want to do it again $'
mg4 db 10,13,'Illegal character. enter 0-9 or A-F $'
.code 
main proc
mov ax,@data
mov ds,ax
mov ah,9
 lea dx,a
 int 21h
 lea dx,b
 int 21h 
again:
mov ah,9
lea dx,mg1 
int 21h
mov ah,1
int 21h
mov bl,al
jmp do 
do:
cmp bl,'9'
jg hex
je num
jl num
hex:
cmp bl,'F'
jg illegal
mov ah,9
lea dx,mg2
int 21h 
mov dl,49
mov ah,2
int 21h
mov ah,2
sub bl,17
mov dl,bl
int 21h
jmp inp
inp:
mov ah,9
lea dx,mg3
int 21h
mov ah,1
int 21h
mov cl,al
cmp cl,'Y'
je again
cmp cl,'y'
je again
jmp exit 
num:
cmp bl,'0'
jl illegal
lea dx,mg2 
int 21h
mov ah,9
int 21h
mov dl,bl 
mov ah,2
int 21h 
jmp inp
illegal:
lea dx,mg4
mov ah,9
int 21h
mov ah,1
int 21h
mov bl,al
jmp do
exit:
mov ah,4ch
int 21h 
main endp
end main