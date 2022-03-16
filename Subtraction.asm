
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
                    
 mov dl,50
 mov bl,1
 sub dl,bl 
 mov ah,2
 int 21h 
           
        ;   mov dl,49
         ;  mov ah,2
          ; int 21h
           
 mov ah,4ch
 int 21h
 
                    
                    
ret




