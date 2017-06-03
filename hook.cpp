#include <stdio.h>
#include <string.h>
#include <dlfcn.h>

typedef int (*STRCMP) (const char*, const char*);

int strcmp(const char* s1, const char* s2)
{
    static STRCMP old_strcmp = NULL;

    old_strcmp = (STRCMP) dlsym(RTLD_NEXT, "strcmp");

    printf("In hooks function\n");

    return old_strcmp(s1, s2);
}
