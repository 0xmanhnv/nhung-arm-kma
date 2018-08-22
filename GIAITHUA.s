	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD Reset_Handler
		
	AREA MYCODE,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
;tinh giai thua cua N
start
	MOV R0,#1
	MOV R1,#1
	
GIAITHUA
	MUL R0,R1
	ADD R1,#1
	CMP R1,#5
	BLE GIAITHUA
	
	END
	