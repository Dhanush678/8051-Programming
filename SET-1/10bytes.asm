ORG 00H 
MOV R1,#30H
MOV R2,#0AH
CLR A
SKIP:ADD A,@R1
		INC R1
		DJNZ R2,SKIP
		END
	//USE I:30H