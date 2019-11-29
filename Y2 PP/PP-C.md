# COMP 2221 Programming Paradigms - Systems Programming in C

## Lecture 2

### In-lecture comments

```C
int a[6] = {2,4,7,1,2,4}



```

## Lecture 7 - Dynamic Mem Manag. and Scope

How pointers work:

```C
swap(int a, int b){
    int tmp = a
    a = b
    b = tmp
}
```

this doesn't work if you pass values in, eg x,y = 5,6 and doing swap(x,y).

fix by defining int *a int *b and referring to them as such in the function, and calling swap(&x,&y)

**a is a double pointer, a pointer to a pointer