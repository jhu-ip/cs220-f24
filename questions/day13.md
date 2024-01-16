---
id: day13_questions
layout: default
title: Day 13 Recap Questions
reference solutions:
  1. A user defined data type, which is a collection of related variables, called fields.
  2. Passed by value - each field is copied. Note that if the field is a pointer. The address is copied.
  3. It is the total byte sizes of all fields in a struct + padding. Typically C compiler pad the struct to align with 4-bytes.
  4. Lifetime is the lifespan of a variable in the memory. Scope is where the variable can be accessed.
  5. When an inner scope variable and an outer scope variable have the same name. The inner one hides the outer one. [May need to clarify what file scope, function scope, and block scope are]
  6. 0; 3; 5; 2; [global variable is initialized, demonstrated to use extern get access to the global]
---

1. What is *struct* in C?
2. How are the fields of a struct passed into a function - by value or by reference?
3. What is the size of a *struct*? What is structure padding in C?
4. What is the difference between lifetime and scope of a variable?
5. What is variable shadowing (i.e. hiding)?
6.  What is the output of the below program?

```c
#include <stdio.h>
int foo;
void bar() {
  int foo = 3;
  {
    extern int foo;
    printf("%d; ", foo);
    foo = 2;
  }
  printf("%d; ", foo);
}
void baz() { printf("%d; ", foo); }
int main() {
  {
    int foo = 5;
    bar();
    printf("%d; ", foo);
  }
  baz();
  return 0;
}
```
