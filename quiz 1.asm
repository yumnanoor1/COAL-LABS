                                                     ;Solve y-x+3


.model small
.stack 100h
.data
.code

main proc
    
      mov ah,01
      int 21h
      mov cx,ax
      
      mov dl,45
      mov ah,02
      int 21h
      
           
      mov ah,01
      int 21h
      mov bx,ax
      
      
      sub cx,bx
      add cx,48
      mov dx,cx
      
       ;failed
      
      
 
      
      
      mov dl,43
      mov ah,02
      int 21h
      
      
      mov dl,'3'
      mov ah,02
      int 21h
         
         
       mov dl,61
      mov ah,02
      int 21h
     
      add cx,3
      mov dx,cx 
      
      
      
      
      mov ah,02
      int 21h
    
    
    
    
    
    
    mov ah,4ch   
    int 21h
    main endp 

end main