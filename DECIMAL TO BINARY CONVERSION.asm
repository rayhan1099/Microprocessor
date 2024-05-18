.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV BL,0
    MOV BL,AL
    MOV CX,8
LP:    
    CMP CX,0
    JE EXIT
    DEC CX
    SHL BL,1    
    JC PO
    JMP PZ
PZ:
    MOV AH,2
    MOV DL,'0'
    INT 21H
    JMP LP  
PO:
    MOV AH,2
    MOV DL,'1'
    INT 21H 
    JMP LP    
EXIT:   
    MOV AH,4CH
    INT 21H
MAIN ENDP
    END MAIN
