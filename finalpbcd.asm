DATA SEGMENT
PBCD DB 26H
DIG1 DB 00H
DIG2 DB 00H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV AL,PBCD
AND AL,0FH
MOV DIG1,AL
MOV AL,PBCD
AND AL,0F0H
ROL AL,04H
MOV DIG2,AL
MOV AH,4CH
INT 21H
CODE ENDS
END START