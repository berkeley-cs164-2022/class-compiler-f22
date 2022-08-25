#include <stdio.h>
#include <inttypes.h>

int64_t entry() {
    return 4000000000000;
}

int main(int argc, char **argv) {
  printf("%" PRIi64, entry());
  return 0;
}