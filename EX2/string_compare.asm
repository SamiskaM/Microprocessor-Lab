        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1  DB "HELLO"
STR2 DB "HELLO"
RES DB 00H
COUNT DB 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        CLD
        MOV CL,COUNT
        LEA SI,STR1
        LEA DI,STR2
L2:     CMPSB
        JZ L1
        MOV RES,00H
        JMP L3
L1:     DEC CL
        JNZ L2
        MOV RES,01H
L3:     HLT
CODE ENDS
END

