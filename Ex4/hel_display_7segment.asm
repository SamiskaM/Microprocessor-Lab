
        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
H_VAL DB 76H
E_VAL DB 79H
L_VAL DB 38H
OFF DB 00H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
MAIN:
        MOV DX,FFE0H
        MOV AL,H_VAL
        OUT DX,AL
        MOV DX,FFE2H
        MOV AL,E_VAL
        OUT DX,AL
        MOV DX,FFE4H
        MOV AL,L_VAL
        OUT DX,AL
        CALL DELAY
        MOV DX,FFE0H
        MOV AL,00H
        OUT DX,AL
        MOV DX,FFE2H
        OUT DX,AL
        MOV DX,FFE4H
        OUT DX,AL
        CALL DELAY
        JMP MAIN
DELAY:
    MOV AH,05H
L3:
        MOV BX,0FFFFH
L2:
        DEC BX
        JNZ L2
        DEC AH
        JNZ L3
    RET
CODE ENDS
END
