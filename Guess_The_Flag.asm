org 0x100   

mov dh, 2
mov dl, 8
mov bh, 0
mov ah, 2
int 10h 

mov dx, offset TopBorder
mov ah, 9
int 21h

mov dh, 15
mov dl, 8
mov bh, 0
mov ah, 2
int 10h 

mov dx, offset BottomBorder
mov ah, 9
int 21h  

MOV AX, 0xB800  
MOV ES, AX      

LEA  SI, tit
MOV BX, (160 * 4) + 16 * 2
MOV AH, 0Eh
MOV len, 48
CALL WriteRow

LEA SI, Subtitle
MOV BX, (160 * 8) + 18 * 2
MOV AH, 0Ah
MOV len, 45
CALL WriteRow

LEA SI, Instructions
MOV BX, (160 * 12) + 10 * 2
MOV AH, 07h
MOV len, 59
CALL WriteRow


MOV AH, 00h
INT 16h
 
mov ah, 0x06          
mov al, 0             
mov bh, 0             
mov ch, 0             
mov cl, 0             
mov dh, 24            
mov dl, 79            
int 10h  
 

;Quesetion 1


LEA SI,q1     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15


LEA SI, Row1 
MOV AH, 0x0C    
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x09     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x06
MOV BX, (160 * 7) + 64  
CALL WriteRow

 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a1      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow

LEA SI, b1      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow 

LEA SI, c1      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow

LEA SI, d1      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result
sub al , '0'
cmp al,4
jz correct; 
wrong:
    LEA SI,wor1     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,47  
    CALL WriteRow
    jmp end
correct:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17
    inc correctCount
    CALL WriteRow 

    
end:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h               


;Question 2 
MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q2     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15
LEA SI, Row1 
MOV AH, 0x02    
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x06     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x09
MOV BX, (160 * 7) + 64  
CALL WriteRow
 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a2      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,7 
CALL WriteRow

LEA SI, b2      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow 

LEA SI, c2      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,11 
CALL WriteRow

LEA SI, d2      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,8 
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result 

sub al , '0'
cmp al,1
jz correct2; 
wrong2:
    LEA SI,wor2     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,45  
    CALL WriteRow
    jmp end2 
    
correct2:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17 
    inc correctCount
    CALL WriteRow 

    
end2:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h


;Question 3 
MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q3     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15
LEA SI, Row1 
MOV AH, 0x0C    
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x07     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x02
MOV BX, (160 * 7) + 64  
CALL WriteRow
 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a3      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow

LEA SI, b3      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow 

LEA SI, c3      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,6 
CALL WriteRow

LEA SI, d3      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,7 
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow
 
LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result 

sub al , '0'
cmp al,2
jz correct3; 
wrong3:
    LEA SI,wor3     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,47  
    CALL WriteRow
    jmp end3
correct3:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17
    inc correctCount
    CALL WriteRow 

    
end3:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h 


;Question 4 

MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q4     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15
LEA SI, Row1 
MOV AH, 0x0C    
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x07     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x09
MOV BX, (160 * 7) + 64  
CALL WriteRow

 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a4      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,12 
CALL WriteRow

LEA SI, b4      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,8 
CALL WriteRow 

LEA SI, c4      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow

LEA SI, d4      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,12 
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result 

sub al , '0'
cmp al,1
jz correct4; 
wrong4:
    LEA SI,wor4     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,51  
    CALL WriteRow
    jmp end4
correct4:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17 
    inc correctCount
    CALL WriteRow 

    
end4:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h 


;Question 5 
MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q5     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15
LEA SI, Row1 
MOV AH, 0x07    
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x02     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x0C
MOV BX, (160 * 7) + 64  
CALL WriteRow
 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a5      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow

LEA SI, b5      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow 

LEA SI, c5      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,6 
CALL WriteRow

LEA SI, d5      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,7
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result

sub al , '0'
cmp al,2
jz correct5; 
wrong5:
    LEA SI,wor5     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,48  
    CALL WriteRow
    jmp end5
correct5:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17 
    inc correctCount
    CALL WriteRow 

    
end5:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h 


;Question 6 

MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q6     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15

LEA SI, Row1 
MOV AH, 0x07     
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x01     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x0C
MOV BX, (160 * 7) + 64  
CALL WriteRow
 
LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a6      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,8 
CALL WriteRow

LEA SI, b6      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow 

LEA SI, c6      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,10 
CALL WriteRow

LEA SI, d6      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,8
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result 

sub al , '0'
cmp al,1
jz correct6; 
wrong6:
    LEA SI,wor6     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,46  
    CALL WriteRow
    jmp end6
correct6:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17  
    inc correctCount
    CALL WriteRow 

    
end6:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h 


;Question 7 

MOV AX, 0xB800  
MOV ES, AX      

LEA SI,q7     
MOV BX, (160 * 1) + 1 * 2
MOV AH, 0x07    
mov len,10  
CALL WriteRow

mov len,15
LEA SI, Row1 
MOV AH, 0x0C     
MOV BX, (160 * 5) + 64  
CALL WriteRow

LEA SI, Row2 
MOV AH, 0x07     
MOV BX, (160 * 6) + 64  
CALL WriteRow

LEA SI, Row3    
MOV AH, 0x0C
MOV BX, (160 * 7) + 64  
CALL WriteRow


LEA SI, msg       
MOV BX, (160 * 10) + 20 * 2 
MOV AH, 0x07    
mov len,39  
CALL WriteRow 

LEA SI, a7      
MOV BX, (160 * 13) + 25 * 2 
MOV AH, 0x07    
mov len,8 
CALL WriteRow

LEA SI, b7      
MOV BX, (160 * 13) + 45 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow 

LEA SI, c7      
MOV BX, (160 * 15) + 25 * 2 
MOV AH, 0x07    
mov len,9 
CALL WriteRow

LEA SI, d7      
MOV BX, (160 * 15) + 45 * 2 
MOV AH, 0x07    
mov len,11
CALL WriteRow

LEA SI, e    
MOV BX, (160 * 18) + 15 * 2
MOV AH, 0x07    
mov len,52
CALL WriteRow

LEA SI, close    
MOV BX, (160 * 20) + 15 * 2
MOV AH, 0x07    
mov len,33
CALL WriteRow


mov ah,1
int 21h 
cmp al , 1Bh
jz result

sub al , '0'
cmp al,3
jz correct7; 
wrong7:
    LEA SI,wor7     
    MOV BX, (160 * 22) + 15 * 2
    MOV AH, 0x0C    
    mov len,47  
    CALL WriteRow
    jmp end7
correct7:
    LEA SI,cor     
    MOV BX, (160 * 22) + 33 * 2
    MOV AH, 0x02    
    mov len,  17  
    inc correctCount
    CALL WriteRow 

    
end7:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h 
 
result:
    mov ah, 0x06          
    mov al, 0             
    mov bh, 0             
    mov ch, 0             
    mov cl, 0             
    mov dh, 24            
    mov dl, 79            
    int 10h
        
    MOV AX, 0xB800  
    MOV ES, AX  
        
    LEA SI,re1     
    MOV BX, (160 * 8) + 24 * 2
    MOV AH, 0x07    
    mov len,13  
    CALL WriteRow 
    
    add correctCount,'0'
    LEA SI,correctCount     
    MOV BX, (160 * 8) + 39 * 2
    MOV AH, 0x07    
    mov len,1  
    CALL WriteRow 
    
    
    LEA SI,re2     
    MOV BX, (160 * 8) +  42 * 2
    MOV AH, 0x07    
    mov len,8  
    CALL WriteRow 
    
    
    
    LEA SI,re3     
    MOV BX, (160 * 10) + 22 * 2
    MOV AH, 0x07    
    mov len,30  
    CALL WriteRow
    
    
    MOV AH, 0       
    INT 16h          
    
    
    MOV AH, 4Ch      
    MOV AL, 0        
    INT 21h          



EndLoop:
JMP EndLoop


WriteRow:
    PUSH AX
    PUSH BX
    PUSH CX
    MOV CX, len      

WriteCharLoop:
    LODSB           
    MOV DI, BX       
    MOV ES:[DI], AL  
    MOV ES:[DI+1], AH
    ADD BX, 2        
    LOOP WriteCharLoop 

    POP CX
    POP BX
    POP AX 
    
    

RET 



TopBorder DB '+----------------------------------------------------------+ $'
tit Db '       WELCOME TO THE COUNTRY FLAG QUIZ        '
Subtitle  DB '  A Fun Way to Test Your Flag Knowledge        '
Instructions DB 'Press any key to start your journey into the flag trivia   '
BottomBorder DB '+----------------------------------------------------------+ $'



correctCount DB 0
Row1 DB '@@@@@@@@@@@@@@@'
Row2 DB '@@@@@@@@@@@@@@@'
Row3 DB '@@@@@@@@@@@@@@@'  
msg DB 'What country does this flag belong to? $' 
q1 db 'Question 1'
a1 db '1.Ethiopia'
b1 db '2.Colombia'
c1 db '3.Romania'
d1 db '4.Armenia' 

q2 db 'Question 2'
a2 db '1.Gabon'
b2 db '2.Bolivia'
c2 db '3.Mauritius'
d2 db '4.Rwanda'

q3 db 'Question 3'
a3 db '1.Bulgaria'
b3 db '2.Hungary'
c3 db '3.Iran'
d3 db '4.Italy'   

q4 db 'Question 4'
a4 db '1.Netherlands'
b4 db '2.France'
c4 db '3.Paraguay'
d4 db '4.Luxembourg' 

q5 db 'Question 5'
a5 db '1.Hungary'
b5 db '2.Bulgaria'
c5 db '3.Iran'
d5 db '4.Italy'
             
q6 db 'Question 6'
a6 db '1.Russia'
b6 db '2.Slovakia'
c6 db '3.Slovenia'
d6 db '4.Serbia' 

q7 db 'Question 7'
a7 db '1.Latvia'
b7 db '2.Lebanon'
c7 db '3.Austria'
d7 db '4.Indonesia'



e db 'Choose your answer by entering a number from 1 to 4.'
close db 'Press the ESC key to exit the app' 
len dw 0 
cor db 'correct          '
wor1 db 'wrong,the correct answer is 4.Armenia          ' 
wor2 db 'wrong,the correct answer is 1.Gabon           '
wor3 db 'wrong,the correct answer is 2.Hungary          '
wor4 db 'wrong,the correct answer is 1.Netherlands          ' 
wor5 db 'wrong,the correct answer is 2.Bulgaria          ' 
wor6 db 'wrong,the correct answer is 1.Russia          '
wor7 db 'wrong,the correct answer is 3.Austria          '
                                                                 
re1 db 'You answered.'
re2 db 'out of 7'
re3 db 'Press any key to exit the app.'  
res db 'Score'

