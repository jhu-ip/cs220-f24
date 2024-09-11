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
different type/duration pairs. Any extra user input should be treated
as input to later parts of the program, not reported as an error
(because it should not be read during set-up at all).

Once all of the task identifiers and durations are recorded (set-up is
complete), the program enters a command loop. Each time the program
prompts the user to enter a command the user enters the one-letter
name of the command, and any additional values needed for the command.
The program then carries out the command if legal as described below,
and if the command was not "`q`" (quit), continues the command loop.

There are four commands:

* The `a` command adds to the count of how many tasks of a specified
  type are in the user's jar. The `a` command should be followed by
  the one-letter identifier matching the type of task to be added
  (case-sensitive) and then the integer count of how many of that type
  of task should be added to the jar. For example `a p 11` would add
  11 of the type of task identified by the letter "`p`" to the jar, if
  that many will fit based on the associated duration. Your program
  must check to make sure that the request can be satisfied within the
  user specified size of their jar, otherwise reject the command as
  invalid (command loop continues).

* The `r` command removes a given quantity of tasks of a specified
  type from the user's jar. It behaves like the "`a`" command, except
  that the count of the specified type of task is subtracted from the
  jar rather than added to the jar. For example `r m 5` would remove 5
  of the type of task identified as "`m`" from the jar, if it
  currently holds at least that many. Your program must check to make
  sure that the request can be satisfied, ie, that the requested type
  and quantity already exist in the jar, otherwise reject the command
  as invalid (command loop continues).

* The `s` command summarizes the user's task jar. The output is
  formatted as comma-separated values (CSV).  First, a header line
  with the fields "Identifier", "Duration", "Count", and "Total Time"
  is printed. Then, for each kind of task (in the order in which they
  were entered at the beginning of the program execution), an output
  line is printed with the task identifier, task duration, number of
  that type of task in the user's jar, and total value of that kind of
  tasks in minutes. For both the header line and the lines summarizing
  each kind of task, fields are separated by comma ("`,`") characters,
  with no space before or after each comma. At the end of the summary,
  a line reading "<code class='highlighter-rouge'>Total time in jar:
  <i>X</i>:<i>YY</i> out of <i>H</i>:<i>MM</i> possible"</code> is
  printed, where *X* and *YY* indicate the number of hours and minutes
  in the jar based on "`a`" and "`r`" commands, and *H* and *MM*
  indicate the number of hours and minutes that the jar could hold
  based on the user given input.

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
* the user doesn't enter appropriate input for an identifier or duration for a task during set-up, or
* the user doesn't enter appropriate input for an identifier or quantity for a task after an `a` or `r` command

then the program should print the line "`Invalid input`" to `stderr` and exit with the
exit code 1.

If the user enters a task identifier as part of an `a` or `r` command that
is not one of the identifiers entered by the user during set-up,
the program should print the line "`Unknown task type identifier`" (corrected 9/11 to include "type") to `stderr`
and exit with the exit code 2. Note that the "`Unknown task identifier`"
should only be printed if the task identifier and count were both
read successfully. Also note that identifier matching is case-sensitive.

If one of

* the `a` command can't be satisfied because it would overfill the jar, or
* the `r` command can't be satisfied because the jar doesn't have enough of the requested task type, or
* the user enters a command character that is not one of `a`, `r`, `s`, or
`q`, 

then the program should print the line "`Invalid command`" to `stderr` and continue with the next command loop.

If no errors occur and the program completes normally, it should exit with the
exit code 0.

Note that all of your code can be in a single `main` function, so any `return`
statement will exit the program. E.g., the statement

```c
return 1;
```

will exit the program with the exit code 1. (In future assignments, we will
expect you to write functions to modularize your program, but you don't need
to use functions for this assignment.)

You do not need to handle the following kinds of errors:

* The user enters the same task identifier more than once during set-up
* The user enters a negative duration for a task during set-up

### Hints and Specifications

You should use arrays to keep track of the identifiers for each type of
task and their durations. (Remember there can be at most 10 of each.) For example, 

```c
char identifiers[MAX_TYPES];
int durations[MAX_TYPES];
```

assuming MAX_TYPES has been defined appropriately. You'll also need a
variable to count how many different types of tasks are entered during
set-up, so that you know which elements of these arrays are used.

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

*Your code is always expected to compile without errors
or warnings on the ugrad servers.* Submissions which do not compile
properly may earn zero points, so be sure to submit to Gradescope early
and often! And once you get a good start on the assignment, always have
some earlier compiling version of your work pushed to Github.

### Sample Runs

<div class="admonition caution">
<div class='title'>Caution</div>
<div class='content'>
<p>
When you test your program in a terminal using the example inputs
shown below, the result should be <em>exactly</em> what is shown below,
including spacing. Note that
<ul>
  <li>Each prompt should end with a space, but should <em>not</em> have a newline at the end, with the exemption of the prompt to enter type identifiers and durations.</li>
  <li>Each output line in response to the "`s`" and "`q`" commands <em>should</em> end with a newline.</li>
</ul>
</p>
</div>
</div>

Here are several samples runs of the program on ugrad, where '$' denotes
the command prompt, and user input is shown in **bold**. Note that the
first line shown below is the command you are expected to use as you
compile your program (and the one that will be used by the graders).
The compilation line should report zero errors and warnings, as
demonstrated in these examples.

Example 1 (no input errors)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>280</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>c 75
p 50
i 10
0 0</b>
Enter a command [a, r, s, q]: <b>a c 2</b>
Enter a command [a, r, s, q]: <b>a i 3</b>
Enter a command [a, r, s, q]: <b>s</b>
Identifier,Duration,Count,Total Time
c,75,2,150
p,50,0,0
i,10,3,30
Total time in jar: 3:00 out of: 4:40 possible
Enter a command [a, r, s, q]: <b>r c 1</b>
Enter a command [a, r, s, q]: <b>a p 2</b>
Enter a command [a, r, s, q]: <b>s</b>
Identifier,Duration,Count,Total Time
c,75,1,75
p,50,2,100
i,10,3,30
Total time in jar: 3:25 out of: 4:40 possible
Enter a command [a, r, s, q]: <b>q</b>
Bye!
$
</pre></div>

Example 2 (case-sensitive task identifiers)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>300</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>c 50
C 75
0 0</b>
Enter a command [a, r, s, q]: <b>a c 2</b>
Enter a command [a, r, s, q]: <b>a C 1</b>
Enter a command [a, r, s, q]: <b>s</b>
Identifier,Duration,Count,Total Time
c,50,2,100
C,75,1,75
Total time in jar: 2:55 out of: 5:00 possible
Enter a command [a, r, s, q]: <b>q</b>
Bye!
$
</pre></div>

Example 3 (invalid remove quantity and quitting using Control-D)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>480</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>i 15
m 60
M 90
0 0</b>
Enter a command [a, r, s, q]: <b>a m 2</b>
Enter a command [a, r, s, q]: <b>s</b>
Identifier,Duration,Count,Total Time
i,15,0,0
m,60,2,120
M,90,0,0
Total time in jar: 2:00 out of: 8:00 possible
Enter a command [a, r, s, q]: <b>r m 3</b>
Invalid command
Enter a command [a, r, s, q]: <i>[...user types Control-D...]</i>Bye!
$
</pre></div>

Example 4 (invalid jar size)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>-300</b>
Invalid input
$
</pre></div>

Example 5 (invalid identifier/duration input)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>300</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>p 50
c 75
i ten</b>
Invalid input
$
</pre></div>

Example 6 (task identifier not found)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>300</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>p 60
c 75
m 30
0 0</b>
Enter a command [a, r, s, q]: <b>a t 1</b>
Unknown task type identifier
$
</pre></div>

Example 7 (invalid commands - treats each input character as a command as the loop continues)

<div class="highlighter-rouge"><pre>
$ <b>gcc -std=c99 -pedantic -Wall -Wextra tasks.c</b>
$ <b>./a.out</b>
How many minutes to spend? <b>60</b>
Enter task type identifiers and durations in minutes,
one per line; enter '0 0' to stop
<b>c 75
p 50
i 10
0 0</b>
Enter a command [a, r, s, q]: <b>i p 1</b>
Invalid command
Invalid command
Invalid command
Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: <b>q</b>
Bye!
$
</pre></div>

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>There may be other ways for the input to be malformed,
besides the ways shown above. You must be careful to check for all the
various ways it might be malformed.</p>
</div>
</div>

### Testing

It is your responsibility to test a variety of valid input situations
as well as invalid inputs. Make sure to test that every possible error
condition detailed above is handled as specified. Make sure that you
check for correct summary results even in cases where no add or no
remove commands have been executed. What if the user doesn't enter any
task identifiers and durations? Think critically as an adversary for
other problems or edge cases that your program might encounter, and
test that they are handled appropriately.

If you identify any input scenarios or possible error situations <em>that
are not already covered by our notes in the Error Handling section</em>,
please post on Piazza regarding how to handle them.

For this first real assignment we are providing a sample input file and
matching output file that you can use to check whether your prompts
and outputs are programmed exactly as expected. This is the type of
testing (not the exact tests) that our autograder will usually perform
in hidden tests. In order to access the samples you will need to
download them from our public course repo using commands similar to those in
exercise 3b, assuming you have successfully cloned that
repository. If not, complete exercises 3a and 3b and ask for help in
office hours or class if needed.

First, log into the ugrad system and navigate into your clone of the
`cs220-f24-public` repo. Do a `git pull` to get the latest files we
have provided.

Second, using the unix command `cp` (copy) along with customized file
paths based on your file directory set-up, you'll want to copy from
`cs220-f24-public/homework/hw1/sampleIn.txt` to the directory where
you are coding your solution to this assignment. Similarly, copy from
`cs220-f24-public/homework/hw1/sampleOut.txt` to the same place.

Next, assuming your solution has been compiled to file `a.out`, run
it on the input file using input redirection, and saving the
[`stdout`] output to file `myOut.txt` as follows. You will see that
the error messages that should be printed to `stderr` are still
displayed on the screen, not in the `myOut.txt` output file and the
`stdout` output is redirected to the text file instead of being
displayed on the screen.

``` 
prompt> ./a.out <sampleIn.txt >myOut.txt
Invalid command
Invalid command
Invalid command
```

Now use the unix `diff` command to compare our output file to
yours. This does an exact character comparison. The output should be
nothing if the files match exactly as shown below.

```
prompt> diff sampleOut.txt myOut.txt
prompt>
```

If the output files don't match, then it will show you which lines
differ, and sometimes the difference may only be a space that is
invisible to us, but that could cause an autograder test to fail. Here
is an example where there is an extra space at the end of the first
line and also with some "Invalid Command" error messages going to `stdout` (the file)
instead of the screen.

```
prompt> diff sampleOut.txt myOut.txt
1c1
< How many minutes to spend? Enter task type identifiers and durations in minutes,
---
> How many minutes to spend? Enter task type identifiers and durations in minutes, 
15c15,18
< Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Identifier,Duration,Count,Total Time
---
> Enter a command [a, r, s, q]: Invalid command
> Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Invalid
> command
> Enter a command [a, r, s, q]: Identifier,Duration,Count,Total Time
21c24,25
< Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Identifier,Duration,Count,Total Time
---
> Enter a command [a, r, s, q]: Enter a command [a, r, s, q]: Invalid command
> Enter a command [a, r, s, q]: Identifier,Duration,Count,Total Time
prompt>
```

What you see is the output in the first file (`sampleOut.txt`)
indicated by lines that start with `<` and the output in the second
file (`myOut.txt`) indicated by `>`. Each pair of lines that differ
start with the line number(s) in the first file (21 in the last pair) and
the line number(s) of the mismatches in the second file (24-25 for the
last pair). It is generally recommend that you use the reference file
as the first argument to `diff` for consistent interpretation of these
results.

You can use this style of testing to make your assignment process
smoother throughout the semester. We recommend writing multiple small
input files so you can easily re-run them on your evolving solution
with input redirection to see if you get the right output. However, we
won't usually provide either the input or the reference output for
you. You'll need to figure out what that should be.

### Style

You should also make sure that your code has good style. You can look
at the [coding style guidelines
here](https://jhucsf.github.io/fall2024/resources/style.html) from a
course you may take later that also applies to this course. In brief,
you should make sure that your submission is well formed, readable,
consistently styled, and documented as follows:

- it is not overcommented or undercommented
- there are no ambiguous or meaningless variable names 
- it has proper/consistent bracket placements and indentation
- there are no global variables
- lines are at most 80 characters long

### Submission

Create a *.zip* file named *hw1.zip* which contains only **tasks.c**
and **gitlog.txt**. (Do not zip your entire hw1 folder - only these two
files.) Copy the *hw1.zip* file to your local machine and submit it as
Homework 1 on Gradescope.

Recall you can create your `gitlog.txt` file by running `git log > gitlog.txt`.

When you submit, Gradescope conducts a series of automatic tests.
These tests do basic checks like making sure that you submitted the
right files and that your `.c` file compiles properly.  If you see
error messages here (look for red), address them and resubmit until
you pass them. Some of the error messages will show results similar to
the `diff` in Testing example above.

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
<p>Review the course syllabus for late submission policies. You will
want to save your late days for future assignments as they will be
more involved. Remember that you can use at most 2 for any one
assignment and any portion of a day counts as 1 whole day.</p>
</div>
</div>


### Grading

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
  your programs satisfy all stated requirements. Passing all the
  automatic checks does not necessarily mean you will earn all the
  points. It is an ethics violation for the course staff to tell you
  what is in the hidden tests or whether you pass them, so please
  don't ask!

<div class='admonition danger'>
<div class='title'>No-compile Policy</div>
<div class='content'>
<p>Remember that if your final code submission does not compile, you will
receive a zero score for the assignment.</p>
</div>
</div>

The 60 points for this assignment will be distributed roughly as follows when we grade:

* [9] Submission (including gitlog and deductions for compiler warnings)
* [18] Basic functionality (including prompts and control flow)
* [16] Correctness of results (summary output)
* [12] Input validation and error handling
* [5] Style

Please plan accordingly, and practice incremental coding and testing for best results!