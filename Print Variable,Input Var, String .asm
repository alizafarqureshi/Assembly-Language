
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

Var1 db '1'
Var2 db ?
Var3 db '1235$'

.code

Main proc 
    mov ax,@data
    mov ds,ax
    
    mov dl, Var1
    
    mov ah,2
    int 21h
    
    mov Var2,bl
    mov ah,1
    int 21h 
    
    mov dl,al
    mov ah,02
    int 21h
    
    
    mov dx, offset var3
    mov ah,9
    int 21h
    main endp
end main
    




