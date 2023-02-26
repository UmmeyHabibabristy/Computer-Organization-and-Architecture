
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0AH,0DH,'Simple message$'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,5
    
    PRINT_LOOP:
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    inc cx
    
    
    JG PRINT_LOOP
    
    Exit:
    MOV AH,4CH
    INT 21H 
                                                                                      
    MAIN ENDP
END MAIN
         
ret
