#include <stdio.h>

void reverseIntkek(int *input, int length, int *output);

void reverseIntkek(int *input, int length, int *output){
  for (int idx = 0; idx < length; idx++){
    int value = input[idx];
    int odx = length - idx - 1;

    output[odx] = value;
  }
  
}

int main(){
  int input[10] = {1,2,3,4,5,6,7,8,9,10};
  int output[100] = {};

  reverseIntkek(input, 10, output);

  for (int idx = 0; idx < 10; idx++){
    printf("%2d ", input[idx]);
  }
  printf("\n");
  for (int idx = 0; idx < 10; idx++){
    printf("%2d ", output[idx]);
  }
  printf("\n");
  return 0;
}