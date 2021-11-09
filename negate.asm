.model small
.stack 100h
.data

.code

main proc
    
    mov ah,1
    int 21h
    
    sub al,48d
    
    NEG al
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main