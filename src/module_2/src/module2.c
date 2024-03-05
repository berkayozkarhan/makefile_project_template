#include <stdio.h>

#include "module_2/module_2.hh"

void module_2_print_hello(void)
{
    printf("Hello from module_1!\n");
}

int module_2_subtract_numbers(int a, int b)
{
    return a - b;
}
