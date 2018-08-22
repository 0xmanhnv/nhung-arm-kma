	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA MYCODE,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler

;Tinh tong cac so <=N
start
	MOV R0,#0
	MOV R1,#1
	
LOOP
	ADD R0,R1
	ADD R1,#1
	CMP R1,#10
	BLE LOOP
	
	END