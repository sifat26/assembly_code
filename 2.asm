.model small
.stack 100h
.data
msg db "Hello!$"
.code
main proc
;initialize ds
mov ax,@data
mov ds,ax ;initialize ds
;display message
lea dx,msg ; get message
mov ah,9 ;display string function
int 21h ;display message
;return to dos
mov ah,4ch ;dos exit
int 21h
main endp
end main