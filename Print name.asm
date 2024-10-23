.model small
.stack 100h
.data
.code

main proc
    mov dl,'L'
    mov ah,02
    int 21h 
    
    mov dl,'A'
    mov ah,02
    int 21h 
    
    mov dl,'I'
    mov ah,02
    int 21h
    
    mov dl,'B'
    mov ah,02
    int 21h
    
    mov dl,'A'
    mov ah,02
    int 21h
    

    
    mov dl, 10
    mov ah,02
    int 21h    
      
    mov dl, 13
    mov ah,02
    int 21h
    
    mov dl,'T'
    mov ah,02
    int 21h
    
    mov dl,'A'
    mov ah,02
    int 21h
    
    mov dl,'Q'
    mov ah,02
    int 21h
    
    mov dl,'D'
    mov ah,02
    int 21h
    
    mov dl,'I'
    mov ah,02
    int 21h
    
    mov dl,'S'
    mov ah,02
    int 21h
    
   
    
    mov ah,4ch
   
    int 21h
    main endp
end main