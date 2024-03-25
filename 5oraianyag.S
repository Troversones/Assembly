.intel_syntax noprefix

.data

TXT: .asciz "hehebenisz: %d\n"

VALUES: .int 1, 2, 3, 4, 5

.text
.global main

main: 
	push ebp
	mov ebp, esp
	
	mov eax, 42
	mov edx, offset VALUES
	mov ecx, 0
 loop:
	cmp ecx, 10
	jge end
	inc ecx

	add eax, [edx + ecx*4]
	jmp loop
 end:
	
	push eax
	push offset TXT
	call printf
	pop eax
	pop eax
	
	mov eax, 0
	mov esp, ebp
	
	ret
