---
id: day10_questions
layout: default
title: Day 10 Recap Questions
reference solutions:
  1. Pointer is a data type in C that stores a memory address. We can dereference it to retrieve the value in the memory.
  2. `p = &a`
  3. use `*p` in place of `a` as in `printf("%d", *p)` and `*p = 10;`
  4. because in order to change the variable in the calling function, you need to pass the address of the variable
  5. 1.00, 32.00, 13.00, 40
---

1. What is a pointer?
2. If `a` is an int variable, and `p` is a variable whose type is *pointer-to-int*, how do you make `p` point to `a`?
3. If `p` is a *pointer-to-int* variable that points to an `int` variable `a`, how can you access the value of `a` or assign a value to `a` without directly referring to `a`?  Show examples of printing the value of `a` and modifying the value of `a`, but without directly referring to `a`.
4. When calling `scanf`, why do you need to put a `&` symbol in front of a variable in which you want `scanf` to store an input value?
5. Trace the little program below and determine what the output will be.

```c
int func(float ra[], float x, float *y) {
    ra[0] += 10;
    x *= 20;
    *y += 30;
    return 40;
}
int main() {
    float a = 1;
    float b = 2;
    float c[] = {3, 4, 5, 6};
    int d;
    d = func(c, a, &b);
    printf("%.2f, %.2f, %.2f, %d\n", a, b, c[0], d);
}
```

