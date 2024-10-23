.model small
.stack 100h
.data
.code

main proc
    mov bx,0
    
    mov cx,3
    mov dx,48
    
    Print:
    add bx,dx
    sub bx ,48
    
    Inc dx
    
    Loop print
    
    mov cx,bx
    add cx,48
    
    mov ah,02
    int 21h
    
    
    mov ah,4ch 
    int 21h
    main endp
end main
    