.model small
.stack 100h
.data
MY_W_ARRAY       DW     48d,49d,50d,51d
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dx,MY_W_ARRAY 
    int 21h
    
    ;inc MY_W_ARRAY
    mov dx,MY_W_ARRAY[2]
    int 21h  
    
    mov dx,MY_W_ARRAY[4]
    int 21h
    
    mov dx,MY_W_ARRAY[6]
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    