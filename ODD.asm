.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX,9
    
    TOP: 
    MOV AX,9
    
   
    MOV DL,2  
    SUB AX,CX
    
    DIV DL  
    CMP AH,1   
    JE PRINT 
    JNE F1 
    PRINT:
    MOV AH,2 
    MOV AX,9
    SUB AX,CX
    MOV DL,AL
    ADD DL,48
    INT 21H 
    F1:
    LOOP TOP
    
 MAIN ENDP
END MAIN
    