---
id: day06_questions
layout: default
title: Day 6 Recap Questions
reference solutions:
  1. yes, stdout is the name for the default output
  2. when checking a condition that must be true to proceed
  3. int to double is fine, it will get promoted. double to int is compiler warning(?) and should be avoided or explicitly typecast first.
  4. values from primitive type function call arguments are copied into the parameter variables when the call is executed
  5. add `(int argc, char* argv[])` parameters for the count of arguments and the strings themselves
---

1.	Is `fprintf(stdout, "xxx")` the same as `printf("xxx")`?
2.	When should we use assertions instead of an *if* statement?
3.	What will happen if you pass an `int` variable to a function that takes a `double` as its parameter?  What will happen if a `double` is passed to an `int` parameter?
4.	What is "pass by value"?
5.	How do you change the *main* function so that it can accept command-line arguments?
