---
id: day33_questions
layout: default
title: Day 33 Recap Questions
reference solutions:
  1. when a pointer/reference to a base class is used to point to/reference a derived object, the compiler “squints” and only looks at the base’s subset of the information, effectively "slicing" off the parts specific to the derived class
  2. a way to indicate that a function in a derived class is supposed to override one in a base class (the base class uses the `virtual` notation)
  3. when a function in a derived class has the same name but different parameters than one in its base class, the one in the base class is hidden
  4. include a pure virtual function (prototype = 0, no implementation provided), or do not provide a public constructor
  5. No, but you can declare a pointer to an abstract class that will refer to a concrete object of a derived class type
---

1.	Explain what object slicing is in C++.
2.	What is the `override` specifier in C++?
3.	Explain what function hiding is in C++?
4.	In C++, how do you make an abstract class?
5.	Can we create an object from an abstract class?
