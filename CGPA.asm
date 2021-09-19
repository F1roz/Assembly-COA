.Model SMALL ;Size of the program. SMall model supports one data segment and one  code segment 
             ;All data and code are near by default.

.STACK 100H  ;Stack segment
.DATA        ;Define data
    data1 DW 50 ;initialize variables [A=4]
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV DX,51d
    MOV AH,2
    INT 21H  
    MOV DX,'.'
    INT 21H
    MOV DX,34H
    INT 21h
    MOV DX,data1
    INT 21h
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
     ENDP MAIN
    
    



