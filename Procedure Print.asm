.model small
.stack 100h
.data

.code

print proc
    mov ah,2
    int 21h
    
    ret
    print endp
main proc
    
    mov dl,'2'
    
    call print

    
    mov ah,4ch
    int 21h
    main endp

end main 