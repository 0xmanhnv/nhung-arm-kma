	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA MYCODE,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
start
;Tinh gia tri x^n
	MOV R0,#1
	MOV R1,#2
	MOV R2,#1
LOOP
	MUL R0,R1
	ADD R2,#1
	CMP R2,#4
	BLE LOOP
	
	END