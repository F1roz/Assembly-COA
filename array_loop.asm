.model small
.stack 100h
.data
MY_ARRAY       DB     10 DUP(?)  
i   DB 0
.code

main proc
    mov ax,@data
    mov ds,ax
            
            
    mov ah,1
    int 21h
    mov MY_ARRAY,al
 
    int 21h
    mov MY_ARRAY[1],al
    
    int 21h
    mov MY_ARRAY[2],al
    
    
    mov MY_ARRAY[3],'$'
    
    mov ah,2
    mov DX,0Ah
    int 21h
    mov DX,0Dh
    int 21h
    
    mov ah,9
    lea dx,MY_ARRAY
    int 21h 
    
    mov ah,2
    mov DX,0Ah
    int 21h
    mov DX,0Dh
    int 21h
    
    mov cx,3
    mov SI,0        ; SI, This is the source index register.
                    ; It is of 16 bits. It is used in the pointer addressing of data
    mov ah,2
    
    level1:
    
    mov dl,MY_ARRAY[SI]
    int 21h
    inc SI
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    