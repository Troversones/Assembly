.intel_syntax noprefix

// demo.S
# comment

//.section .data
.data

TXT: .asciz "-> %d\n"

//.section .text
.text

# _start nem kell
.global main
main: 
      push ebp
      mov ebp, esp
      
      mov eax, 42    // eax := 42
      
      // printf("-> %d\n", 42);
      push eax
      push offset TXT // push &TXT
      call printf
      pop eax
      pop eax
      
      mov eax, 0     // eax := 0
      
      mov esp, ebp
      pop ebp
      
      ret
