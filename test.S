.intel_syntax noprefix
/*
void reverseIntkek(int *input, int length, int *output){
  for (int idx = 0; idx < length; idx++){
    int value = input[idx];
    int odx = length - idx - 1;

    output[odx] = value;
  }
  
}
*/

.text
.global reverseInt
reverseInt: 
  push ebp
  mov ebp, esp

    push ebx
    push edi
    push esi
    push edx
    // input -> [ebp + 8] -> int*
    // length -> [ebp + 12] -> int
    // output -> [ebp + 16] -> int*


    mov esi, [ebp + 8]     // esi := input;
    mov edi, [ebp + 16]     // edi := output pointer ami az outputra mutat
    mov edx, 0    // edx -> odx;
    mov ebx, 0    // ebx -> idx;
  LOOP:
    // !(idx < length) ==> goto end
    cmp ebx, [ebp + 12]
    jge END

    // if (idx % 2 == 0)
    push edx
    mov eax, ebx
    cdq
    mov ecx, 2
    div ecx           // edx := ebx % 2 maradékos osztás

    mov eax, edx
    pop edx

    cmp eax, 0
    jne SKIP

    //int odx = length - idx - 1;
    //mov edx, [ebp + 12]     //edx := length;
    //sub edx, ebx            //edx -= ebx 
    //dec edx                 //edx--

    //output[idx] = idx;
    mov ecx, [esi + 4*ebx]
    mov [ebp + 16 + 4*ebx], ecx
    inc edx
  SKIP:
    inc ebx   //idx++
    jmp LOOP
  END:
    pop edx
    pop esi
    pop edi
    pop ebx


  mov esp, ebp
  pop ebp

  ret