/*
** EPITECH PROJECT, 2023
** chocolatine
** File description:
** test_main
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

extern int main(void); 

Test(test_main, chocolatine_output)
{
    main();
    cr_redirect_stdout();
    cr_assert_stdout_eq_str("Chocolatine\n"); 
}
