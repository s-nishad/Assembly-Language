.model small
.stack 100h
.data

    print3 db "Enter the uppercase: $"
    print4 db "The lowercase is: $"  

.code
    main proc  
        
        mov ax, @data
        mov ds, ax
        
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