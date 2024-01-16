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
<li><strong>Due: Friday, November 3rd at 11pm EST (Baltimore time).</strong></li>
<li><em>This assignment is worth 60 points.</em></li>
</ul>
</div>
</div>

## Learning Objectives
<div class='admonition success'>
<div class='title'>Objectives</div>
<div class='content'>
<p>To practice with:</p>
<ul>
<li>C++ STL containers,</li>
<li>C++ string class,</li>
<li>C++ file I/O,</li>
<li>command-line arguments</li>
<li>Command-line arguments and input validation.</li>
</ul>
</div>
</div>


<div class='admonition info'>
<div class='title'>Starter files!</div>
<div class='content'>
<p>Make sure to do a `git pull` on the public repo before starting to work to get the starter files for this homework. You must work with the starter files to complete this homework.</p>
</div>
</div>

## Overview
You will use C++ classes, and containers from the C++ STL (Standard Template Library) to build a simple "language model". The language model will be based on **word-level** trigram frequency: how often ordered triples of words appear consecutively in a collection of example texts.

You must write a C++ program which when built, creates an executable file named **hw5** that takes (at least) two command-line arguments. The command-line arguments are *a filename*, and *an operation* (along with additional arguments as needed by the operation). Each time your program is run, it should build your trigram-based language model by processing each text file specified in the input filename list. What happens after that will depend on the second argument specified at the command line, which will denote one of four operations. Your program should output to the C++ standard output stream (i.e., `std::cout`) the result of the requested operation, and then exit.

The operations your program will perform on the model are each denoted with a single lower-case alphabet letter as described below:

- `a` - *ascending alphabetical list*: output a list of all trigrams found in the training data, along with their frequency counts, ordered lexicographically by trigram in **ascending order**. This means that trigrams are output in (ascending) alphabetical order by the first word in each trigram, using the alphabetical order of the second and then third word in each trigram to break ties.

- 'd' - *descending alphabetical list*: output a list of all trigrams found in the training data, and their frequency counts, ordered lexicographically by trigram in **descending order**. This means that trigrams are output in reverse alphabetical order by the first word in each trigram, using the reverse alphabetical order of the second and then third word in each trigram to break ties.

- `c` - *count-ordered list*: output a list of trigrams found in the training data, and their frequency counts, ordered in **decreasing order by count**. Ties are broken using ascending alphabetical ordering of first words, and then second, and then third words.

- `f` - most frequently occurring third word: given two additional command-line arguments which are words `x` and `y`, determine the word `z` which occurs most frequently in the training data among trigrams beginning with `x` as `word1` and `y` as `word2`, and then output its frequency count and the trigram `[x y z]` itself. If two or more trigrams of the form `[x y ?]` tie for first place, then report the trigram that comes first in ascending lexicographical order. If no trigram of the form `[x y ?]` appears in the model, report the following result: `No trigrams of the form [x y ?]`.

Regardless of the operation selected, your output will consist of one trigram with associated count per line. On a given line, output the frequency count first, then a space, a dash, and a space, then the trigram as `[trigram_word1 trigram_word2 trigram_word3]`. Note that the trigram is bracketed using `[` and `]` and words within the trigram should be separated by single space characters.

## Building Your Model
You will build your language model from a given set of example texts. As the model is based on trigram counts, you must count how many times triples of consecutive words appear in each example text. Words should be treated case-sensitively, meaning `she` and `She` should be considered **two different words**. Also, although the example texts may contain punctuation, you should not treat the punctuation specially. That is, if the file contains the phrase `he, she, I`, then you can consider the first word as `he,`, the second as `she,` and the third as `I`. Said another way, process your example files as if they contained no punctuation, and consider the two words `she` and `she,` as **two different words**.

You will include in the model you create the special words `<START_1>`, `<START_2>` (to indicate the start of each document), and `<END_1>`, `<END_2>` (to indicate the end of each document). In particular, suppose your example text begins with words `a b` and ends with words `c d`. Then you must add into your model the four trigrams

```
<START_1>, <START_2>, a
<START_2>, a, b
c, d, <END_1>
d, <END_1>, <END_2>
```

And you will need to add four similar trigrams for each example text that you process.

Your program must make meaningful use of some combination of container classes from the C++ Standard Template Library to store your model. **_Taking time at the start to select a good design will make your code cleaner and easier to write and debug._**

## Handling Invalid Input
Your program should first read in all training data to create a language model, and then plan to execute the given command on that data. Your program may encounter invalid input along the way and should issue exactly the following error messages.

The first argument after the `hw5` command should be considered the list of filenames. If no argument exists, or if this file cannot be opened, your program should output the following error message (where `my_list.txt` is the input argument or is an empty string if no argument was provided) and immediately exit the program without producing additional output.
```
Invalid file list: my_list.txt
```
If the file list **can** be opened, it is possible that one of the names in the list denotes a training data file which cannot be opened. In that case, your program should output an extra line of output like this (where `file5.txt` is the name of the file that cannot be opened) at the moment the file open fails

```
Invalid file: file5.txt
```

to indicate which file could not be processed, but the program should **continue to read** in all other listed files as usual, and output the results based on the data in the files it is able to open. The program should output one `Invalid file:` line per each file in the file list that it is unable to open.

Valid command letters are `a`, `d`, `c`, and `f`. Once the list of files has been found to be valid and data has been collected to create your model, if your program finds that the user inputs any other value as its second argument (even a string such as alpha) or no second argument at all, output the line below and exit the program immediately:
```
Invalid command: valid options are a, d, c, and f
```
Finally, if the valid command letter `f` is given as the second argument, then there must be two additional command line arguments which follow, and they can be any strings at all. If fewer than two additional command line arguments are present, then output the following line and exit the program immediately:
```
Invalid argument list: f requires two additional command-line arguments
```
In all cases, extra command-line arguments specified on the command line after those arguments required above may simply be ignored.

## Sample Runs
Suppose the list of training texts input for your program resides in a file named [tiny_ex.txt](https://github.com/jhu-ip/cs220-f23-public/blob/master/homework/hw5/tiny_ex.txt), and the contents of the file are names of text files containing excerpts from Dr. Seuss books as follows (click the links to see the contents of the two text files, or view them in the public repo):

[sl.txt](https://github.com/jhu-ip/cs220-f23-public/tree/master/homework/hw5/sl.txt)

[ge.txt](https://github.com/jhu-ip/cs220-f23-public/tree/master/homework/hw5/ge.txt)

Sample run #1
```
$ ./hw5 tiny_ex.txt a
1 - [<START_1> <START_2> I]
1 - [<START_1> <START_2> they've]
1 - [<START_2> I do]
1 - [<START_2> they've talked]
1 - [Claus. <END_1> <END_2>]
2 - [I do not]
1 - [Santa Claus. <END_1>]
1 - [a lot about]
1 - [about flaws. they've]
1 - [about gauze. they've]
1 - [about laws and]
1 - [about old Santa]
1 - [about paws and]
2 - [and they've talked]
1 - [anywhere <END_1> <END_2>]
2 - [do not like]
1 - [flaws. they've talked]
1 - [gauze. they've talked]
1 - [here or there]
1 - [laws and they've]
1 - [like them anywhere]
1 - [like them here]
1 - [lot about old]
2 - [not like them]
1 - [old Santa Claus.]
1 - [or there I]
1 - [paws and they've]
1 - [quite a lot]
1 - [talked about flaws.]
1 - [talked about gauze.]
1 - [talked about laws]
1 - [talked about paws]
1 - [talked quite a]
1 - [them anywhere <END_1>]
1 - [them here or]
1 - [there I do]
4 - [they've talked about]
1 - [they've talked quite]
```
Sample run #2
```
$ ./hw5 tiny_ex.txt c
4 - [they've talked about]
2 - [I do not]
2 - [and they've talked]
2 - [do not like]
2 - [not like them]
1 - [<START_1> <START_2> I]
1 - [<START_1> <START_2> they've]
1 - [<START_2> I do]
1 - [<START_2> they've talked]
1 - [Claus. <END_1> <END_2>]
1 - [Santa Claus. <END_1>]
1 - [a lot about]
1 - [about flaws. they've]
1 - [about gauze. they've]
1 - [about laws and]
1 - [about old Santa]
1 - [about paws and]
1 - [anywhere <END_1> <END_2>]
1 - [flaws. they've talked]
1 - [gauze. they've talked]
1 - [here or there]
1 - [laws and they've]
1 - [like them anywhere]
1 - [like them here]
1 - [lot about old]
1 - [old Santa Claus.]
1 - [or there I]
1 - [paws and they've]
1 - [quite a lot]
1 - [talked about flaws.]
1 - [talked about gauze.]
1 - [talked about laws]
1 - [talked about paws]
1 - [talked quite a]
1 - [them anywhere <END_1>]
1 - [them here or]
1 - [there I do]
1 - [they've talked quite]
```
Sample run #3
```
$ ./hw5 tiny_ex.txt f talked about
1 - [talked about flaws.]
```
Sample run #4
```
$ ./hw5 tiny_ex.txt z
Invalid command: valid options are a, d, c, and f
```
Sample run #5
```
$ ./hw5 ge.txt a
Invalid file: I
Invalid file: do
Invalid file: not
Invalid file: like
Invalid file: them
Invalid file: here
Invalid file: or
Invalid file: there
Invalid file: I
Invalid file: do
Invalid file: not
Invalid file: like
Invalid file: them
Invalid file: anywhere
```

## Getting Started
Please keep in mind the following:
- This is an individual assignment, so you may not work on code with fellow class members, even any partners you have worked with for other assignments in this course.
- Include your name and JHED as comments in the top two lines of each `.cpp` and `.h` file you create.
- In the assignments folder of your private repository (`cs220`), create a new subfolder named `hw5`. Do your work in that subfolder and use `git add`, `git commit` and `git push` **regularly**. Use `git commit` and the associated comments to document your work.
- You **must** factor your code into functions, each function performing a distinct task. Put function declarations in a file called `language_model.h` (do not forget header guards!) and place their definitions into a file named `language_model.cpp`. Your `main` function will reside in a file named `hw5.cpp`.
- Your file input must be accomplished using C++ stream input (no use of C functions such as `fscanf`, `fgets`, etc. is allowed).
- Start with the template `Makefile` in the public repo: `cs220-f23-public/tree/master/homework/hw5/Makefile`. This contains some, but not all, of the needed target definitions. Include the final `Makefile` (with a working target for `hw5`) in your submitted files.
- All variables must be declared inside functions. **No variables should be global or `extern`**.
- You may not use any using statements in a header file. You may not include `using namespace std;` in any file.
- Your code must compile with no errors or warnings with the typical command: `g++ -Wall -Wextra -std=c++11 -pedantic`. Do not use any special libraries, like `math.h`, that require different additional/different compiler options.

## Testing
As you already know, it is extremely, extremely good programming practice to write test cases to 

1.  test your basic assumptions, 
2.  try "corner" and extreme cases, 
3.  test loop invariants, etc.

It can save you a great deal of frustration and effort down the road. We expect that you will write testing code for each of your functions as you work on this assignment, but you should not turn in your testing code for this assignment.

## Git Log
You **must** include with your submission a copy of the output of `git log` showing at least five commits to the repository. See the related point under [Getting Started](#getting-started) above. Save the `git log` output into a file called `gitlog.txt` (e.g. by doing `git log > gitlog.txt`).

## README
Please submit a file called `README` (not `README.txt` or `README.md`, etc. -- just `README`) including information about what design choices you made and anything the graders should know about your submission. In `README` you should:
- Write your name and JHED ID at the top of the file.
- Briefly justify the structure of your program; why you defined the functions you did, etc.
- If applicable: Highlight anything you did that was particularly clever.
- If applicable: Tell the graders if you could not do everything. Where did you stop? What did you get stuck on? What are the parts you know do not work according to the requirements?

## Submission
Create a `.zip` file named `hw5.zip` containing:
- `hw5.cpp`
- `language_model.h`
- `language_model.cpp`
- `README`
- `Makefile`
- `gitlog.txt`

Copy `hw5.zip` file to your local machine (using `scp` or `pscp`), and submit it as Homework 5 on GradeScope. When you submit, GradeScope conducts a series of automatic tests. These do basic checks, e.g. to check that you submitted the right files. If you see error messages (in red), address them and resubmit. You may re-submit any number of times prior to the deadline; only your latest submission will be graded. Review the course syllabus for late submission policies (grace period and late days).


<div class='admonition danger'>
<div class='title'>Warning</div>
<div class='content'>
<p>
Remember that if your final submitted code does not compile, you will earn a zero score for the assignment.
</p>
</div>
</div>

<div class='admonition info'>
<div class='title'>Important Notes</div>
<div class='content'>
<p>
Two notes regarding automatic checks for programming assignments:
<ul>
<li>Passing an automatic check is not itself worth points. (There might be a nominal, low point value like 0.01 associated with a check, but that won’t count in the end.) The checks exist to help you and the graders find obvious errors.</li>
<li>The automatic checks cover some of the requirements set out in the assignment, but not all. It is up to you to test your own work and ensure your programs satisfy all stated requirements. Passing all the automatic checks does not mean you have earned all the points.</li>
</ul>
</p>
</div>
</div>
