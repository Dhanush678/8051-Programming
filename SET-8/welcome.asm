ORG 00H
MAIN:MOV TMOD,#20H
MOV TH1,#-3
MOV TL1,#-3
MOV SCON,#50H
SETB TR1
S1:JNB P2.5 ,NEXT
MOV DPTR,#MESSAGE
FN:CLR A
MOVC A,@ A+DPTR
JZ S1
ACALL SEND
INC DPTR
SJMP FN
NEXT:MOV DPTR,#MESSAGE2
LN:CLR A
MOVC A,@ A+DPTR
JZ S1
ACALL SEND
INC DPTR
SJMP LN
SEND:MOV SBUF, A
LOOP2:JNB TI,LOOP2
CLR TI
RET
MESSAGE: DB "HELLO  ",0
MESSAGE2: DB " WELCOME  ",0
END