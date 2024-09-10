---
id: day07_questions
layout: default
title: Day 7 Recap Questions
reference solutions:
  1. sizeof(array_name) / sizeof(int) - note: this will only work for statically allocated arrays declared in the same scope as the sizeof invocation.
  2. no - sizeof(array_name) vs. strlen(array_name)
  3. declaration is the function header only; definition is header + body
  4. no, C does not support this (unlike Java and C++)
  5. array contents are passed by reference; array parameter type is int[]
  6. const ar[]
  7. tricky to conceive; might use extra space
  8. function will call itself forever until the program crashes
---

1. How do you get the number of elements of an integer array?
2. Is the size of a string array the same as the string length?	
3. What is the difference between a function declaration and a function definition?
4. Can you have two functions with the same function name in a program?
5. How does passing an integer array to a function differ from passing a single integer variable into a function?
6. How can you make an array that is passed into a function not modifiable?
7. What is the down-side to recursion?
8. What happens if your recursive function does not have a base case?