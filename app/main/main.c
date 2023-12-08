#include <stdio.h>

#include "module_1/module_1.hh"
#include "module_2/module_2.hh"
#include "module_3/module_3.hh"



int main(void)
{
    printf("Main function.\n");
    int a = 5;
    int b = 4;
    int c = 3;
    module_1_print_hello();
    module_2_print_hello();
    module_3_print_hello();

    int res_module_1 = module_1_add_numbers(a, b);
    int res_module_2 = module_2_subtract_numbers(a, b);
    int res_module_3 = module_3_multiply_numbers(a, b);

    printf("module_1_add_numbers() returned: %d\n", res_module_1);
    printf("module_2_subtract_numbers() returned: %d\n", res_module_2);
    printf("module_3_multiply_numbers() returned: %d\n", res_module_3);
}

