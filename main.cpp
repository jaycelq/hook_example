#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: %s <password>.\n", argv[0]);
        exit(1);
    }
    if (strcmp(argv[1], "test"))
    {
        printf("Incorrect password\n");
    }
    else
    {
        printf("Correct password\n");
    }

    return 0;
}
