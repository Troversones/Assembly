// arm.S

.syntax unified
.cpu cortex-a7

.data
TXT: .asciz "HELLO ARM: 0x%x\n"

DATA: .int 0x11223344, 0x4, 0x5, 0x6, -1

.text
.global main
main:
	push {r4-r11, lr}
	
	// printf(TXT)
	ldr r8, =DATA	// r8 := &DATA
	//ldrb r1, [r8] 	// r1 := *r8 első bájtot berakva az r1 regiszerbe a hashmark '#' 	 indexelésre van azaz r1 := r8[1] || ldr r1, [r8, #4]
	mov r6, #0x88
	mov r5, #4
	str r6, [r8, r5] 	//r8[1] := r6
	édr r1,	[r8, r5]	//r1 := r8[1]
	
	
	//mov r1, #42	// r1 := 42
	//ldr r1, =800
	//ldr r2, =800
	//összeadás
	//add r1, r2, r1	
	// r1 := r2 + r1(ha a második paraméter számot kap akkor az r1-be kerül az r2 + szám)
	
	//kivonás	
	//sub r1 ,r2, r1 // r1 := r2 - r1
	
	//szorzás
	//mul r1, r2, r1 // r1 := r2 * r1
	
	//osztás
	//sdiv r1, r2, r1 // r1 := r2 / r1  
	
	

	ldr r0, =TXT	 // r0 := &TXT (mov eax, offset TXT)
	bl printf // == (intel) call printf
	
	
	
	//		OTTHONRA NOTE
	//		
	// udiv -- look at this shit at home kek
	// otthonra - hogyan kapom meg a maradékot
	// compile - arm-linux-gnueabihf-gcc -marm -static -mcpu=cortex-a7 arm.S -o arm
	// ./arm
	
	pop {r4-r11, pc}
