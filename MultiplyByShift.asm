.MODEL SMALL
.STACK 100H

.DATA
RES DB ?

.CODE
    MAIN PROC  
        MOV AX, @DATA
        MOV DS, AX
        
        ;MOV AH,1
        ;INT 21H 
        ;MOV AL, CH
        
        ;MOV AH,1
        ;INT 21H
        
        MOV AL, 4 ;num2
        MOV CH, 6 ;num1
        MOV BL, 0
        MOV RES, 0

    
        LOOP1:
        CMP CH, 0
        JE RESULT
        MOV BH, 1
        AND BH, CH
        CMP BH, 1
        JE LOOP2   
        JMP LOOP3
        
        LOOP2:
        MOV DH, AL 
        MOV CL, BL
        SHL DH, CL
        ADD RES, DH
        JMP LOOP3
         
        
        LOOP3:
        INC BL
        SHR CH,1     
         
        JMP LOOP1
    
        
        RESULT:    
        MOV AL, RES  
        MOV AH, 0
        MOV BL, 10
        DIV BL 
        
        MOV CH, AH
        MOV CL, AL
        
        MOV DL, CL
        ADD DL, 48
        MOV AH, 2
        INT 21H
        MOV DL, CH 
        ADD DL, 48
        INT 21H
    
        EXIT:
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN