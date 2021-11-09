.model small
.stack 100h
.data
a db 'Bit operation to convert small to capital: $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    
    AND al,11011111b
             
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    