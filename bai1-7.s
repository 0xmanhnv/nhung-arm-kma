	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA HUNGPT,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
start
;Tinh Uoc Chung Lon Nhat 2 so
	MOV R0,#3
	MOV R1,#6
LOOP
	CMP R0,R1
	BLT NHO
	BGT LON
	B BANG
NHO
	SUB R1,R0
	B LOOP
LON
	SUB R0,R1
	B LOOP
BANG
	
	END