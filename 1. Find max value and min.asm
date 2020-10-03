;Finding maximum number and minimum number

include 'emu8086.inc'
  
 PRINTN 'How many numbers for find max'
 mov ah,1h
 int 21h  
 printn  
 
 
 print "Enter numbers: "   
 mov dx,ax 
 mov cl,al
 sub cl,'0'  
 mov bx,0    
 
 p1:
 mov ah,1h
 int 21h    
 mov [bx],ax
 printn
 inc bx
 dec cl
 cmp cl,0    
 jne p1    
 printn  
 
 mov ax,dx        
 sub ax,'0' 
 mov cl,al 
 mov bx,0 
 mov dl,[bx]
 inc bx
 
 p2: 
 mov al, [bx] 
 cmp al, dl   
 jg label1    		
 jle func
     
 label1:
 mov dl,al
 
 func:
  inc bx   
 loop p2
 
 print "max:" 
 
  mov ah,02h
 int 21h  
   
 
   printn
   
 PRINTN 'How many numbers for find min'
 mov ah,1h
 int 21h  
 printn  
 
 
 print "Enter numbers: "   
 mov dx,ax 
 mov cl,al
 sub cl,'0'  
 mov bx,0    
 
 p3:
 mov ah,1h
 int 21h    
 mov [bx],ax
 printn
 inc bx
 dec cl
 cmp cl,0    
 jne p3    
 printn  
 
 mov ax,dx        
 sub ax,'0' 
 mov cl,al 
 mov bx,0 
 mov dl,[bx]
 
 p4: 
 mov al, [bx] 
 cmp dl, al   
 jg label2    		
 jle func2
     
 label2:
 mov dl,al
 
 func2:
 inc bx   
 loop p4
 
 print "min:"
 
 mov ah,02h
 int 21h 
 
 mov ax, 4c00h 
 int 21h
 
 ret