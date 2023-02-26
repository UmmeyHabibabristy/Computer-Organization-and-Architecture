
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

 A DB ?
 B DB ?
 
.CODE 
MAIN PROC 
    MOV  AX ,@DATA
    MOV DS,AX
    
    MOV  BL,'?'
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
     MOV AH,1
    INT 21H
    MOV B,AL
    
    
    MOV BH,A
    MOV CH,B
    
    ADD BH,CH
    SUB BH,48
    
    ;NEW LINE AND CARRYING
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,'T'
    INT 21H
    
    
    MOV AH,2
    MOV DL,'H'
    INT 21H
    
    
    MOV AH,2
    MOV DL,'E'
    INT 21H
    
    Mov AH,2
    MOV DL,20H
    INT 21H
            
            
    MOV AH,2
    MOV DL,'S'
    INT 21H
    
    
    
    MOV AH,2
    MOV DL,'U'
    INT 21H
    
    
    MOV AH,2
    MOV DL,'M'
    INT 21H
    
    Mov AH,2
    MOV DL,20H
    INT 21H
    
    MOV AH,2
    MOV DL,'O'
    INT 21H 

     MOV AH,2
    MOV DL,'F'
    INT 21H
    
    
     Mov AH,2
    MOV DL,20H
    INT 21H
           
     MOV AH,2
    MOV DL,A
    INT 21H
            
            
     Mov AH,2
    MOV DL,20H
    INT 21H
    
     MOV AH,2
    MOV DL,'A'
    INT 21H
    
     MOV AH,2
    MOV DL,'N'
    INT 21H
    
    

    MOV AH,2
    MOV DL,'D'
    INT 21H
    

     Mov AH,2
    MOV DL,20H
    INT 21H  
    
    
    
    MOV AH,2
    MOV DL,B
    INT 21H
    
    
     Mov AH,2
    MOV DL,20H
    INT 21H
    
    MOV AH,2
    MOV DL,'I'
    INT 21H
    
    
    MOV AH,2
    MOV DL,'S'
    INT 21H
    
     Mov AH,2
    MOV DL,20H
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
   MOV AH,4CH
   INT 21H
   MAIN ENDP
   
   
   end main 
ret





ret




