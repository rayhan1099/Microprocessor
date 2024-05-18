INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
     a DB ?
.CODE
    MAIN PROC
       MOV AX, @DATA
       MOV DS,AX
       
       MOV AH,1
       INT 21H
       MOV a,AL
       
       SUB a,48
       
       PRINTN
       
       MOV AH,1
       INT 21H
       MOV BH,AL
       SUB BH,48
       
       SUB a,BH
       ADD a,48
       
       PRINTN
       
       MOV AH,2
       MOV DL,a
       INT 21H
       
       MOV AH,4CH
       INT 21H
    MAIN ENDP
END MAIN