---
id: day02
layout: default
title: Day 2 Recap Questions
reference solutions:
  1. `-std=c99` sets the language standard to ISO C99; `-pedantic` Issue all the warnings demanded by strict ISO C and ISO C++; `-Wall` enables all the warnings about constructions that some users consider questionable; `-Wextra` enables some extra warning flags that are not enabled by -Wall. 
  2. Preprocessor brings together all the code that belongs together; process together all directives that start with `#`. Compiler turns human-readable source code into object code. Linker brings together all relevant object code and into a single executable file. 
  3. Undefined behavior is behavior which is not specified in the language definition or (other specification) and can thus vary between implementations. We need to care about it because we want our programs to behave the same regardless of the computer they're running on. We call this property portability.
  4. In a variable declaration, the keyword `const` indicates that,	once received, the value of the variable cannot be changed.
  5. Sizes are **minimum** byte size. Actual size varies by implementation. **char** single character, 1 byte, **int** signed integer, 2 bytes (usually 4 bytes), **unsigned** unsigned intenger, 2 bytes, **long** long signed intenger, 4 bytes, **float** single-precision floating point, unspecified (usually 4 bytes), **double** double-precision floating point, unspecified (usually 8 bytes)
  6. The expression 7 / 2 evaluates to 3 in C. This is because the two operands are integers, so integer division is inferred. 
---

1. The command to compile a C program is `gcc <source file> -std=c99 -pedantic -Wall -Wextra`. Use `man` or Google to find out the meaning of the four flags, i.e. `-std=c99`, `-pedantic`, `-Wall` and `-Wextra`.
2. Briefly describe what a preprocessor, compiler and linker do when transporting C code into executable?
3. What does an **undefined** behavior mean in programming? Do we need to care about it? Why or why not?
4. What does the modifier `const` mean? 
5. What are the primitive types in C and what are their byte sizes?
6. What is the value of `7 / 2` (a division of two integers) in a C program?

<!--
7. Is `i = i++;` a "reasonable" statement in C?
-->
