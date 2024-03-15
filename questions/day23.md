---
id: day23_questions
layout: default
title: Day 23 Recap Questions
reference solutions:
  1. A way of defining something (function or class) so that it can work with multiple types.
  2. A collection of standardly used, templated objects and functions.
  3. "for( int i=0 ; i<v.size() ; i++ ) std::cout << v[i] << std::endl;" or " for( vector<type>::iterator it=v.begin() ; it!=v.end ; it++ ) std::cout << *it << std::endl;
  4. A clever pointer that knows how to move over the components of a data structure (e.g. supports increment and dereferencing).
  5. Use the push_back method.
  6. With a const_iterator, you are not allowed to change the contents.
  7. "first == 4.5  middle1 == 0.5   middle2 == 4  last == 20"  (separate lines)
---

1. What is a template in C++?
2. What is the standard template library (STL)?
3. How do you iterate over a `std::vector` and print out its elements?
4. What is an iterator in C++?
5. How do you add an element to an existing vector.
6. What's the difference between an `iterator` and a `const_iterator`?
7. (Bonus) What is the output of the program below?

```c
#include <iostream>
#include <vector>

using std::cin; using std::cout; using std::endl;
using std::vector;

int main() {

  vector<double> numbers;
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 1)
      numbers.insert(numbers.begin(), i / 2.0);
    else
      numbers.push_back(i * 2.0);
  }

  vector<double>::iterator it = numbers.begin();
  cout << "first == " << *it << endl;
  cout << "middle1 == " << *(it + 4) << endl;
  cout << "middle2 == " << *(it + 5) << endl;
  cout << "last == " << *(it + 9) << endl;
  
}
```
