

include 'emu8086.inc'

 PRINTN 'Enter length oflower string'
 mov ah,1h
 int 21h  
 printn        
 
 
 print "Enter String here: "
 mov cl,al  
 sub cl,'0'  
 mov dl,cl 
 mov bx,0                 
 
 p1:
 mov ah,1h
 int 21h   
 mov [bx],ax
 inc bx  
 dec cl
 cmp cl,0  
 jne p1     
 printn
 
 mov cl,dl
 mov bx,0

 output: 
 mov dl,[bx]
 cmp dl,'a'
 jge label1 
 
 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output  

 
 label1:
 cmp dl,'z'
 jle func
 
 func:
 sub dl,32    

 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output
 printn
 
 
 PRINTN 'Enter length ofupper string'
 mov ah,1h
 int 21h  
 printn        
 
 
 print "Enter String here: "
 mov cl,al  
 sub cl,'0'  
 mov dl,cl 
 mov bx,0                 
 
 p2:
 mov ah,1h
 int 21h  
 mov [bx],ax 
 inc bx  
 dec cl
 cmp cl,0 
 jne p2     
 printn
 
 mov cl,dl
 mov bx,0

 output2: 
 mov dl,[bx]
 cmp dl,'A'
 jge label2 
 
 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output2  

 
 label2:
 cmp dl,'Z'
 jle func2
 
 func2:
 add dl,32    
 
 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output2
 printn
 
 mov ax, 4c00h 
 int 21h           
 ret