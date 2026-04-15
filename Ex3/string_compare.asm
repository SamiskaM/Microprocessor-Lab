DATA SEGMENT
STR1 DB "ABCD",'$'
STR2 DB "ABCC",'$'
COUNT DB 04H
OUT1 DB "EQUAL",'$'
OUT2 DB "NOT EQUAL",'$'
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV SI,OFFSET STR1
        MOV DI,OFFSET STR2
        MOV BL,COUNT
L2:     CMPSB
        JZ L1
        JMP L3
L1:     DEC BL
        JNZ L2
        MOV AH,09H
        MOV DX,OFFSET OUT1
        INT 21H
        JMP L4
L3:     MOV AH,09H
        MOV DX,OFFSET OUT2
        INT 21H
L4:     MOV AH,4CH
        INT 21H
CODE ENDS
END

