.model small
.stack 100h
.data
    print1 db "Enter the lowercase: $"
    print2 db "The uppercase is: $"
    print3 db "Enter the uppercase: $"
    print4 db "The lowercase is: $"  

.code
    main proc
        mov ax, @data
        mov ds, ax
        ;for lowercase to uppercase
        mov ah, 9
        lea dx, print1
        int 21h
        
        mov ah, 1
        int 21h
        mov bh, al 
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        mov ah, 9
        lea dx, print2
        int 21h
        
        mov ah, 2 
        sub bh, 32
        mov dl, bh
        int 21h
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h 
        
        ;for uppercase to lowercase
        mov ah, 9
        lea dx, print3
        int 21h
        
        mov ah, 1
        int 21h
        mov ch, al 
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        mov ah, 9
        lea dx, print4
        int 21h
        
        mov ah, 2 
        add ch, 32
        mov dl, ch
        int 21h
        
        mov ah, 4ch
        int 21h     
    main endp
end main
    
;created by id 1805039