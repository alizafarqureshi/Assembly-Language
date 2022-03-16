.model small
.stack 100h         
.data  
username db 15 DUP(?)  

id db 8 DUP(?)        

salary db 8 DUP(?)
leaves db 0           

reason db 75 DUP(?)
len dw ?              


opt1 db "Enter your username : $" 
opt2 db "Enter your id: $" 
opt3 db "Enter your salary : $"
opt4 db "Enter your total leaves this month: $"
opt5 db "-2021: $"
opt6 db "Enter your reasons for leave: $" 

msg7 db "Your Grade :$"
.code 


call main
output MACRO p1
    mov dx,offset p1
    mov ah,09h
    int 21h
endm 

 leavecheck macro p1    
    
    cmp p1,6     
    
    jg Done1
    cmp p1,4
    jg Done2
    cmp p1,4
    jle Done3
    newline 
    output msg7
    Done1:
    printchar 'D'
    jmp END
    Done2:
    printchar 'C'
    jmp END
    Done3:
    printchar 'B'
    END:       
    
 endm
 
 printchar MACRO p1
    mov dl,p1
    mov ah,02
    int 21h  
    endm

newline MACRO 
    mov dl,0ah
    mov ah,2
    int 21h
    mov dl,0dh
    mov ah,2
    int 21h
endm

inputnum MACRO p1
    local input
    mov si,0
    input:
    mov ah,1
    int 21h
    mov p1[si],al
    inc si
    cmp al,13
    jne input
endm

inputString MACRO p1
    local inputstring
    inputstring:
    mov ah,01
    int 21h
    mov dl,al
    mov p1[si],al
    inc si
    cmp dl,13
    jne inputstring  
    endm

main proc
    mov ax,@data
    mov ds,ax
    output opt1
    mov si,0
    
    inputString username
    
   newline 
   output opt2
   inputnum id
   
   newline
   output opt3
   inputnum salary 
   

   mov bx,1
   mov si,0 
   formonthleave:
   newline
   output opt4  
   
   mov dl,bh
   add dl,'0'
   mov ah,2
   int 21h    
   
   
   mov dl,bl
   add dl,'0'
   mov ah,2
   int 21h     
   
   
   inc bl
   mov al,bl
   mov ah,0
   AAA
   add bh,ah
   mov bl,al
   output opt5   
   
   
   mov ah,01
   int 21h   
   
   sub al,'0'
   mov ch,al
   add leaves,al
   leavecheck al 
   
   
   mov cl,0
   Reason1:
   
   newline
   output opt6
   inputstring
   inc cl
   cmp cl,ch      
   
   jne Reason1
   inc len 
   cmp len,12       
   
   jl formonthleave
   
   cmp leaves,24
   jl decrement
   newline
   increment:
   mov al,salary[0]
   mov cl,salary[1]
   mov bl,10      
   
   mul bl           
   add al,cl     
   
   sub leaves,24
   add leaves,al
   mov dl,leaves
   add dl,'0'
   mov ah,2
   int 21h 
   
   decrement:
   mov al,salary[0]   
   mov cl,salary[1]  
   
   mov bl,10
   mul bl
   add al,cl      
   
   
   sub leaves,24
   add leaves,al
   mov dl,leaves
   add dl,'0'      
   
   mov ah,2
   int 21h
   
  
    main endp