;Decimal to octal:

include 'emu8086.inc'
  
  
PRINTN 'Enter number :'

 mov ah,01h
 int 21h 
       
 
 sub al,'0'  
 mov bx,0

 printn
 print 'The octal form of the number is '
 printn
 
 
 p1:
 mov ah,0
 mov dl,8
 div dl     
 
 mov dl,al  
 mov al,ah   
 mov ah,0
 push ax    
 
 mov al,dl
 inc bx
 cmp al,0     
 je label1   
 loop p1     
 
 label1:
 mov cx,bx 
 
 
 
 func:
 pop dx       
 add dx,'0'
 mov ah,02h   
 int 21h
 loop func
 
 mov ax, 4c00h 
 int 21h
 ret
