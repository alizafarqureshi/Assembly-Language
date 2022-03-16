.model small
.stack 100h
.data              
   ; var1 db '1'
    var2 db ?
  ;  arr1 db 1,2,3,4   
  msg1 db "Enterr Character in capital : $" 
  msg2 db "Result : $" 
  n_line DB 0AH,0DH,"$"
.code    
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1  
    mov ah,9
    int 21h
     
    
    mov var2,dl
    mov ah,1
    int 21h
            
    mov cl,al
    
    add cl,32
    
    mov dx,offset n_line
    mov ah,9
    int 21h
    
    
    mov dx,offset msg2  
    mov ah,9
    int 21h
     
    
    mov var2,cl
    mov dl,cl
           
    mov ah,2 
    int 21h  
    
    mov ah,4ch
    int 21h
     
    main endp
end main