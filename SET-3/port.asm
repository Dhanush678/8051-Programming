ORG 00H
	MOV R0,#30H
	MOV R1,#0AH
	MOV A,#00H
	MOV P1,#0FFH
	JB P1.0,SMALL
	CLR C
	REPEAT1:SUBB A,@R0
			JNC NOEXCH
			MOV A,@R0
	NOEXCH:INC R0
			DJNZ R1,REPEAT1
			MOV 40H,A
			SJMP LAST
	SMALL:MOV R0,#30H
			MOV A,@R0
			DEC R1
	REPEAT2:INC R0
			MOV B,@R0
			CJNE A,B,NEXT
	NEXT:JC NOEXCH2
			MOV A,@R0
	NOEXCH2:CLR C
			DJNZ R1,REPEAT2
			MOV 40H,A
	LAST:MOV B,#00H
			END