ORG 00H
MOV A,#00H
BACK:MOV R2,#05H
ADD A,#51
MOV P0,A
ACALL DELAY
DJNZ R2,BACK 
DELAY:MOV TMOD,#01H
MOV TH0,#0FFH
MOV TL0,#00H
SETB TR0
AGAIN:JNB TF0,AGAIN
CLR TF0
CLR TR0
RET
END