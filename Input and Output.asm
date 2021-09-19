.model small
.stack 100h
.code

main proc
    mov ah,1     ; input
    int 21h
    
    mov bl,al
    
    mov ah,1     ; input
    int 21h
    
    mov bh,al        
    
    mov ah,2     ; Output
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh    ; Output
    int 21h
    
    ;exit
    mov ah,4ch
    int 21h
    
    main endp
end main
    