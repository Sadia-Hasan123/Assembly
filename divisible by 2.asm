                                    
include 'emu8086.inc'
 
 mov bx,0
 mov ax,0
 
 PRINTN 'Enter number'     

 p1:
     mov ah,01h
     int 21h
      
     cmp al,13
     je label1 
     
     sub al,'0'
     mov [bx],ax
     inc bx
     loop p1
 
 label1:
     printn
     dec bx
     mov al,[bx]
     
     cmp al,2
     je func1
      
     cmp al,4
     je func1
     
     cmp al,6
     je func1
     
     cmp al,8
     je func1
     
     cmp al,0
     je func1 
     
     printn 'Not Divisible by 2'
     ret    
     
 
 func1:
     printn 'Divisible by 2'
     ret
     