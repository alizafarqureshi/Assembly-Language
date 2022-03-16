.model small
.stack 100h
.data
    
    arr1 db '1','2','3','4'

.code

main proc
        
    mov ax,@data    
    mov ds,ax
    
    mov si,offset arr1
    mov dx,[si]
    mov ah,2
    int 21h
    
    inc si
    mov dx,[si]
    mov ah,2
    int 21h
            
    inc si
    mov dx,[si]
    mov ah,2
    int 21h
    
    inc si
    mov dx,[si]
    mov ah,2
    int 21h        
    
    
    main endp
end main