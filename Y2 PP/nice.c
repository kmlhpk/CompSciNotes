#include <stdio.h>

#define LENGTH(x) (sizeof(x)/sizeof(x[0]))
int bubble (int a[], int n); //declared

int main() {
    printf("Hello, World!\n");

    int a[6] = {3,6,1,9,4,2};
    size_t n = LENGTH(a);
    printf("%lu\n", n); //lu = long unsized, like size_t
    bubble(a, n); //define and declare outside main, call inside
}

int bubble (int a[], int n) {
    for (size_t i = 0; i < n; i++)
    {
        printf("%d\n", i);
    }
}



//when you pass an array to a function, it actually just passes a POINTER - this means the pointer is not aware of the array length, so you need to define it beforehand and pass it into the function. Also means that since you're acting on the pointer to the memory location, the function will edit the original array and thus you don't need to return it.


/* 
echo $? in UNIX to check the last output to the OS from the last thing you run (ie 0 from this program) 

gcc...

-Wall for errors

-o for output

-E for full source with markers

-S for assembly

nameofprogram (no ext)

nameofcode.c
*/