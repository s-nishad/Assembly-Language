.model small                                            
.stack 100h
.data
    msg db 'Enter the Character: $'
.code
 main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,9
     lea dx,msg
     int 21h
     
     mov ah,1
     int 21h
     mov bl,al
     mov cx,80
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     top:
     mov dl,bl
     mov ah,2
     int 21h
     loop top
     exit:
     mov ah,4ch
     int 21h
 main endp
end main