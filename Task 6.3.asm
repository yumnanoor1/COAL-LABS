.model small
.data
.code

main proc
    mov al,4
    mov bl,2 
    
    
    MUL bl
    
    mov dx,ax
    add dx,48
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main