
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1 DB "HELLO"
STR2 DB "Q"
RES DB 00H
COUNT EQU 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV CL,COUNT
        LEA DI,STR1
        MOV AL,STR2
L2:
        CMP [DI],AL
        JNZ L1
        MOV RES,01H
        JMP L3
L1:
        INC DI
        DEC CL
        JNZ L2
L3:
        HLT
CODE ENDS
END
