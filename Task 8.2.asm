                                                                     .model small
.stack
.data
msg1 DB 10,13,"enter  number$"

msg2 DB 10,13,"number is positive$"
msg3 DB 10,13,"numbersis not positive$"
 

.code
main proc 
   
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,09
    int 21h
    
    mov ah,01
    int 21h
    
    mov bl,al
    
   
    
    
    
    jle label1;
    
    mov dx,offset msg2
    mov ah,09
    int 21h   
    
     
   mov ah,4ch
   int 21h
    
    
   
     label1: 
     
     mov dx,offset msg3
     mov ah,09
     int 21h
     
    
   
   
   mov ah,4ch
   int 21h
    
    
    
    main endp
end main