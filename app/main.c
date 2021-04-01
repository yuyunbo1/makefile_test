#include "print.h"
#include "dog.h"
#include "ani.h"
int main()
{
    printf_func("***************%s start***********\n", __FILE__);
    ani();
    dog();
    printf_func("***************%s end***********\n", __FILE__);
    return 0;
}