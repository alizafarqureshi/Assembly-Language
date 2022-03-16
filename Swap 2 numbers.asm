.model small
.stack 100h
.code
main proc
    
    mov ax, '2'
    mov bx, '3'
    
    push ax
    push bx
    
    
    pop ax
    
    pop bx
    
    mov dx,ax
    mov ah,02
    int 21h
    
    mov dx,bx
    mov ah,02
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main