#include "kernel.h"
#include "include/stdio.h"


void kernel_entry()
{
  init_vga(WHITE, BLACK);
  printf("Hello World Welcome to MyOS");
  printf("this is another line");
  //printf();
  printf("this is seperated by a new line!");
  print_new_line();
  test_input();

}

