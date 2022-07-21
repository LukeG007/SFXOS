#ifndef STDIO_H
#define STDIO_H

#include "../types.h"

void printf(char *output);
void init_vga(uint8 fore_color, uint8 back_color);
void print_string(char *str);
void print_new_line();
void test_input();


#endif

