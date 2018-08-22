	AREA RESET, DATA, READONLY
		DCD 0X20001000
		DCD START
MATRAN	DCD -1,2,3
		DCD 3,3,1
		DCD 1,2,1
		
	AREA MYCODE, CODE, READONLY
	
	ENTRY
	
START
SOPT	EQU	9
	
CHINH 
	MOV R0,#1
	LDR	R1,=SOPT
	LDR R2,=MATRAN
	
	LDR R4,[R2]	; BIEN MAX
	
LON
	
	ADD R0,#1
	ADD R2,#16
	LDR R3,[R2]
	CMP R3,R4
	BGT MAX
	CMP R0,#3
	BLT LON
	B TIEP
MAX 
	MOV R4,R3
	B LON
TIEP	
	LDR R5,[R2]	;	BIEN MIN
	B NHO
NHO

	SUB R0,#1
	SUB R2,#16
	LDR R3,[R2]
	CMP R3,R5
	BLT	MIN
	CMP	R0,#1
	BGE NHO
	B KT
	
MIN
	MOV R5,R3
	B NHO
KT
	
	
	END
	