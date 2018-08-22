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
start
	ldr r2, =soN
	mov r0,#1		;n!
	mov r1,#1		;i=1
loop
	cmp r1,r2	; i>9 ?		
	bgt thoat	; true: thoat
	mul r0,r0,r1	;r0=r0*r1	r1=1->soN
	add r1,#1	;i++
	b loop

thoat
	nop
stop b stop
	END