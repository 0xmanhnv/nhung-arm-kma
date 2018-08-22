	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA MYCODE,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
start
;tong cac so <=N chia het cho 5
	MOV R0,#0
	MOV R1,#0
	
LOOP
	ADD R0,R1
	ADD R1,#5
	CMP R1,#10
	BLE LOOP
	
	END