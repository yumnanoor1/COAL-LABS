.model small
.stack 100h
.data
.code

main proc
    
    
    mov bl,4
    mov al,2
    
    sub al,bl
    add bl,48
    
    
    mov dl,bl
    
    mov ah,02
    int 21h    
    
    
      
    
    mov ah,4ch   
    int 21h
    main endp
end main