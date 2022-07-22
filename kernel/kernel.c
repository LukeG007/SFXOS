#include "kernel.h"
#include "include/stdio.h"


void kernel_entry()
{
  init_vga(WHITE, BLACK);
  printf("Hello World Welcome to MyOS");
  print_new_line();
  test_input();
  //kernel_panic();

}

