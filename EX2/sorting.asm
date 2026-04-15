                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARRAY DW 0005H,0003H,0002H,0001H,0004H
COUNT DW 0005H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV DX,COUNT
        DEC DX
L2:
        MOV CX,DX
        MOV SI,OFFSET ARRAY
L1:
        MOV AX,[SI]
        CMP AX,2[SI]
        JBE L3
        XCHG AX,2[SI]
        XCHG AX,[SI]
L3:
        INC SI
        INC SI
        LOOP L1
        DEC DX
        JNZ L2
        HLT
CODE ENDS
END


