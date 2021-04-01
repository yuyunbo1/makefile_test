#include "print.h"
#include <stdio.h>
#include <stdarg.h>
#define BUFF_LEN 1024
void printf_func(char* format, ...)
{
    char buff[BUFF_LEN] = {0};
    int n;
    va_list va;
    va_start(va, format);
    
    n = vsprintf(buff, format, va);
    va_end(va);
    printf("%s", buff);
    return;
}
#if 0
int main()
{
    printf_func("%s", "hello world\r\n");
    return 0;
}
#endif
