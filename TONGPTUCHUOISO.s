	AREA RESET,DATA,READONLY
		DCD 0x20001000
		DCD START_CODE

arMangSo dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 2

	AREA HUNGPT,CODE,READONLY
		ENTRY
		EXPORT START_CODE

START_CODE
SoPhanTu equ 10
	mov R0,#0
	ldr R1, =SoPhanTu
	mov R2,#1
	ldr R3, =arMangSo
	
TINHTONGCHUOI
	ldr R4, [R3]
	add R0,R4
	add R2,#1
	add R4,#4
	cmp R2,R1
	ble TINHTONGCHUOI