.model small
.stack 100h
.data
msg1 db 'Binary Input: $'  
msg2 db 0ah,0dh,'Binary Output: $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    xor bx,bx
    ;Binary Input 
    mov ah,1
    InputWhile:
        int 21h
        cmp al,0Dh
        je EndInputWhile
        
        sub al,48d
        shl bx,1
        
        or bl,al
        jmp InputWhile
        
    EndInputWhile:
    
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    ;Binary Output 
    mov cx,16d
    mov ah,2
    OutputFor:
        ROL bx,1
        jc One 
        
        Zero:
        mov dl,'0'
        jmp print
        
        One:
        mov dl,'1'
        
        Print:
        int 21h
        
    loop OutputFor
    
    mov ah,4ch
    int 21h
    main endp
end main
    