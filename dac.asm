ORG 00H
HRE:MOV A,#00H
MOV P0,A
ACALL DELAY
MOV A,#0FFH
MOV P0,A
ACALL DELAY
SJMP HRE

DELAY:MOV TMOD,#01H
MOV TH0,#0FFH
MOV TL0,#00H
SETB TR0
AGAIN:JNB TF0,AGAIN
CLR TF0
CLR TR0
RET
END