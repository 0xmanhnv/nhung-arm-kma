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
soN equ 9
soX equ 2
start
	ldr r2, =soN
	ldr r3, =soX
	ldr r0, =soX
	mov r1,#1
loop
	cmp r1,r2
	bhs thoat
	mul r0,r3
	add r1,#1
	b loop
thoat
	nop
stop b stop
	END