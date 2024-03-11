.intel_syntax noprefix

.data

TXT: .asciz "-> edx: %d eax: %d\n" 

ADAT: .int 100, 10, 51, 25, -25 // integer adat deklaráció

.text
.global main
main: 
	push ebp
	mov ebp, esp
	
	//szorzás
	mov edx, 12312
	mov eax, 3
	mov ecx, 8
	
	mul ecx
	//imul eax, ecx, 4 // eax := ecx * 4
	//szorzás
	
	//eltolások
	//mov edx, offset ADAT 	//edx := &ADAT paraméterből érkező pointer 
	//mov ecx, 4
	//mov eax, [edx + ecx*4]	// eax := edx[ecx]
	//eltolások
	
	//összeadás
	//add eax, ecx 		// eax += ecx
	//add eax, [ADAT + 4] 	//1 regiszert spórolva összeadja az eax számát és a memcím értékét
	//add [ADAT + 4], eax
	//összeadás
	
	//kivonás
	//sub eax, ecx		// eax -= ecx
	//kivonás
	
	//pointerek
	//mov ecx, 2000 
	//mov dword ptr [ADAT + 1*4], 2 //dword(vagy byte) ptr egy 4 bites pointer az integer 2-re
	//mov eax, [ADAT + 1*4]
	//pointerek
	
	push eax
	push edx
	push offset TXT
	call printf
	pop eax
	pop eax
	
	mov esp, ebp
	pop ebp
	
	ret
