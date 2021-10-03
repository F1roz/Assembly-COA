.model small
.stack 100h
.data
msg db ? ;Capital to small
.code
main proc
mov ah,1
int 21h
mov bl,al
 
add bl,32
mov ch,bl
mov msg,ch
mov ah,2
mov dl,msg
int 21h
 
exit:
mov ah,4ch
int 21h
main endp
end main