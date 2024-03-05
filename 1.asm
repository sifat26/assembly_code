.model small
.stack 100h
.code
main proc
;display prompt
mov ah,2 ;display character function
mov dl,"?";display character is "?"
int 21h ;display it
;input a character
mov ah,1 ;read character function
int 21h ;character in al
mov bl,al ;save it in bl
;go to a new line
mov ah,2 ;display character function
mov dl,0DH ;carries return
int 21h ;esecute carries return
mov dl,0AH ;line feed
INT 21h ;execute line feed
;display character
mov dl,bl ;retrive characeter
int 21h ;execute and display it
;return to dos
;exit
mov ah,4ch ;dos exit function
int 21h ;exit to dos
main endp
end main
