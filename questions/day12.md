---
id: day12_questions
layout: default
title: Day 12 Recap Questions
reference solutions:
  1.  94 72 35  \n  3 2 1 \n  -3 \n  1 0 \n
  2.  it will compile and run without error
  3.  it will result in invalid read memory access because the address in *p doesn't necessarily belong to the program
  4.  result=274  (adds 42+67+89+76)
  5.  Yes in all cases. The const in the altered function declaration applies to the values in the array, and we can make things more restrictive.
---

1. What output is printed by the "Example code" below?
2. Assume that `arr` is an array of 5 `int` elements. Is the code `int *p = arr + 5;` legal?
3. Assume that `arr` is an array of 5 `int` elements. Is the code `int *p = arr + 5; printf("%d\n", *p);` legal?
4. What output is printed by the "Example code 2" below?
5. Suppose we have variables `int ra1[10] = { 1, 2, 3};`, `int * ra2 = ra1;` and `int fun(int *ra);` declarations. Will `fun(ra1);` compile? Will `fun(ra2);` compile? What if we change the function declaration to `int fun(const int ra[]);`? 


```c
// Example code
int arr[] = { 94, 69, 35, 72, 9 };
int *p = arr;
int *q = p + 3;
int *r = q - 1;
printf("%d %d %d\n", *p, *q, *r);
ptrdiff_t x = q - p;
ptrdiff_t y = r - p;
ptrdiff_t z = q - r;
printf("%d %d %d\n", (int)x, (int)y, (int)z);
ptrdiff_t m = p - q;
printf("%d\n", (int)m);
int c = (p < q);
int d = (q < p);
printf("%d %d\n", c, d);
```

```c
// Example code 2

#include <stdio.h>

int sum(int a[], int n) {
  int x = 0;
  for (int i = 0; i < n; i++) {
    x += a[i];
  }
  return x;
}

int main(void) {
  int data[] = { 23, 59, 82, 42, 67, 89, 76, 44, 85, 81 };
  int result = sum(data + 3, 4);
  printf("result=%d\n", result);
  return 0;
}
```
