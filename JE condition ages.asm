.model small
.stack 100h
.data

num db ?
age1 db "1)Below 13$"
age2 db "2)Above 13$"
age3 db "3)Above 20$"
                       
                       
secA db "You are kid$"
secB db "You are Teen$"
secC db "You are adult$"
     
msg1 db "Enter number: $"

nl DB 0AH,0dh,"$"
         
.code
main proc 
    mov ax,@data 
    mov ds,ax   
    
    mov dx,offset age1
    mov ah,9
    int 21h    
    
    mov dx,offset nl
    mov ah,9
    int 21h
    
    
    mov dx,offset age2
    mov ah,9
    int 21h
    
    mov dx,offset nl
    mov ah,9
    int 21h
          
          
    mov dx,offset age3
    mov ah,9
    int 21h
          
    mov dx,offset nl
    mov ah,9
    int 21h      
          
    mov dx,offset msg1
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    mov num,al
    
    cmp num,'1'
    je l1
    cmp num,'2'  
    je l2    
    
    mov dx, offset nl
    mov ah,9
    int 21h
    
    mov dx, offset secC
    mov ah,9
    int 21h
     
    mov ah,4ch
    int 21h
    l1:  
    mov dx, offset nl
    mov ah,9
    int 21h
    
    mov dx, offset secA
    mov ah,9
    int 21h 
    
    mov ax,4ch
    int 21h
    l2: 
    mov dx, offset nl
    mov ah,9
    int 21h
    
    mov dx,offset secB
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main