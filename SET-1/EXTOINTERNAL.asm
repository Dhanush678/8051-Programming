ORG 00H 
MOV R1,#030H
MOV DPTR,#2000H
MOV R2,#0AH
CLR A
SKIP:	MOVX A,@DPTR
		MOV @R1,A
		INC R1
		INC DPTR
		DJNZ R2,SKIP
		END
	//USE X:2000H AND I:30H
