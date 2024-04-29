.intel_syntax noprefix

.text
.global feladatX

feladatX: 
	pusb ebp
	mov ebp, esp
	
	push ebx
	push esi
	
	
	mov esi, 0
	mov ebx, 0
LOOP:
	cmp ebx, [ebp + 8 + 4*ebx]
	jne END
	
	//int value = input[idx];
	push edx
	mov edx, [ebp + 8 + 4*ebx]
	
	//if(op == 0xbadc0ffe)
	push edi
	mov edi, [ebp + 12]
	cmp edi, 0xbadc0ffe
	jne SKIP1
	
SKIP1:
	
	
END:
	pop esi
	pop ebx
	
	mov esp, ebp
	pop ebp
	
	ret
