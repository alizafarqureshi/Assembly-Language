print macro p1
mov dl,p1   
mov ah,02
int 21h  
endm 
result  macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 
      
                 
;program to find Multiplication of Two Numbers
.model small
.stack 100h
.data   
   string1 db "Please Enter a Number:",0ah,0dh,"$"     
   string2 db  0ah,0dh,"Please Enter Second Number:",0ah,0dh,"$" 
   
   newLine db 0ah,0dh,"$"
      
   x db ?
   y db ?
.code  
main proc

;taking value from db
mov ax,@data
mov ds, ax

;taking first number from user
result string1
mov ah ,1
int 21h
mov x , al
mov cl,al
xor ch,ch
sub cx,48

;taking 2nd no from user 
result string2
mov ah , 01
int 21h
;adding and subtracting 
mov y ,al 
sub y,48

result newLine

mov ax,cx
mov bl,y
;multiplying
mul bl

mov cl,al
mov ch,ah 

add cl ,48
add ch,48          


;get result
add y , 48 
print x 
print "*"
print y
print "="
print cl 
print "."
print ch


mov ah,4ch
int 21h 
    
main endp
end main



