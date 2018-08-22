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
soA equ 20
soB equ 17
start
	ldr r2, =soA
	ldr r3, =soB
	mov r4,#0			;temp =0
	mov r0,#0			;r0 = UCLN
	mov r1,#0
while
	cmp r3,r1
	beq thoat
	udiv r4,r2,r3
	mls r4,r4,r3,r2
	mov r2,r3
	mov r3,r4 
	b while
thoat
	mov r0,r2
	ldr r2, =soA
	ldr r3, =soB
	sdiv r2,r0		 ;thuat toan euclid
	mul r2,r3
	mov r0,r2			;r0 = BCNN(20,17)
stop b stop
	END