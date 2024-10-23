.model small
.stack 100h
.data          
.code
             main proc 
                mov ah,1         ;input
               
                int 21h 
                mov bl,al
                
                mov ah,1           ;input
                int 21h 
                mov cl,al
                
                mov ah,1
                int 21h             ;input
                mov dl,al
                
                add bl,al
                sub bl,48 
                
                add bl,cl
                sub bl,48
                
                
                mov dl ,bl
                mov ah,2              ;result add 3 number
                int 21h
                
                
               
                
                mov ah,4ch
                int 21h
                main endp
end main