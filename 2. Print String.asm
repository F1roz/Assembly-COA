
.MODEL SMALL        ; Size of the program

.STACK 100H		    ; Stack segment [Temporary storage of addresses]

.DATA 			    ; Define data

    str1 DW   'First String','$' ; Multipe string can be concat to one string using comma (,) 
                                 ; but '$' sign means the end of the string. 
                                 ; Anything after that will not be a part of string
    
    str2 DW   'Second String','$'
    
    str3 DW   'Third String','$'    
    
    newLine DB 0Ah,0Dh,'$'
    
    
.CODE			    ; Code segments
MAIN PROC		    ; main procedure starts	
	MOV AX,@DATA	; initialize DS
	MOV DS, AX
    
    
    ;Print First String
    MOV ah,9h
    lea DX,str1     ;LEA (load effective address)
    int 21h 
     

    ;Print New Line
    mov ah,2
    mov DX,0Ah ; New Line (goes to next line under thr cursor)
    int 21h

    mov DX,0Dh ; Carriage Return (reset the cursor's position to the beginning of a line of text.
    int 21h
    
    ;Print Second String
    mov ah,9h
    lea DX,str2
    int 21h
    
    ;new line using string of 0Ah,0Dh
    mov AH,9h
    lea DX,newLine
    int 21h
    
    lea DX,str3
    int 21h
    
    
; exit to DOS
	MOV AX, 4CH
	INT 21H
	
MAIN ENDP
	ENDP MAIN
