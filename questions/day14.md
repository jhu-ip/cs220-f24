---
id: day14_questions
layout: default
title: Day 14 Recap Questions
reference solutions:
  1. Open the file with "b" attribute and use fread/fwrite instead of fscanf/fprintf.
  2. ^, which is mutually exclusive. i.e. only true if and only if one of the two is true, but not both.
  3. it will perform the operation bit by bit. (extra - You cannot. They are not defined for floats. A compilation error will occur.)
  4. 1 [(00001111 >> 2) || 00000111 <==> 00000011 || 00000111 <=> 3 || 7 <==> 1]
  5. 7 [(00001111 >> 2) | 00000111 <==> 00000011 | 00000111 <=> 00000111 <==> 7]
---

1.	How do we read/write binary files in C?
2.	What character represents the bitwise XOR operation? How does it differ from the OR operation?
3.	What happens if you apply the bitwise operation on an integer value? (extra: what if we apply to floats)
4.	What is the result of `(15 >> 2) || 7`?
5.	What is the result of `(15 >> 2) | 7`?
