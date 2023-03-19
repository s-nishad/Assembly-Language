.MODEL SMALL
.STACK 100H

.DATA
    letter1 DB ?
    letter2 DB ?
    message1 DB 'Enter first Character: $'
    message2 DB 10, 13, 'Enter second Character: $'
    message3 DB 10, 13, 'Output in Assending order: $'
    message4 DB 10, 13, 'Output in Decending order: $'

.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, message1
    INT 21H

    MOV AH, 1
    INT 21H
    MOV letter1, AL

    MOV AH, 9
    LEA DX, message2
    INT 21H

    MOV AH, 1
    INT 21H
    MOV letter2, AL

    MOV AL, letter1
    CMP AL, letter2
    JBE letters_are_sorted
    XCHG AL, letter2
    MOV letter1, AL

letters_are_sorted:
    MOV AH, 9
    LEA DX, message3
    INT 21H

    MOV AH, 2
    MOV DL, letter1
    INT 21H

    MOV AH, 2
    MOV DL, letter2
    INT 21H
    
    MOV AH, 9
    LEA DX, message4
    INT 21H

    MOV AH, 2
    MOV DL, letter2
    INT 21H

    MOV AH, 2
    MOV DL, letter1
    INT 21H

    MOV AH, 4CH
    INT 21H

END
