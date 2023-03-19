.MODEL SMALL
.STACK 100H
.DATA

 MSG DB 10,13,"Enter a string: $"
 MSG2 DB 10,13, "The reverse string is: $"

.CODE
    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09
        LEA DX,MSG
        INT 21H
        
        
        XOR CX,CX
        MOV AH,1
        INT 21H
       WHILE:
        CMP AL,0DH
        
        JE END_WHILE
        
        
        PUSH AX
        INC CX
        INT 21H
        
        JMP WHILE  
       END_WHILE:
        
        
        MOV AH,09
        LEA DX,MSG2
        INT 21H
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        MOV AH,2
        MOV DL,0DH
        INT 21H
        JCXZ EXIT
        
        TOP:
        POP DX
        INT 21H
        LOOP TOP
        EXIT:
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
 END MAIN