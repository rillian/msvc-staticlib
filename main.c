// Implementation for final link depend on bar. It doesn't depend
// directly on foo, but since bar depends on foo one has to link
// with both unless bar is a library with interally-recorded link
// dependencies.

#include <stdio.h>

int main(void) {
  int v = bar();
  if (v == 42) {
    printf("Ok\n");
    return 0;
  }
  printf("FAIL\n");
  return -1;
}
