.model small
.stack 100h
.data

 
msg1 DB 'Laiba$'       ;When we pass string to variable $ type
msg2 DB 'Taqdis$' 
                      ; should be at ; the end of string

.code 

 
main proc
       mov ax,@data             ;imports the address of data section
       mov ds,ax                ; move data address to access variables
       mov dl,msg1               ;access message variable and move it to dl
       mov dx, offset msg1       ;offset is used to get address of next
       
       mov ah,9                 ;service route to print string
       int 21h
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h
       
       mov dl,msg2
       mov dx,offset msg2
       
       mov ah,9
       int 21h
       
    
    mov ah, 4ch
    int 21h
    main endp
end main