                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUMA DW 05H
NUMB DW 03H
NUMA2 DW 0000H
NUMB2 DW 0000H
NUMAB DW 0000H
RES DW 0000H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV AL,NUMA
                MUL AL
                MOV NUMA2,AX
                MOV AL,NUMB
                MUL AL
                MOV NUMB2,AX
                MOV AL,NUMA
                MOV BL,NUMB
                MUL BL
                ADD AX,AX
                MOV NUMAB,AX
                MOV AX,NUMA2
                SUB AX,NUMB2
                SUB AX,NUMAB
                MOV RES,AX
CODE ENDS
END

