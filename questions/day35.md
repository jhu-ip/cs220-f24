---
id: day35_questions
layout: default
title: Day 35 Recap Questions
reference solutions:
  1. There are no implicit conversions from the values of a scoped enum to an integer.
  2. To indicate a fatal error has occured where there is no reasonable way to continue from the point of the error (but there might be a way to continue from somewhere else)
  3. `throw`, `try`, `catch`
  4. The first one whose type equals to, or is a base of, the class of the thrown exception
  5. Call the exception's `what` member function
---

1. What is the difference between an unscoped and a scoped enum?
2. Why do we use exceptions?
3. What keyword is used to generate an exception? What keyword indicates that the block of code may generate an exception? What keyword indicates what should be done in the case of an exception?
4. In the case of multiple matching `catch` blocks, which one catches the exception?
5. How do you get the message associated with an exception?
