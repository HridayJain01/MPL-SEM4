DATA SEGMENT
NUM1 DB 5H
ONES DB 00H
ZROS DB 00H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV AL,NUM1
MOV CX,08H

CHECK:

ROR AL,01
JC SKIP
INC ZROS
JMP GOGO
SKIP:
INC ONES
GOGO:
LOOP CHECK
MOV AH,4CH
INT 21H
CODE ENDS
END START