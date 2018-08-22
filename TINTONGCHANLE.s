	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA MYCODE,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
;Tinh Tong cac so chan, le <=N
start
	MOV R0,#0
	MOV R1,#0
	MOV R2,#0
	MOV R3,#1
	
CHAN
	ADD R0,R2
	ADD R2,#2
	CMP R2,#10
	BLE CHAN
	
LE
	ADD R1,R3
	ADD R3,#2
	CMP R3,#10
	BLE LE
	
	END