INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
     
.CODE
    MAIN PROC
       
       MOV AH,1
       INT 21H
       MOV BL,AL
       
       SUB BL,48
       
       PRINTN
       
       MOV AH,1
       INT 21H
       MOV BH,AL
       SUB BH,48
       
       SUB BL,BH
       ADD BL,48
       
       PRINTN
       
       MOV AH,2
       MOV DL,BL
       INT 21H
       
       MOV AH,4CH
       INT 21H
    MAIN ENDP
END MAIN