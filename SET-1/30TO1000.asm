ORG 00H 
MOV R0,#30H
MOV DPTR,#1000H
MOV R2,#0AH
SKIP:MOVX A,@DPTR
	
	XCH A,@R0
	MOVX @DPTR,A
	INC R0
	INC DPTR
	DJNZ R2,SKIP
	END