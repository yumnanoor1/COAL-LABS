.model small
.stack 100h
.data      

msg1 DB 10,13, "Enter First Number:$"
msg2 DB 10,13, "Enter Second Number:$"
msg3 DB 10,13, "Work hard:$"
msg4 DB 10,13, "Satisfactory:$"  
 
.code

main proc
 
        mov ax, @data
        mov ds, ax 
      
        mov dx, offset msg1
        mov ah, 9
        int 21h 
        
        mov ah, 1
        int 21h 
        mov cl, al 
        
        cmp cl,53
        jg label1 
        
        mov ax, @data
        mov ds, ax 
      
        mov dx,offset msg3
        mov ah,9
        int 21h 
        
        mov ah,4ch
        int 21h
       
        label1:  
        mov ax,@data
        mov ds,ax
      
        mov dx, offset msg4
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h 
        
        main endp 

end main