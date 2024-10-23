.model small
.stack 100h
.data 
msg1 DB 10,13, "Enter First Number:$"
msg2 DB 10,13, "Enter Second Number:$"
msg3 DB 10,13, "Numbers are Equal:$"
msg4 DB 10,13, "Numbers are not Equal:$"
.code

main proc
    
    
        

        mov ax, @data
        mov ds, ax 
        mov dl,msg1
        mov dx, offset msg1
        mov ah, 9
        int 21h
        mov ah, 1
        int 21h
        mov bl, al  
        
        mov ax, @data
        mov ds, ax 
        mov dl,msg2
        mov dx, offset msg2
        mov ah, 9
        int 21h
        mov ah, 1
        int 21h
        mov cl, al 
        
        cmp bl,al ;compare the values which are in dl and cl, 6-6=0 if equal to 0 then jump
        je label1 
        ; if equal move to label1 and print msg3
        mov ax,@data
        mov ds,ax
        mov dl,msg4
        mov dx,offset msg4
        mov ah,9
        int 21h 
        
        mov ah,4ch
        int 21h
       
        label1:  
        mov ax,@data
        mov ds,ax
        mov dl,msg3
        mov dx, offset msg3
        mov ah, 9
        int 21h
        
        
        mov ah, 4ch
        int 21h 
        
        main endp 

end main