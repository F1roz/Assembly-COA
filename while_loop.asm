.model small
.stack 100h
.data
a db 'loop concept $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    MOV DX,0 ; char count
    MOV AH,1
    INT 21H
    
    WHILE_:
        
        CMP AL,0DH  	; CR ?
        JE END_WHILE  ;yes, exit		
        INC DX	; not CR so inc
        
        INT 21H ; read next char
        JMP WHILE_  ; loop again
    
    END_WHILE:
    
    mov ah,4ch
    int 21h
    main endp
end main
    