.intel_syntax noprefix

.data

TXT: .asciz "-> %d %d\n" 

ADAT: .int 100, 10, 51, 25, -25 // integer adat deklaráció

.text
.global main
main: 
	push ebp
	mov ebp, esp
	
	mov edx, 100
	mov eax, 3
	//mov ecx, 8
	
	//szorzás
	//mul ecx
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
	
	//osztás
	//mov edx, 0
	//div ecx 	//edx: eax / ecx -> eax
	//cdq
	//idiv ecx
	//osztás
	
	//extra feladat
	//mov ecx, eax 		//átmásoljuk az ecx-et az eax-ba
	//mov eax, edx		// eax := edx
	//cdq
	//idiv ecx
	//imul eax ,ecx
	//extra feladat
	
	//jmp utasítás
	//jmp ide
	//valami utasítás (amit kihagy)
	//ide:
	//jmp utasítás
	
	push eax
	push edx
	push offset TXT
	call printf
	pop eax
	pop eax
	
	mov esp, ebp
	pop ebp
	
	ret
