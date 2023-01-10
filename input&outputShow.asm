.MODEL SMALL
.STACK 100H
.DATA

 MSG DB 10,13,"Enter any character: $"
 MSG2 DB 10,13, "The character was: $"

.CODE
    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09
        LEA DX,MSG
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV BL,AL
        
        MOV AH,09
        LEA DX,MSG2
        INT 21H
        
        MOV AH, 2
        MOV DL,BL
        INT 21H
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
 END MAIN