.model small
.stack 100h
.data
.code

main proc
    mov dl,'i'
    mov ah,02
    int 21h
    mov dl,'s'
    mov ah,02
    int 21h
    mov ah,4ch
   
    int 21h
    main endp
end main