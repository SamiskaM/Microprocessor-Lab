ORG 0000H

DATA SEGMENT
MAINSTR DB "ABCDEF"
SUBSTR  DB "DE"
RES     DB 00H
LEN1    DB 06H
LEN2    DB 02H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA, ES:DATA

    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX

    MOV CL, LEN1
    SUB CL, LEN2
    INC CL

    LEA SI, MAINSTR

L1: 
    PUSH SI
    LEA DI, SUBSTR
    MOV CH, LEN2

L2:
    MOV AL, [SI]
    CMP AL, [DI]
    JNZ L3

    INC SI
    INC DI
    DEC CH
    JNZ L2

    MOV RES, 01H
    HLT

L3:
    POP SI
    INC SI
    DEC CL
    JNZ L1

    MOV RES, 00H
    HLT

CODE ENDS
END


