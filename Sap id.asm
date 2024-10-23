.model small
.stack 100h
.data
.code

main proc
    mov dl,53
    mov ah,02
    int 21h 
    
    mov dl,51
    mov ah,02
    int 21h 
    
    mov dl,48
    mov ah,02
    int 21h
    
    mov dl,48
    mov ah,02
    int 21h
    
    mov dl,57
    mov ah,02
    int 21h
    
    
    mov ah,4ch
   
    int 21h
    main endp
end main