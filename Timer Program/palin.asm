ORG 0000H 
MOV DPTR,#MYDATA
MOVX A,@DPTR
MOV R1,A
MOV B,#00H
MOV R0,#08H
LOOP:RRC A
	MOV R1,A
	MOV A,B
	RLC A
	MOV B,A
	MOV A,R1
	DJNZ R0,LOOP
	MOVX A,@DPTR
	SUBB A,B
	JZ SKIP
	MOV P0,#0FFH
	SJMP HERE
	SKIP:MOV P0,#00H
	HERE:SJMP HERE

	MYDATA:DB 30H:LIRIL

	END
