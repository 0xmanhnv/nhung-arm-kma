; Khai bao doan du lieu
	AREA    RESET, DATA, READONLY
		DCD  0x20001000     ; stack pointer value when stack is empty
		DCD  Reset_Handler  ; reset vector
  
      ALIGN
 
; Khai bao doan ma lenh
          AREA    MYCODE, CODE, READONLY
 
   	  ENTRY ;Khai bao diem vao chuong trinh
   	  EXPORT Reset_Handler
	  
Reset_Handler
;-------------------------------------------------------------------------
; Bat dau doan code (Diem vao cua chuong trinh)---------------------------
soN equ 5
soX equ 2
start
	ldr r2, =soN
	ldr r3, =soX
	ldr r5, =soX
	mov r1,#2
	mov	r4,#1
	mov r0,#1
loopi
	cmp r1,r2
	bgt thoat
loopj
	cmp r4,r1
	bhs tiep
	mul	r5,r3
	add r4,#1
	b loopj
tiep
	add r0,r5
	add r1,#1
	b loopi
thoat
	nop
stop b stop
	END