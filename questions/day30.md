---
id: day30_questions
layout: default
title: Day 30 Recap Questions
reference solutions:
  1. Initialization happens when the variable is declared.
  2. Assignment
  3. Initialization
  4. Shallow copy copies pointers. Deep copy allocates memory and copies over values.
  5. If you need a non-default destructor to release resources, then you will mostly likely need a non-default copy constructor and a non-default assignment operator.
---

1. What is difference between initialization and assignment?
2. Does the line `f2 = f1;` use initialization or assignment (assume `Foo` is a class and `f1` and `f2` are both of type `Foo`)?
3. Does the line `Foo f2 = f1;` use initialization or assignment (assume `Foo` is a class and `f1` is of type `Foo`)?
4. What is a shallow copy and what is a deep copy?
5. What is the rule of 3?
