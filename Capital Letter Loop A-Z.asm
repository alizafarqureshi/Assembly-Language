
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
  msg db "Hardcoded value : $"
.code
main proc

mov ax,@data
mov ds,ax

mov dx,offset msg     ; For Printing Message
mov ah,9
int 21h

mov cx,26             ; loop from 65 ascii code to 26 further 
mov dx,65   

L1:
mov ah,2              ;loop condition
int 21h

add dx,1              ;increment in ascii code
;end loop
Loop L1  ;applying loop

mov ah,4ch
int 21h   
    
    main endp 
end main