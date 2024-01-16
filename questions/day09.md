---
id: day09_questions
layout: default
title: Day 9 Recap Questions
reference solutions:
  1. use two sets of brackets with sizes `int ra[ROWS][COLS];` include the number of columns in the function declaration/definintion `int ra[][COLS]`
  2. can use nested lists of values `{{1, 2, 3}, {4, 5, 6}}` or just a single list that will assign in row order `{1, 2, 3, 4, 5, 6}`
  3. compile with -g for using gdb
  4. `break main` to set breakpoint and `backtrace` to check call stack
  5. `display`
---

1.	How do you declare a multi-dimensional array and pass it to a function?
2.  How do you initialize a multi-dimensional array using array initialization?
3.	What is the compile flag needed to compile a program such that we can debug it using gdb?
4.	How do you set a break point using gdb and check the call stack?
5.  Check the gdb cheat sheet and find the command to print the content of a variable per step, instead of only printing it once using `print`.
