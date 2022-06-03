ORG 00H
												  
MOV R0,#08H
MOV R1,#09H
MOV R2,#0AH
MOV R3,#00H
LOOP:MOV A,R0                                                                                                                                                                                                                                                                                    
	ADD A,R1
	DA A
	MOV B,A
	JNC NEXT
	
		MOV R3,A
		NEXT:MOV A,B
		INC R0
		DJNZ R2,LOOP
	
		END
			 */
			/* MOV R0,#00H
			 MOV R1,#0AH
			 MOV B,R1
			 LOOP:ADD A,R0
			 JNC NEXT
			 		INC R0
					NEXT:INC A
					DJNZ R1,LOOP
					DIV AB;
					END*/
				/*	MOV R0,#30H
					MOV R1,#40H
					MOV R2,#0AH
					LOOP:
						MOV A,@R0
						MOV B,@R1
						MUL AB
						INC R0
						INC R1
						DJNZ R2,LOOP
						END	  */
					
