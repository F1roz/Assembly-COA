.model small
.stack 100h
.data
a db 'Input First Digit  : $'
b db 10,13,'Input Second Digit : $'
c db 10,13,'Result             : $'
.code

main proc
    mov ax,@data     ;Initialize data segment into code segment, In big size register
    mov  ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
        
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,9
    lea dx,b
    int 21h
        
    mov ah,1
    int 21h
    mov bh,al
         
    mov ah,9
    lea dx,c
    int 21h  
    
    sub bl,bh               ; bl = bl - bh
    add bl,48               ; 48 ascii for value 0 
        
    mov ah,2
    mov dl,bl
    int 21h
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
  
    