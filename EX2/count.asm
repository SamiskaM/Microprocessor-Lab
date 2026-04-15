
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARRAY DW 0005H,0003H,0002H,0001H,0004H
COUNT DW 00H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                LEA SI,ARRAY
                MOV CX,0
L1:             MOV AX,[SI]
                CMP AX,0000H
                JE L2
                INC CX
                ADD SI,2
                JMP L1
L2:     MOV COUNT,CX;
        HLT
CODE ENDS
END