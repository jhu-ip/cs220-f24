---
id: hw1
layout: default
title: Homework 1
---

<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<ul>
<li>You are expected to work individually.</li>
<li><strong>Due: Friday, September 13th at 11pm EST (Baltimore time).</strong></li>
<li><em>This assignment is worth 60 points.</em></li>
</ul>
</div>
</div>

## Learning Objectives
<div class='admonition success'>
<div class='title'>Objectives</div>
<div class='content'>
<ul>
<li>arithmetic operators</li>
<li>arrays</li>
<li>control structures</li>
<li>input collection and validation</li>
<li>version control using <code>git</code></li>
</ul>
</div>
</div>

### Overview

This assignment is inspired by the "Rocks, Stones, Sand in a Jar"
story that you may have heard with respect to prioritizing important
things in your life. You can read about it in many forms, such as
[this
one](https://medium.com/@adityakothadiya/another-side-of-the-rocks-pebbles-and-sand-story-9e26a6cc0af). In
this homework, you will write a program to help the user keep track of
tasks of different time durations, as long as they fit into a "jar" of a
specified size.

### Program Requirements

We will use 10 as the maximum number of different task types/durations
that the program must handle and 600 (10 hours) as the maximum number
of minutes that any user can specify as their jar size. When the
program starts, it prompts the user to enter the number of minutes
they have available, ie, the size of their current jar. It must do error
handling to make sure that the input is an integer and that it is a
valid value (not negative and no more than the program maximum of
600). (See below for prompts and error handling details.)

Next the program will prompt the user to enter pairs of task
identifiers and time durations. The identifiers must be single
characters (such as 'i' for interview or 'm' for meeting) and the
durations must be integers. You do not need to do any error checking
on these values. The user must enter 0 0 as the input to end this
process. Your program must enforce the program limit of at most 10
different type/duration pairs.

Once all of the task identifiers and durations are recorded, the
program enters a command loop. Each time the program prompts the user
to enter a command the user enters the one-letter name of the command,
and any additional values needed for the command.  The program then
carries out the command if legal as described below, and if the
command was not "`q`" (quit), continues the command loop.

There are four commands:

* The `a` command adds to the count of how many tasks of a specified
  type are in the user's jar. The `a` command is followed by
  the one-letter identifier matching the type of task to be added (case-sensitive), followed by
  the integer count of how many of that type of task should be added to
  the jar. For example `a p 11` would add 11 of the type of task
  identified by the letter "`p`" to the jar. Your program must check to make sure that the request can be satisfied within the user specified size of their jar, otherwise reject the command as invalid. 
* The `r` command subtracts from the count of how many tasks of a specified
  type are in the user's jar. It behaves like the "`a`" command, except
  that the count of the specified type of task is subtracted from the jar
  rather than added to the jar. Your program must check to make sure that the request can be satisfied, ie, that the requested type and quantity already exist in the jar. 
* The `s` command summarizes the user's task jar. The output is
  formatted as comma-separated values (CSV).  First, a header line with
  the fields "Identifier", "Duration", "Count", and "Total Time" is
  printed. Then, for each kind of task (in the order in which they were
  entered at the beginning of the program execution), an output line is
  printed with the task identifier, task duration, number of that
  type of task in the user's jar, and total value of that kind of
  tasks in minutes. For both the header line and the lines summarizing each
  kind of task, fields are separated by comma ("`,`") characters, with
  no space before or after each comma. At the end of the summary, a line
  reading "<code class='highlighter-rouge'>Total time in jar: <i>X</i>.<i>YY</i></code> out of <i>H</i>.<i>MM</i> possible"
  is printed, where *X* and *YY* indicate the number of hours and minutes in the jar based on user input, and *H* and *MM* indicate the number of hours and minutes that the jar could hold.
* The `q` command causes the command loop to terminate.

Note that the user could also terminate the command loop by typing
**ctrl-d** when prompted for a command.

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>In some situations, the user will need to press <strong>ctrl-d</strong>
twice in a row in order to generate an end-of-file condition for the
program's standard input.</p>
</div>
</div>

When the command loop terminates, the program prints a line with the
text `Bye!` and then exits with the exit code 0.

### Error Handling

The program should handle errors as follows.

If one of

* the user doesn't enter a valid value for their jar size when prompted, or
* the user doesn't enter a valid identifier and duration for a task during set-up, or
* the user doesn't enter a valid identifier and quantity for a task after an `a` or `r` command

then the program should print the line "`Invalid input`" to `stderr` and exit with the
exit code 1.

If the user enters a task identifier as part of an `a` or `r` command that
is not one of the identifiers entered by the user during set-up,
the program should print the line "`Unknown task identifier`" to `stderr`
and exit with the exit code 2. Note that the "`Unknown task identifier`"
should only be printed if the task identifier and count were both
read successfully.

If one of

* the `a` command can't be satisfied because it would overfill the jar, or
* the `r` command can't be satisfied because the jar doesn't have that many of the requested task type, or
* the user enters a command character that is not one of `a`, `r`, `s`, or
`q`, 

then the program should print the line "`Invalid command`" to `stderr` and continue with the next command loop.

If no errors occur and the program completes normally, it should exit with the
exit code 0.

Note that all of your code can be in a single `main` function, so a `return`
statement will exit the program. E.g., the statement

```c
return 1;
```

will exit the program with the exit code 1. (In future assignments, we will
expect you to write functions to modularize your program, but you don't need
to use functions for this assignment.)

Note that you do not need to handle the following kinds of errors:

* The user specifies that there are fewer than 1 or more than 20 task denominations
* The user enters the same task identifier more than once when entering the
  task denominations
* The user uses the "`r`" command in a way that would cause the count
  of a particular kind of task to drop below 0

### Hints and Specifications

The program should allow the user to enter up to 20 task denominations.
You should use arrays to keep track of the identifiers for each type of
task and their face values. For example,

```c
char identifiers[MAX_DENOMINATIONS];
int values[MAX_DENOMINATIONS];
```

You'll also want to have a variable indicating how many different types
of tasks there are, so that you know which elements of these arrays are
used.

It will also make sense to have an array keeping track of how many tasks
of each type are in the user's jar.

Make sure that your program consistently checks the return value of `scanf`
so that it knows whether or not input was read successfully.

Keep in mind that error messages should be printed to `stderr` and not
`stdout`.

### Development Requirements

In the homework folder of your private repository
(`2024-fall-student-JHED`), you should create a new subfolder named
`homework/hw1`. In that `homework/hw1` subfolder, you will create your program in a new
C source file named `tasks.c`. At the top of the file, add a comment with
your six character alphanumeric **Hopkins ID**. (Please do not include
your name or JHED so as to allow for blind grading.)

Throughout your work on this assignment, be sure to frequently add, commit
(supplying meaningful messages) and push your changes to your personal
git repository.  After you complete your work on the assignment, you will
be asked to submit a *gitlog.txt* file, just as in [Homework 0](hw0.html). However,
we expect your log for this homework to show more activity.

Recall that your code is always expected to compile without errors
or warnings, on the ugrad servers. Submissions which do not compile
properly may earn zero points, so be sure to submit to Gradescope early
and often! And once you get a good start on the assignment, always have
some earlier compiling version of your work pushed up to Github.

### Example Runs

<div class="admonition caution">
<div class='title'>Caution</div>
<div class='content'>
<p>
Note that when you test your program in a terminal using the example inputs
shown below, the result should be <em>exactly</em> what is shown below,
including spacing. Note that
<ul>
  <li>Each prompt should end with a space, but should <em>not</em> have a newline at the end</li>
  <li>Each output line in response to the "`s`" and "`q`" commands <em>should</em> end with a newline</li>
</ul>
</p>
</div>
</div>

Here are several samples runs of the program on ugrad, where $ denotes
the command prompt, and user input is shown in **bold**. Note that the
first line shown below is the command you are expected to use as you
compile your program (and the one that will be used by the graders).
The compilation line should report zero errors and warnings, as
demonstrated below:

Example 1

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many denominations? <b>5</b>
Enter coin identifier and value in cents: <b>p 1</b>
Enter coin identifier and value in cents: <b>n 5</b>
Enter coin identifier and value in cents: <b>d 10</b>
Enter coin identifier and value in cents: <b>q 25</b>
Enter coin identifier and value in cents: <b>D 100</b>
Enter a command: <b>a p 37</b>
Enter a command: <b>a q 5</b>
Enter a command: <b>a D 4</b>
Enter a command: <b>r q 2</b>
Enter a command: <b>s</b>
Identifier,Face Value,Count,Total Value
p,1,37,37
n,5,0,0
d,10,0,0
q,25,3,75
D,100,4,400
Overall value of jar: $5.12
Enter a command: <b>q</b>
Bye!
</pre></div>

Example 2 (Canadian edition)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>6</b>
Enter coin identifier and value in cents: <b>p 1</b>
Enter coin identifier and value in cents: <b>n 5</b>
Enter coin identifier and value in cents: <b>d 10</b>
Enter coin identifier and value in cents: <b>q 25</b>
Enter coin identifier and value in cents: <b>D 100</b>
Enter coin identifier and value in cents: <b>t 200</b>
Enter a command: <b>a t 3</b>
Enter a command: <b>a q 2</b>
Enter a command: <b>s</b>
Identifier,Face Value,Count,Total Value
p,1,0,0
n,5,0,0
d,10,0,0
q,25,2,50
D,100,0,0
t,200,3,600
Overall value of jar: $6.50
Enter a command: <b>q</b>
Bye!
</pre></div>

Example 3 (quitting using Control-D)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>3</b>
Enter coin identifier and value in cents: <b>A 1 </b>
Enter coin identifier and value in cents: <b>B 13</b>
Enter coin identifier and value in cents: <b>C 51</b>
Enter a command: <b>a B 12</b>
Enter a command: <b>a C 9</b>
Enter a command: <b>s</b>
Identifier,Face Value,Count,Total Value
A,1,0,0
B,13,12,156
C,51,9,459
Overall value of jar: $6.15
Enter a command: <i>[...user types Control-D...]</i>Bye!
</pre></div>

Example 4 (user enters invalid number of denominations)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>foobar</b>
Invalid input
</pre></div>

Example 5 (user enters invalid input for coin identifier/value)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>3</b>
Enter coin identifier and value in cents: <b>p 1</b>
Enter coin identifier and value in cents: <b>n 5</b>
Enter coin identifier and value in cents: <b>d frotz</b> 
Invalid input
</pre></div>

Example 6 (invalid coin identifier)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>2</b>
Enter coin identifier and value in cents: <b>p 1</b>
Enter coin identifier and value in cents: <b>n 5</b>
Enter a command: <b>a p 211</b>
Enter a command: <b>a n 19</b>
Enter a command: <b>s</b>
Identifier,Face Value,Count,Total Value
p,1,211,211
n,5,19,95
Overall value of jar: $3.06
Enter a command: <b>a Y 5</b>
Unknown coin identifier
</pre></div>

Example 7 (invalid command)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c11 -pedantic -Wall -Wextra coins.c</b>
$ <b>./a.out</b>
How many denominations? <b>3</b>
Enter coin identifier and value in cents: <b>A 1</b>
Enter coin identifier and value in cents: <b>B 17</b>
Enter coin identifier and value in cents: <b>C 57</b>
Enter a command: <b>a B 13</b>
Enter a command: <b>r B 4</b>
Enter a command: <b>s</b>
Identifier,Face Value,Count,Total Value
A,1,0,0
B,17,9,153
C,57,0,0
Overall value of jar: $1.53
Enter a command: <b>j</b>
Invalid command
</pre></div>

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>There may be other ways for the input to be malformed,
besides the ways shown above. You must be careful to check for all the
various ways it might be malformed.</p>
</div>
</div>

### Submission

Create a *.zip* file named *hw1.zip* which contains only **coins.c**
and **gitlog.txt**. (Do not zip your entire hw1 folder - only these two
files.) Copy the *hw1.zip* file to your local machine and submit it as
Homework 1 on Gradescope.

Recall you can create your `gitlog.txt` file by running `git log > gitlog.txt`.

When you submit, Gradescope conducts a series of automatic tests.
These tests do basic checks like making sure that you submitted the
right files and that your `.c` file compiles properly.  If you see error
messages here (look for red), address them and resubmit.

<div class='admonition danger'>
<div class='title'>No-compile Policy</div>
<div class='content'>
<p>Remember that if your final submitted code does not compile, you will
earn a zero score for the assignment.</p>
</div>
</div>

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>You may re-submit any number of times prior to the deadline; only
your latest submission will be graded.</p>
</div>
</div>

<div class='admonition info'>
<div class='title'>Info</div>
<div class='content'>
<p>Review the course syllabus for late submission policies (grace period
and late days). You will want to save your late days for the future
assignments as they will be more involved.</p>
</div>
</div>

<!-- kp: do we want to update this link to a newer one? -->

You should also make sure that your code has good
style. You can look at the [coding style guidelines
here](https://jhucsf.github.io/spring2023/assign/style.html) from a
course you will take later that also applies to this course. In brief,
you should make sure that your submission is well formed:

- it is not overcommented or undercommented
- there are no ambiguous variable names 
- proper/consistent bracket placements and indentation
- no global variables

Two notes regarding automatic checks for programming assignments:

* Passing an automatic check is not itself worth points. (There
  might be a nominal, low point value like 0.01 associated with a check,
  but that will not count in the end.) The checks exist to help you and
  the graders find obvious errors. This will be true for most of the
  assignments; the actual grades are given manually by the graders, along
  with comments.
* The automatic checks cover some of the requirements set out in the
  assignment, but not all. There will be hidden tests that test edge
  cases. In general, it is up to you to test your own work and ensure
  your programs satisfy all stated requirements. Passing all the automatic
  checks does not necessarily mean you will earn all the points.
