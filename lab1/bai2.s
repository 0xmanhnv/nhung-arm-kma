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
;Tính t?ng các s? ch?n, l?
soN equ 9
start 
	ldr r2, =soN
	mov r0,#0	;r0=sumChan
	mov r5,#0	;r5=sumLe
	mov r1,#1	;i=1
loop
	cmp r1,r2	; i>9 ?		
	bgt thoat	; true: thoat
_if				;if(r1%2==0)
	mov r3,#2
	udiv r4,r1,r3 ;r4=r1/r3
	mls r4,r4,r3,r1 ;r4=r1-r4*r3
	cmp r4,#0	;r4=r1%r3 
	bne _else	; !=0
	add r0,r1	; tong so chan = r0
	b _tiep		; tiep tuc vong lap
_else
	add r5,r1	; tong so le =r5
_tiep
	add r1,#1	;i++
	b loop

thoat
	nop
stop b stop
	END