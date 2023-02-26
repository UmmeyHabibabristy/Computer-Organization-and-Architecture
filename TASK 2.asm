
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL

.STACK 100h  

.DATA

MSG DB 0AH,0DH,'HELLO WORLD$'

MSG2 DB 'BYE WORLD$'

.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX

MOV CX,5

PRINT_LOOP:
  
LEA DX, MSG.
MOV AH, 9
INT 21h
dec cx

JG PRINT_LOOP 

MOV AH,2
MOV DL,10
INT 21h
MOV DL,13
INT 21h


LEA DX, MSG2
MOV AH,9
INT 21h


Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN`

ret




