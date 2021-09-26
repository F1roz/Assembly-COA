.model small
.stack 100h
.data
MY_ARRAY       DB     10 DUP(?)
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
    
    int 21h
    mov MY_ARRAY[3], al
    
    int 21h
    mov MY_ARRAY[4],al
 
    int 21h
    mov MY_ARRAY[5],al
    
   
    mov MY_ARRAY[6],'$'

    
        
    
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
    
    mov ah,2
    mov DX,0Ah
    int 21h
    mov DX,0Dh
    int 21h
    
    
    mov ah,1
    int 21h
    mov MY_ARRAY,al
 
    int 21h
    mov MY_ARRAY[1],al
    
    int 21h
    mov MY_ARRAY[2],al
    
    int 21h
    mov MY_ARRAY[3], al
    
    int 21h
    mov MY_ARRAY[4],al
 
    int 21h
    mov MY_ARRAY[5],al
    
    int 21h
    mov MY_ARRAY[6],al
    
    int 21h
    mov MY_ARRAY[7], al
 
    int 21h
    mov MY_ARRAY[8],al
    
    int 21h
    mov MY_ARRAY[9],al

    mov MY_ARRAY[11], '$'
        
    
    mov ah,2
    mov DX,0Ah
    int 21h
    mov DX,0Dh
    int 21h
    
    mov ah,9
    lea dx,MY_ARRAY
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main