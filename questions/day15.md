---
id: day15_questions
layout: default
title: Day 15 Recap Questions
reference solutions:
  1.  It is a signed integer representation. One's complement of a binary number is flipping all 1 to 0 and vice versa. Two's complement then flipping all bits and then adding 1. i.e. 2's complement = 1's complement + 1. One reason of using 2's complement instead of 1's complement is the unique 0 represented in 2's complement; 1's complement, on the other hand, has both +ve and -ve 0s.
  2.  integers are simply converted to binary, floating-point values are stored in two parts - mantissa (significant bits) and exponent (for power 10 * mantissa); mantissa would be a negative for values < 1
  3.  converting a "larger" data type into a "smaller" one, like float to int
  4.  converting a "smaller" data type into a "larger" one
  5.  explicitly or implicitly converting a value from one type to another
  6.  int n = 32065 but (char) n = A \n float x = 24.790001 but (long) x = 24
---

1. What is two's complement representation?
2. How does representation of integers and floating-point values differ in C?
3. What is type narrowing?
4. What is type promotion?
5. What is type casting?
6. What is the output of the code segment below?

```c
int n = 32065;
float x = 24.79;
printf("int n = %d but (char) n = %c\n", n, (char) n);
printf("float x = %f but (long) x = %ld\n", x, (long) x);
```
