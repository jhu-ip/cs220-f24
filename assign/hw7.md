---
id: hw5
layout: default
title: Homework 7
---


<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<ul>
<li>You are expected to work individually.</li>
<li><b>Due: Friday November 17th at 11pm EDT (Baltimore time).</b></li>
<li>This assignment is worth 70 points.</li>
<li>This is the last assignment for which you can use late days!</li>
</ul>
</div>
</div>

## Learning Objectives
<div class='admonition success'>
<div class='title'>Objectives</div>
<div class='content'>
<p>To practice with:</p>
<ul>
<li>C++ classes</li>
<li>Rule of 3</li>
<li>C++ operator overloading</li>
<li>C++ templates</li>
<li>C++ dynamic memory allocation</li>
<li>linked lists</li>
</ul>
</div>
</div>


## Overview - DataLoop 

In this assignment, you are going to implement data structures we are calling `DataLoop`. The main idea behind a `DataLoop` is that it is a [circular doubly linked list](https://en.wikipedia.org/wiki/Doubly_linked_list) that contains a sequence of nodes that have forward (`next`) and backwards (`prev`) pointers in a continuous loop. Our dataloop allows for shifting of the start position, concatenation, and splicing of one list into another. Some applications of this concept include round-robin processing of jobs by a computer operating system, turn-taking in multi-player games, and a double ended queue. In the first part of this assignment you'll build a `DataLoop` that simply holds integers. In the second part you'll convert that to a structure that can hold data of any type. 

This homework comes with three starter source files (`DataLoop.h`, `DataLoopTest.cpp`, and `TDataLoopTest.cpp`). You should get these files from the public repository under `homework/hw7`. Make sure you have a copy of these files before you start writing any code.

## Program Specification
### An Integer DataLoop
To start this homework, check the comments and class definition of `DataLoop` in `DataLoop.h`, which is a dynamically allocated dataloop of integers. You must not change the provided private members of the class. These include a friend declaration for our test code and a nested `_Node` `struct` definition for convenience. There are two private data members: `start` pointer to the "first" node in the loop and `count` to keep track of the number of nodes in the dataloop. Your task is to implement this class.

Below are a list of functions you need to implement and some tips for the implementation:

(1). Default constructor: this function should create an empty dataloop.

(2). Non-default constructor: this function takes a integer input and creates a dataloop with one element. (Hint: to create a new `_Node`, you can use list-initialization, e.g. `_Node({20, nullptr, nullptr})`.) In this case, the dataloop only has one node, so both `next` and `prev` should be self loops pointing to (`start`).

(3). Copy constructor: applying the rule of 3, we will have a non-trivial destructor so we should implement the copy constructor for a deep copy.

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<ul>
<li>For constructors, remember to make good use of member initializer lists. </li>
<li>You may want to implement <code class='highlighter-rouge'>operator=</code> first and reuse it to implement the copy constructor.</li>
</ul>
</div>
</div>
(4). `operator=(DataLoop)`: applying the rule of 3, we will have a non-trivial destructor so we should implement the assignment operator for a deep copy.

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<ul>
<li>When you implement your copy logic, draw it out on paper. That will help to figure out how to update the pointers.</li>

<li>For the assignment operator, if you reallocate memory, make sure there are no memory leaks.</li>

<li>You may want to implement <code class='highlighter-rouge'>operator+=</code> first and reuse it to implement the assignment operator.</li>
</ul>
</div>
</div>


(5). Destructor: this function should deallocate all the dynamically allocated memory.

(6). `operator==(DataLoop)`: this overloaded operator compares two dataloops and returns `true` if they contain the same integers, node by node; otherwise, returns `false`.

(7). `operator+=(int)`: this overloaded operator takes a integer and adds it to the "end" of the dataloop. In other words, a new `_Node` is allocated and inserted just before `start`, but `start` is not changed.

(8). `operator+(DataLoop)`: this overloaded operator creates and returns a new `DataLoop` by concatenating copies of both (the implicit and explicit parameters), with the start of the explicit parameter dataloop positioned at the original end of this dataloop. The count for this new dataloop should be updated accordingly, and the start position should mimic the start of this implicit parameter. Neither of the original dataloops should be changed by this function.

<div class='admonition tip'>
<div class='title'>operator+</div>
<div class='content'>
<p>
The <code class='highlighter-rouge'>operator+</code> assigns the result to a new variable, not to the implicit object. e.g. consider <code class='highlighter-rouge'>a = b + c</code>. <code class='highlighter-rouge'>b + c</code> is the same as <code class='highlighter-rouge'>b.operator+(c)</code>.  The implicit object <code class='highlighter-rouge'>b</code> remains unchanged after calling <code class='highlighter-rouge'>b.operator+(c)</code>, as does explicit parameter <code class='highlighter-rouge'>c</code>. <code class='highlighter-rouge'>b.operator+(c)</code> returns the concatenated result and it is then assigned to <code class='highlighter-rouge'>a</code> in this example using the assignment operator.
</p>

<p>
</p>
You may want to use other operators/functions to implement <code class='highlighter-rouge'>operator+</code>.
</div>
</div>

(9). `operator^(int)`: this overloaded operator shifts the `start` position in this dataloop according to the parameter offset - forward for a positive value and backward for a negative value. A 0 offset does not make any changes, and no changes will be made to an empty dataloop or one with only one node. If the parameter is larger than `count`, the result should be as if you keep looping around the circular list by that many nodes.

(10). `splice(DataLoop, size_t)`: this function inserts the entire explicit parameter DataLoop into the implicit parameter DataLoop at the indicated position, where 0 would indicate the starting position of the current DataLoop and update `start` accordingly. An insert position of n would indicate that the start node of rhs comes after node n in the current DataLoop (assuming you start counting nodes with 1). The nodes in the input DataLoop (rhs) should be inserted in their current order, beginning with that object's starting node. The count for the current DataLoop should be updated. If the indicated position is larger than the current count, effectively loop around as much as necessary to get to the indicated spot. The parameter dataloop should then be reset to an empty dataloop since both can't co-exist.

<div class='admonition danger'>
<div class='title'>Note!</div>
<div class='content'>
<p>
Make sure that only one dataloop object is holding the nodes after a splice operation - the implicit parameter (object) that calls the function. Otherwise, if the parameter still has nodes associated with it, then deleting that object will delete the nodes from the other as well since they should not be copies.
</p>
</div>
</div>

(11). `length()`: this function returns the number of data values (nodes) in this object.

(12). `std::stream& operator<<`: this overloaded operator prints a dataloop in this format: "-> data1 <--> data2 <--> ... <--> datax <-" where data1 is the value in the start node. For example, if we have a DataLoop with three elements 32, 12, 20 starting at 12 it will print "-> 12 <--> 20 <--> 32 <-". If the DataLoop is empty, it prints ">no values<". Note that the output does not include any end of line characters.

### Testing
You are given a file named `DataLoopTest.cpp` that provides basic tests for your implementation. Once you are done implementing `DataLoop.cpp`, you should compile and run `DataLoopTest` to make sure that all test cases pass. Keep in mind that these are minimal cases. You should develop your own test cases and test your program thoroughly.

### A Templated DataLoop
Next, you will generalize the `DataLoop` from above to create a templated dataloop. Note that you will write your own header file for this part. Your templated class must be called `TDataLoop` and be declared in `TDataLoop.h` and fully defined (i.e. implementation of functions longer than one line should occur) in a file named `TDataLoop.inc`. Note that the file has the `.inc` extension but not `.cpp`. The `TDataLoop.inc` should be included at the end of the `TDataLoop.h` file after the class declaration (this is because we cannot split templated classes into fully separate `.h` and `.cpp` files). Also, note that the `TDataLoop` class must be templated so that it works for any data type.

Remember to keep data `private`, and use `const` to protect objects (explicit and implicit parameters) whenever you can. Your `TDataLoop` class must contain the **same** public functions and overloaded operators as the `DataLoop` class, except that parameters for the data stored will now be of some generic type (a template parameter) instead of an `int`.

Your template specification may look like this: 

```c
template< typename DataType >
```

You are given a file named `TDataLoopTest.cpp` that tests your implementation (for the templated version). Once you are done implementing `TDataLoop.h` and `TDataLoop.inc`, you should compile and run `TDataLoopTest` to make sure that all test cases pass. Also, keep in mind that these are minimal cases. You should develop your own test cases and test your program thoroughly.

## Error Handling
Because there is no user input for the code you are writing, you don't need to handle any invalid data or return any error codes. However, you should make sure that all your functions work for edge cases (empty dataloops, one element dataloops, 0 offset and position) as well as regular ones.

## Other Requirements
- Do not eliminate or change anything declared in the `DataLoop.h` file. You can add more `private` (helper) functions if you want to, but your `DataLoop.cpp` file should at least provide an implementation for all the functions that are declared in `DataLoop.h` file.
- Your program should only use `new` and `delete` for dynamic memory allocation/deallocation. Do not make use of C functions such as `malloc`, `calloc`, `free`, etc., for that purpose.
- All variables **must** be declared inside functions. No variables should be **global** or `extern`.
- Do not use `auto`.
- Use header guards in all header (`.h`) files.
- Do not use `using` in `.h` or `.inc` files.
- In C++ source files (`.cpp`), you may import individual symbols using statements like `using std::string`. Do not use `using namespace <id>`, either in headers or in source files.
- Make use of `gdb `to debug and run `valgrind` **regularly** to ensure there is no memory leakage or invalid memory usage. Your submitted program should not have a memory leak problem.
- Do develop your own test cases and test your functions thoroughly. You may share your test cases with your classmates, but never your source code.

## Submission Requirements
### Makefile and Compiling
Create and submit a Makefile with two executable program rules (in addition to the clean rule): 

1. a rule that creates a target executable called `DataLoopTest` for the integer dataloop test, and 
2. a rule that creates a target executable called `TDataLoopTest` for the templated dataloop test.

These two targets should compile with no errors or warnings using the typical C++ compilation command: `g++ <source> -Wall -Wextra -std=c++11 -pedantic`. Do not use any special libraries that require different or additional compiler options.

## Git Log and README
In the assignment's folder of your private repository (not the team repository you made for the midterm project), create a new subfolder named `hw7`. Do your work in that subfolder and use `git add`, `git commit`, and `git push` regularly. Use `git commit` and the associated comments to document your work. e.g. if you just modified `DataLoop.cpp` to add the constructor, you might do `git add DataLoop.cpp`; `git commit -m "DataLoop constructor is added!"`; `git push`.

Your submission includes a copy of the output of git log showing at least four commits to the repository. Save the `git log` output into a file called `gitlog.txt` (e.g. by doing `git log > gitlog.txt`).

Also, please submit a file called `README` (not `README.txt` or `README.md`, etc - just `README`) including information about what extra helper functions you added (if any) and anything the graders should know about your submission. In `README` you should:

- Write your name and JHED ID at the top of the file
- Briefly justify the structure of your program; why you defined the functions you added, etc
- If applicable, highlight anything you did that was particularly clever
- If applicable, tell the graders if you could not do everything. Where did you stop? What did you get stuck on? What are parts you already know do not work according to the requirements?

### Your submission to Gradescope
Create a `.zip` file named `hw7.zip` containing:
- `DataLoop.h`
- `DataLoop.cpp`
- `TDataLoop.h`
- `TDataLoop.inc`
- `DataLoopTest.cpp`
- `TDataLoopTest.cpp`
- `README`
- `Makefile`
- `gitlog.txt`
- other source files that you have created (Never submit any executable or object files!)

Copy the `hw7.zip` file to your local machine (using `scp` or `pscp`), and submit to Gradescope. When you submit, GradeScope conducts a series of automatic tests. These do basic checks, e.g. to check that you submitted the right files. If you see error messages (in red), address them and resubmit. You may re-submit any number of times prior to the deadline; only your latest submission will be graded. Review the course syllabus for late submission policies (grace period and late days).

<div class='admonition danger'>
<div class='title'>Important Note</div>
<div class='content'>
<p>Remember that if your final submitted code does not compile, you will earn a zero score for the assignment.

</p>
</div>
</div>

<div class='admonition info'>
<div class='title'>Important Notes</div>
<div class='content'>
<p>Two notes regarding automatic checks for programming assignments:</p>
<ul>
<li>Passing an automatic check is not itself worth points. (There might be a nominal, low point value like 0.01 associated with a check, but that won’t count in the end.) The checks exist to help you and the graders find obvious errors.</li>
<li>The automatic checks cover some of the requirements set out in the assignment, but not all. It is up to you to test your own work and ensure your programs satisfy all stated requirements. Passing all the automatic checks does not mean you have earned all the points.
</li>
</ul>
</div>
</div>

