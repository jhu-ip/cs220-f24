---
id: day11_questions
layout: default
title: Day 11 Recap Questions
reference solutions:
  1. Stack memory is static (i.e. sizes are known at compile-time), while heap memory is dynamic (i.e. sizes are known during runtime). Because we know the memory sizes for stack memory, variables using stack memory are allocated and freed automatically, while those using heap memory require programmer to allocate and free in code. Another big difference is heap memory requires us to use pointers.
  2. It is a memory management mechanism in C that allows us to allocate memory with dynamic sizes during runtime. We do so by four allocation functions defined in stdlib.h. They are malloc, realloc, calloc and free.
  3. In short, it happens when we forget to free the memory that we have allocated.
  4. malloc only allocates memory with the given bytes. calloc allocates memory as malloc and initializes it to zero. realloc is used for resizing the memory. Note that the resizing can change the memory begin address. So if you have multiple pointers pointing to the same memory, you need to use caution when using realloc. You need to update all those pointers after realloc.
  5. We use valgrind to check for memory leak problem and invalid read/write problem.
  6. can't return local statically allocated array from function.
---

1.	What is the difference between stack and heap memory?
2.  What is dynamic memory allocation in C?
3.  What is the memory leak problem?
4.  What is the difference between *malloc*, *realloc*, and *calloc*?
5.  What do we use valgrind to check for?
6.  Consider the `exclaim` function below. Do you see any problems with this function?

```c
// Return a C character string containing n exclamation points.
// n must be less than 20.
char* exclaim(int n) {
  char s[20];
  assert(n < 20);
  for (int i = 0; i < n; i++) {
    s[i] = '!';
  }
  s[n] = '\0';
  return s;
}
```
