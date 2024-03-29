---
id: hw5
layout: default
title: Homework 5
---



<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<ul>
<li>You are expected to work individually.</li>
<li>Due: Friday March 29 at 11pm (Baltimore time).</li>
<li>This assignment is worth 70 points.</li>
</ul>
</div>
</div>

<div class='admonition caution'>
<div class='title'>Late-day Deadline</div>
<div class='content'>
It looks like a "ugrad" outage is planned on Sat 3/30. For this reason, if you are planning to use late days on this homework, Saturday will not be counted as a late day. In other words, you get an extra late day if you are using late days on this homework. The original deadline remains the same Friday 3/29, 11pm.
</div>
</div>


## Learning Objectives
<div class='admonition success'>
<div class='title'>Objectives</div>
<div class='content'>
<p>To practice with:</p>
<ul>
<li>C++ STL containers</li>
<li>the `string` class</li>
<li>file I/O</li>
<li>command-line arguments</li>
<li>input validation</li>
</ul>
</div>
</div>


<div class='admonition danger'>
<div class='title'>Individual Assignment</div>
<div class='content'>
<p>
This is an individual assignment. This means you must NOT show your working code to another student, and should discuss with each other only the assignment requirements and expectations. See course staff for coding help.</p>
</div>
</div>


## Overview

<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<p>
Before you start working on this homework, make sure you do a `git pull` on the `public` repo to get a copy of the starter code that comes with this assignment. The starter code is very minimal that includes one file only named `digraph_analyzer.cpp`. For this homework, you do not need to do any extra error checking other than what is already included in the instructions and starter code!</p>
</div>
</div>

In this assignment, you will write a program to analyze digraphs and trigraphs in an input text file. A digraph/trigraph is a combination of letters that form one sound in a word (e.g., `ch` in `character` or `sch` in `schindler`). The format of an input text file is as follows:

There is a positive integer number `n` at the beginning of the file indicating how many digraphs/trigraphs will be processed; a list of `n` digraphs/trigraphs will then follow. After this list, there is a text. A text is a sequence of words with only a limited set of punctuations. The possible punctuations are period, comma, exclamation point and question mark. You can assume there will be no other punctuations in the text.

Example of a valid input file (`input.txt`):

```
5 ch ou ee sch wh

I was lucky. All of a sudden I thought of something that helped make me know I was
getting the hell out. I suddenly remembered this time in around October that I and
Robert Tichener and Paul Campbell were chucking a football around in front of the
academic building. They were nice guys, especially Tichener. It was just before
dinner and it was getting pretty dark out but we kept chucking the ball around
anyway. It kept getting darker and darker and we could hardly see the ball any more
but we did not want to stop doing what we were doing. Finally we had to. This
teacher that taught biology Mr. Zambesis stuck his head out of this window in the
academic building and told us to go back to the dorm and get ready for dinner. If
get a chance to remember that kind of stuff I can get a goodby when I need one, 
at least most of the time I can. As soon as I got it, I turned around and started
running down the other side of the hill toward old Spencer house. He did not live on
the campus. He lived on Anthony Wayne Avenue.
```

The program should count how many times each of the expected digraphs/trigraphs occur in the text, *case-insensitively*. Then, it should print to standard output the list of all the digraphs/trigraphs and their containing words (in order of their appearance in the text) in lower case, with the digraphs/trigraphs sorted in one of the three ways specified as a command-line argument. The possible arguments are: `a` (ASCII order), `r` (reverse ASCII order), and `c` (count, ordered from largest to smallest, with ties broken by ASCII order).

Example:

```bash
./digraph_analyzer input.txt r
```

will run your executable named `digraph_analyzer` on the input file named `input.txt` (given above) located in the current folder and outputs the digraphs/trigraphs in reverse-ASCII order (e.g., digraph `ou` would be printed before digraph `ee`). Note the punctuations are removed from the words and all output is lower-case only. [Recall: possible punctuations are limited to comma, exclamation point, question mark and period.] This will be the output of the above command:

```
wh: [what, when]
sch: []
ou: [thought, out, around, around, out, around, could, out, around, house]
ee: [see, need]
ch: [tichener, chucking, tichener, chucking, teacher, chance]
q?>
```

As can be seen, the program then awaits the user to enter queries by prompting `q?>`. The user can input 1) a number, 2) a digraph, or ) the word `exit`. If a number is entered, it should list all the digraphs/trigraphs (in ASCII order) that occur that many times and their corresponding containing words (in order of their appearance in the text), or print `None` if none exists. If a digraph/trigraph is entered, it should list how many times the digraph/trigraph occurs and in which words (in order of their appearance in the text) or `No such digraph` if it is not in the list of input digraphs/trigraphs; 0 would be printed for digraphs/trigraphs that are among the input list but not found in any word of the text. The program terminates when the word `exit` is typed in. All input queries should be accepted as either upper or lower case, and handled as if lower case. 

Sample query runs on the `input.txt` example:

```
./digraph_analyzer input.txt r
wh: [what, when]
sch: []
ou: [thought, out, around, around, out, around, could, out, around, house]
ee: [see, need]
ch: [tichener, chucking, tichener, chucking, teacher, chance]
q?>6
ch: [tichener, chucking, tichener, chucking, teacher, chance]
q?>0
sch: []
q?>ch
6: [tichener, chucking, tichener, chucking, teacher, chance]
q?>sch
0: []
q?>CH
6: [tichener, chucking, tichener, chucking, teacher, chance]
q?>ck
No such digraph
q?>exit
```

<div class='admonition caution'>
<div class='title'>Important Note</div>
<div class='content'>
<p>
The program must use container classes from the C++ Standard Template Library (STL) to keep track of digraphs, words, and counts.  You must at least use `std::string`, `std::vector` and `std::map`, but you are free to use others as well. Take the time to understand the STL containers; selecting the right ones will make your code cleaner and easier to write and debug.</p>
</div>
</div>

<div class='admonition caution'>
<div class='title'>Special Cases</div>
<div class='content'>
<ul>
<li>If a certain digraph/trigraph is contained more than once in a word, count that appearance of the word only once. For example, the digraph `ch` is in the word `chacha` twice, but should only be counted once.</li> 
<li>If a digraph is found in a word that occurs more than once in the text, that word should be counted as many times as it occurs in the text.</li>
</ul>
</div>
</div>

## Git log
<p>
In the assignments folder of your private repository, create a new subfolder named `hw5`.  Do your work in that subfolder and use `git add`, `git commit` and `git push` regularly to backup your work as you make progress!</p>


## README
<p>
You need to submit a file called `README` (not `README.txt` or `README.md`, etc -- just `README`), including information about additional changes you made (besides the program specification) and anything the graders should know about your submission. In your `README` you should write your Hopkins ID (random 6 character code) at the top of the file, briefly justify the structure of your program; why you defined the functions you did, etc., and if applicable tell the graders if you couldn't do everything.  Where did you stop?  What did you get stuck on?  What are the parts you already know do not work according to the requirements?</p>

## Specific Requirements

<ul>

<li>Your program must have all the functionality described above.</li>
<li>You must use `std::cin`, `std::cout`, the insertion operator `<<` and the extraction operator `>>` for all input and output.  Don't use `printf`, `scanf` or other C I/O functions.</li>
<li>Your program should not directly allocate or deallocate any heap memory.  That is, you should not directly call `malloc`, `free`, `realloc`, `calloc`, `new`, `delete` or similar functions.  STL containers or other parts of the C++ library might call these functions, which is fine.</li>
<li>Your solution should run very quickly, even on large input texts. If your solution is running slowly (more than a couple seconds) think again about whether you are making good use of iterators and the STL containers.</li>
<li>Factor your code into functions, each function performing a distinct task.  Don't do everything in main.</li>
<li>All variables must be declared inside functions. No variables should be global or extern.</li>
<li>Do not use auto.</li>
<li>Use header guards in all header (.h) files.</li>
<li>Do not use `using` in header (.h) files.</li>
<li>In C++ source files (.cpp files), you may import individual symbols using statements like `using std::string`. </li> 
<li>Do not use `using namespace ID`, either in headers or in source files.</li>
<li>You do not need to handle or report any errors other than what is provided in the starter code. </li>
</ul>

## Hints and Suggestions

<ul>
<li>Style matters: leave explanatory useful comments, use meaningful sensible variable/function names, use correct indentations etc.</li>
<li>Decompose the entire task into a number of functions with well-defined objectives</li>
<li>One possible way to structure your code is to have two files (other than `digraph_analyzer.cpp` which contains the `main` function) named `digraph_functions.h` to declare all necessary auxiliary functions that (collectively) accomplish the task of digraph analysis and `digraph_functions.cpp` to implement the functions declared in `digraph_functions.h`. You would then include `digraph_functions.h` in `digraph_analyzer.cpp` and make calls to the functions decalred in `digraph_functions.h` (and implemented in `digraph_functions.cpp`) as needed.
* Write tests and test your work thoroughly, but you don’t have to turn your tests in.</li>
<li>Make use of gdb to debug and also run valgrind to make sure there is no memory leakage.</li>
</ul>


### Makefile

<div class='admonition caution'>
<div class='title'>Important Note</div>
<div class='content'><p>
You need to write your own Makefile. Make sure you have defined the target `digraph_analyzer` properly to compile your program. We will run `make digraph_analyzer` to compile your program and produce an executable named `digraph_analyzer`. Failure to comply with this requirement will result in a <strong>zero</strong> score.</p>
</div>
</div>

### Your submission to Gradescope
Create a `.zip` file named `hw5.zip` containing your source/header files, `Makefile`, `gitlog.txt`, and `README`. Do not include any `.txt` files  and never submit any executable or object files!

Copy the `hw5.zip` file to your local machine (using `scp` or `pscp`), and submit it to Gradescope. When you submit, Gradescope conducts a series of automatic tests. These do basic checks, e.g. to check that you submitted the right files. If you see error messages (in red), address them and resubmit. You may resubmit any number of times prior to the deadline; only your latest submission will be graded. Review the course syllabus for late submission policies (grace period and late days).


<div class='admonition danger'>
<div class='title'>Danger</div>
<div class='content'>
<p>Remember that if your final submitted code does not compile, you will
earn a zero score for the assignment.</p>
</div>
</div>



<div class='admonition info'>
<div class='title'>Info</div>
<div class='content'>
<p>Two notes regarding automatic checks for programming assignments:</p>
<ul>
<li>Passing an automatic check is not itself worth points. (There might
be a nominal, low point value like 0.01 associated with a check, but
that won’t count in the end.) The checks exist to help you and the
graders find obvious errors.</li>
<li>The automatic checks cover some of the requirements set out in the
assignment, but not all. It is up to you to test your own work and ensure
your programs satisfy all stated requirements. Passing all the automatic
checks does not mean you have earned all the points.</li>
</ul>
</div>
</div>
