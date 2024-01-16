---
id: day29_questions
layout: default
title: Day 29 Recap Questions
reference solutions:
  1. When we create two functions with the same name but different arguments
  2. No
  3. Almost (operators like `::` and `.` cannot be overloaded)
  4. A copy constructor initializes a new object by copying information from the argument. It is called when making an explicit call to the copy constructor, sending an object to a function by argument using pass-by-value, and returning a class object from a function by value
  5. C++ generates a default (shallow) copy constructor that copies over the individual fields.
  6. Signifies that some other class/function has access to an object's private members. It's used when we would like to define functions (like stream insertion/extraction) that need access to the private data but are not (can't be) members of the class.
---

1. What is overloading in C++?
2. Can you overload a function with the same name, same parameters, but different return type?
3. Is it true that we can overload all the operators of a class?
4. What is a copy constructor? When will it be called?
5. What happens if you don't define a copy constructor?
6. What is the `friend` keyword? When do we use it?
