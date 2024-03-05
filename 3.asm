.model small
.stack 100h
.data
cr equ 0dh
lf equ 0ah
msg1 db 'enter a lower case letter:$'
msg2 db 0dh,0ah,'in upper case it is:'
char db ?,'$'
.code
main proc
;initialize ds
mov ax,@data ;get segment
mov ds,ax ;initialize ds
;print user prompt
lea dx,msg1 ;get first message
mov ah,9 ;display string function
int 21h ;display first message
;input a character and convert to upper case
mov ah,1 ;read character function
int 21h ;read a small letter into al
sub al,20h ;convert to upper case
mov char,al ; and store it
;display on the next n line
lea dx,msg2 ;get second message
mov ah,9 ;display string function
int 21h ;display message and upper case
;dos exit
exit:
mov ah,4ch
int 21h
main endp
end main
