.model small
.stack 100h
.code  
str1 db 'hello$'
str2 db 'How $'
str3 db 'you$'
.data
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset str1
    mov ah,09
    int 21h
    
    mov dx,offset str3
    mov ah,09
    int 21h
    
    mov dx,offset str2
    mov ah,09
    int 21h
    
    
    main endp
enterkey proc
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,13
    int 21h
    ret
    endkey endp  

end main
    
    
    
    
    
    