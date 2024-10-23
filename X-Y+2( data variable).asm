.model small
.stack 100h
.data 

msg DB 'Enter value for x:$'          ; EXPRESSION ( X-Y+2)
msg1 DB 'Enter value for y:$'

.code

main Proc
      
      
      mov ax,@data
      mov ds,ax                 ;displaying this (Enter value for x:)
      mov dl,msg
      mov dx,offset msg
      mov ah,9
      int 21h    
      

      
      mov ah,1            ;taking 1st input from user value for x
      int 21h
      mov bx,ax 
      
       mov dx,10
      mov ah,2
      int 21h 
    
      mov dx,13
      mov ah,2
      int 21h
      
      mov ax,@data                ;displaying this (Enter value for y:)
      mov ds,ax
      mov dl,msg1
      mov dx,offset msg1
      mov ah,9
      int 21h 
      
      mov ah,1                 ;taking 2st input from user value for y
      int 21h
      mov cx,ax  
      
       mov dx,10
      mov ah,2
      int 21h     
      mov dx,13
      mov ah,2
      int 21h 
      
      mov dx,bx                  ;moving first input into dl ( for saving)
      mov ah,2
      int 21h
      
      mov dx,45
      mov ah,2                   ; print ( - )
      int 21h
      
      mov dx,cx
      mov ah,2                    ;moving 2nd input into dl(for saving)
      int 21h   
      
      mov dx,43                      ;print ( + )
      mov ah,2
      int 21h
                                       ;print ( 2 )
      mov dx,'2'
      mov ah,2
      int 21h
                                       ;print ( = )
      mov dx,61
      mov ah,2
      int 21h
                                      ;subtracting first and second input
      sub bx,cx                       ;converting into ascii
      add bx,48                       ;adding 2 into bl
      add bx,2
      
      mov dx,bx                        ;displaying result
      mov ah,2
      int 21h

    
     mov ah,4ch
     int 21h
     
   
    
    main endp
end main