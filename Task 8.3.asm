.model small
.stack 100h
.data 
msg1 DB 10,13,'Enter the number  $'
msg2 DB 10,13,'Number is Even $'
msg3 DB 10,13,'Number is Odd$'



.code
main proc
        mov ax,@data
        mov ds,ax
        mov dx, offset msg1
        mov ah ,9
        int 21h
        
        mov ah,1
        int 21h
        mov dl,al
        sub dl,48
        
        and dl,1                      
             
        jz label1                 
        
        
        mov ax,@data
        mov ds,ax
        mov dx,offset msg3
        mov ah,9
        int 21h
        mov ah, 4ch
        int 21h
        
        label1:
        
        mov ax,@data
        mov ds,ax                               
        mov dx,offset msg2
        mov ah,9
        int 21h
        
        
    mov ah,4ch
    int 21h
    
    main endp
end main