
.MODEL SMALL        ; Size of the program. Small model supports one data segment and one code segment.

                    ; All data and code are near by default.

.STACK 100H		    ; Stack segment [Temporary storage of addresses]

.DATA 			    ; Define data

    data1 DW   3      ; initialize variables [A=2]
    
    
.CODE			    ; Code segments
MAIN PROC		    ; main procedure starts
    	
	MOV AX,@DATA	; initialize DS
	MOV DS, AX
    
    ;How to print a single character
    
    MOV DX,49d      ;49 decimal value represents character '1' in ASCII
    
    MOV AH,2        ; AH=2, value used for print function
    INT 21H         ; int 21h means, call the interrupt handler, executes the function mentiond in AH
            
    
    MOV DX,32h      ; 32 hexa value is eqal to 50 in decimal and represents character '2' in ASCII
    INT 21H
    
    MOV DX,data1    ;65 decima value represents character 'A' in ASCII
    INT 21h
    
    MOV DX,'B'
    INT 21h
    ; Remember Every time we want to print, the value of AH should be 2 
    ; but we did it once. as we never changed the value of AH till this far
    ; so we just call te interruption 21h to print the value in consol  

    
; exit to DOS
	MOV AH, 4CH
	INT 21H
	
MAIN ENDP
	ENDP MAIN
	