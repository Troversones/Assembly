.syntax unified
.data

TXT: .asciz "-> hello %d\n"

DATA: .int 1 , 2, 3, 4

.text
//int sum(int* data, int length ) { int res = 0; for -> length { res += data[idx]; } ret res; }

sum: 
	push {r4-r11, lr}
	
	//r0 := data (int*)
	//r1 := length (int)
	mov r4, 0
	mov r5, 0
	//for
   loop:
   	cmp r5, r1
   	bge end
	
	lsl r9, r5, 2
	ldr r7, [r0, r9]	//r7 := r0[r9]
	add r4, r4, r7
	
	add r5, r5, 1
	b loop
   end:
	
	mov r0, r4	
	pop {r4-r11, pc}

.global main
main: 
	push {r4-r11, lr}
	
	
	/*
	mov r3, 124

	cmp r3, 123
	bgt TRUE
	ble FALSE
	
   TRUE:
   	mov r1, 55
	b skip
   FALSE:
   	mov r1, 11
	
   skip:
   
   	//for(i = 0; i < 10;i++ ){ sum += i }
   	
   	mov r4, 0	// i
   	mov r1, 0	// sum
   	
   loop:
   	//if(!(i < 10)) goto end
   	cmp r4, 10
   	bge end
   	
   	add r1, r1, r4 		// r1 := r1 + r4
   	
   	add r4, r4, 1		// r4++
   	b loop
   end:
   	*/
   	
	ldr r0, =TXT
	mov r1, 4
	//mov r1, 42
	bl printf
	
	pop {r4-r11, pc}
