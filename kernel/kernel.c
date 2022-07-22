#include "kernel.h"
#include "include/stdio.h"


void kernel_entry()
{
  init_vga(WHITE, BLACK);
  printf("Hello World Welcome to MyOS");
  printf("this is another line");
  //printf();
  printf("and this is another line");
  print_new_line();  
  test_input();
  //kernel_panic();

}

