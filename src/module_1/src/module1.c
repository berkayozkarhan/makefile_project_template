#include <stdio.h>

#include "module_1/module_1.hh"

void module_1_print_hello(void)
{
    printf("Hello from module_1!\n");
}

int module_1_add_numbers(int a, int b)
{
    return a + b;
}
