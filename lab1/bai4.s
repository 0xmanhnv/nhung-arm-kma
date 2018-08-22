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
soN equ 17
start 
	ldr r2, =soN
	mov r0,#0	
	mov r1,#0	;i=1
loop
	cmp r1,r2	; i>9 ?		
	bgt thoat	; true: thoat
_if			;if(r1%5==0)
	mov r3,#5
	udiv r4,r1,r3
	mls r4,r4,r3,r1
	cmp r4,#0	
	bne _tiep	; !=0
	add r0,r1	; tong  =r0
			; tiep tuc vong lap
_tiep
	add r1,#1	;i++
	b loop

thoat
	nop
stop b stop
	END