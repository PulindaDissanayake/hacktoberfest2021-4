	AREA PROGRAM,CODE,READONLY
ENTRY
	LDR R0,=STRING
LOOP
	LDRB R1,[R0],#0X01
	CMP R1,#0X00
	ADDNE R2,R2,#0X01
	BNE LOOP
	MOV R4,R2
	SWI &11
	AREA PROGRAM,DATA,READONLY
STRING DCB "DIVIJA"
	END