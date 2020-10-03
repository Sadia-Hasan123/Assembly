include 'emu8086.inc'
  
 PRINTN 'How many numbers'
 mov ah,1h
 int 21h 
 printn
         
 print "Enter numbers: "   
 mov dx,ax 
 mov cl,al
 sub cl,'0'  
     
       
 
 label1:
     
     
     mov ah,01h
     int 21h
     sub al,'0'
     
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
     
     cmp al,1
     je func2
      
     cmp al,3
     je func2
     
     cmp al,5
     je func2
     
     cmp al,7
     je func2
     
     cmp al,9
     je func2  
     
 func1:
     print 'e' 
     
 dec cl
 cmp cl,0    
 jne label1
     ret  
     
     
 func2:
      print 'o'
      
 dec cl
 cmp cl,0    
 jne label1
      ret 
      
     
  
         
     
 
 
     