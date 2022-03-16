
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
     
     mov dl,3
     mov cl,2
     add dl,cl 
     add dl, 44
     mov ah,2      
     
     
     int 21h
     
    
     
     
ret




