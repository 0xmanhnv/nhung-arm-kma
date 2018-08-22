	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA HUNGPT,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
start
;Tinh tong 1+x^2+x^3+x^4+...+x^n
	MOV R0,#1
	MOV R1,#10
	MOV R2,#10
	MOV R3,#1
	
LOOP
	MUL R1,R2
	ADD R0,R1
	ADD R3,#1
	CMP R3,#3
	BLT LOOP
	
	END