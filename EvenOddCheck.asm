.model small
.stack 100h
.data
    msg1 db "Enter the number $"
    msg2 db 10,13, "This is even no $"
    msg3 db 10,13, "This is odd no $"
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, msg1
        int 21h
        
        mov ah, 1
        int 21h
     
        and al, 1
        cmp al, 0
        je even
        jne odd
        
        even:
        mov ah, 9
        lea dx, msg2
        int 21h
        jmp exit_prog
        
        odd:
        mov ah, 9
        lea dx, msg3
        int 21h
        
        exit_prog:
        mov ah, 4ch
        int 21h
        
        
    main endp
end MAIN

;create by 1805039