---
id: hw3
layout: default
title: Homework 3
---

<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<ul>
<li>You are expected to work individually.</li>
<li><strong>Due: Wed, September 27th at 11pm EST (Baltimore time).</strong></li>
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
<li>arrays</li>
<li>strings</li>
<li>file I/O</li>
<li>command-line arguments</li>
<li>Makefiles</li>
<li>recursion</li>
<li>program organization</li>
<li>testing with <code>assert</code></li>
</ul>
</div>
</div>

Note 1: Note that error messages should be printed
to `stderr`. See the [Program Behavior](#program-behavior) section.

## Overview

A [regular expression](https://en.wikipedia.org/wiki/Regular_expression), or simply **regex**, is a sequence
of characters that defines a search pattern. We then use such
patterns to do “find” or “find-then-replace” operations on a
given text. Regular expressions are very popular and widely used. You,
yourself, use them regularly when working on a mac/linux terminal. For
instance, if you intend to list all files with extension `.c`, you
simply do `ls *.c`. The `*` in `*.c` represents a catch all, and can
represent any set of characters, followed by a `.c`. (Note that `*`
in a filename wildcard pattern has a slightly different meaning than
`*` in a regular expression, as you will see shortly.)

In this homework, you will implement a simple yet effective regular
expression matcher. A number of words are stored in an input file that
should be initially read and stored into a 2D array of characters. Each
row in this array stores one word. Next, the program repeatedly prompts
the user to enter a regex and reports which of the words in the 2D
array (if any) match the given regex. The user of the program can exit
the program by pressing `ctrl-d` at any time. We are going to modify
the standard regex protocol for this assignment, to make it simpler
to implement.

## Specific Requirements and Assumptions

### Wildcards

There are three regex wildcard characters for this assignment: `*`, `?`, and `~`:

- `*` (Kleene star) - will match the regex character preceding the star **0 or more times**  
  For example, the regex `a*bc` matches a word consisting of some
  (possibly zero) numbers of the character `a`, followed by `bc`.
- `?` (Question Mark) - will match the regex character preceding the
  question mark **0 or 1 time**, but no more.  For example, the regex
  `a?bc` matches consisting of at most one character `a`, followed by
  `bc`.
- `~` (Tilde) - will match any group of length between [0,
  `restriction`], where restriction length can optionally be changed
  in the command line. This overrides the standard `~` operator found
  in regex.  For example, the regex `~bc` will match any word of length
  at most `restriction+2` ending in `bc`.

### Input File Format

The input file will be passed in as the first argument to the program. If
you run the program without specifying an input file, you must print an
error message and return a non-zero value from main.

The first line of the input file will contain a number `n` indicating the
number of words in the file. If the first line is not a valid number,
you must print an error message and return a non-zero value from the
main function.

You can assume that there will be no more than 1024 words in the input file.

You can assume the words will be at most 32 characters in length and
will only contain valid alphabets (A - Z, a - z), numbers (0 - 9) or
special characters (@, #, \$, %, !, &).

Words in the file can be different sizes, and are not required to use
all 32 characters.

There will be no regex wildcards (`*`, `?`, or `~`) in the words found
in the input file.

If there are fewer words in the word file than specified by the number
in the first line of the file, then you must print an error message and
return a non-zero value from main.

You must only read the first `n` words, you can ignore all words after
`n` and should continue with the program.

Once the files are read, the user can input into the `stdin` input stream
the regex patterns to match with the list of words from the filename.

The patterns are separated using white space characters (any amount)
and the executable should continue to look for patterns until it reaches
end of input (`ctrl-D` if stdin is not redirected).

You can assume each input regex pattern will be under 128 characters.

### Program Behavior

For each regex pattern, the words that match the regex pattern should
be printed to `stdout` **in the order they were read in from the file**
with one word per line.

You can assume that the regex pattern a user inputs is well formed,
and that there will always be a valid character before the `?` and `*`
wildcard characters.

The regex pattern has to **match the whole word**, and not just a
substring of the word.

There may be a multiple ways a regex pattern can match a search word. For
example, for the search word `aa` and the regex pattern `a?a?a`, either
the first `a?` or the second token can be counted as 0 instance (with
the other counted as 1 instance) to match the search word - you must
explore all possibilities. (Hint: think recursion!)

If a particular regex pattern has no match, then you should output
`No match found for regex '...'` where `...` contains the regex pattern.
Note that this is *not* an error message, so it should be printed
to `stdout`.

The default `restriction` length for the `~` (tilde) operator is 10,
however the user can optionally specify a `restriction` length (>= 1)
in the command line argument after the filename argument. If the user
specifies an invalid `restriction` length, then the program should
print an error message and return a non-zero value from main.  (Hint:
You can use C's `atoi` command in `stdlib.h` or `sscanf` to convert a
string from the command line into an `int`.)

Error messages should be printed to `stderr`.

### Other Requirements

All variables must be declared inside functions. No variables should be
global or `extern`.

<strike style="color: gray;">You must factor your code into functions, each function performing a
distinct task. We give one required function prototype below under
"Testing" but this should <b>NOT</b> be the only non-main function in
your program.</strike> We encourage you to create additional functions
(beyond the required `match` function) if they help to simplify the
implementation program. However, it's not a strict requirement.

You may **NOT** use the C library `regex.h` or any inbuilt regular
expression matching types in your program.

Put all function declarations into a header file
(`functions.h`). `functions.c` will contain implementations for those
functions, and `hw3.c` will use those functions to implement the interface
described above. Additionally, `test_functions.c` will also contain
a main function that tests each of the functions in `functions.c`. All
three `.c` files should `#include "functions.h"`.

Include your name and JHED as comments in the top two lines of **each**
.c and .h file you create.

Your Makefile should compile the `hw3` executable with the command
`make hw3`, and create AND run the `test` executable with the command
`make test`.

## Sample Runs

USAGE: `./hw3 <filename> <OPTIONAL: restriction_length>`

Let input text file `input.txt` contain:

```
5
intermediate
inttterrmeediateeee
program
ppproograaamm
aaa
```

<!--
Run the command using `./hw3 input.txt`

Note: Ignore the dollar sign (\$) at the front of the user input, it is
used here just to distinguish a user input from program output.
-->

Note that in all example runs, the "`$`" character is the shell
prompt, and text in **bold** is user input.

Test 1

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>intermediate</b>
intermediate
</pre></div>

Test 2

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>int*e*r*me*diate*</b>
intermediate
inttterrmeediateeee
</pre></div>

Test 3

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>ina?ttt?t*e*r*ms?e*diate*</b>
inttterrmeediateeee
</pre></div>

Test 4 (by default, the `~` wildcard matches works with at most 10
characters)

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>~</b>
program
aaa
</pre></div>

Test 5 (with the default restriction of 10, the regex `~~` will match
words of at most 20 characters)

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>~~</b>
intermediate
inttterrmeediateeee
program
ppproograaamm
aaa
</pre></div>

Test 6 (the `~` can represent two characters, followed by an `a`)

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>~a</b>
aaa
</pre></div>

Test 7 (all the `a?` are ignored, and only the trailing `aaa` are considered)

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>a?a?a?a?a?a?a?aaa</b>
aaa
</pre></div>

Test 8

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>a*</b>
aaa
</pre></div>

Test 9

<div class='highlighter-rouge'><pre>
$ <b>./hw3 input.txt</b>
<b>a&#42;b</b>
No match found for regex 'a&#42;b'
</pre></div>

## Testing

You must implement the following function to determine whether a particular
regex pattern matches a given word:

```c
/** Match function to check whether regex matches a word.
 * @param regex, is a null terminated char array of the regex
 * @param word is the null terminated char array of word to match to
 * @param restriction is the restriction size for the tilde operator
 * @return 1 if it is a match, else 0 if it's not a match.
 */
int match(const char *regex, const char *word, int restriction);
```

In addition to your `hw3.c` program, you must write a second program
called `test_functions.c` that tests your functions via `assert(...)`
statements. This program will have its own main function and takes no
input. It simply runs a series of tests that you have written. Your
tests should use assert statements to make sure your functions behave
properly. If all tests pass, the program should output a message
indicating success.

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>It is extremely, extremely good programming practice to write test cases to</p>
<ol>
<li>test your basic assumptions</li>
<li>try "corner" and extreme cases</li>
<li>test loop invariants, etc</li>
</ol>
<p>It can save you a great deal of frustration and effort down the road. We will look carefully at your tests when grading.</p>
</div>
</div>

The command `make test` should create AND run the test executable. Running
the test file should also give a message at the end indicating that all
tests have passed (already done for you). Please do add more of your
own tests to the test files.

When creating your example `.txt` files to test your `read_file` function,
you must **create the text files from within the test program**. For
example, let's say I want to create a test file, I must go about doing
it like this.

```c
FILE* fptr = fopen("test_file_1.txt", "w");
fprintf(fptr, "5\nintermediate\ninttterrmeediateeee\nprogram\nppproograaamm\naaa");
fclose(fptr);
// now I can open this file, and use it for my tests to fill the grid.
```

When you submit your `.zip` file to Gradescope, you do not need to
submit your `.txt` test files, because the test program should create
them **from within** the program.

<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<p>
Make sure you test your code (both the test program and the <code>hw3</code> program)
using <code>valgrind</code>. Your submission will receive a deduction if the code you
submit has any memory errors such as out of bounds array accesses, uses of invalid
memory, uses of uninitialized values, etc.
</p>
</div>
</div>

## Using Recursion

The `match` function should be implemented recursively.

<div class='admonition danger'>
<div class='title'>Warning</div>
<div class='content'>
<p>
We <strong>emphatically</strong> recommend that you do not try to implement
the <code>match</code> function non-recursively (i.e., using loops.)
If you try this it is <strong>extremely</strong> unlikely that you will
achieve a fully working solution. The <code>match</code> function can
be implemented recursively in around 30 lines of code if you think about
it the right way.
</p>
</div>
</div>

The primary challenge of matching a regular expression is that
when a wildcard pattern is encountered, it could match the word in
multiple ways.

For example, let's say that the `match` function is trying to match
`a*` against part of the word being considered. There are two possibilities:

* if the next unmatched character in the word is `a`, then
  the `a*` pattern could match that occurence of `a` as well as
  0 or more additional occurrences of `a`
* regardless of whether the next unmatched character in the word
  is `a`, the pattern could match exactly 0 occurrences of `a`

The key insight is that it is impossible to predict *which* of these
possibilities will lead to a successful match for the overall string.
So, the `match` function should be prepared to try *both* of them.

Here's an idea of how this might look in your code:

```c
int match(const char *regex, const char *word, int restriction) {

  // ...

  if (/* regex starts with 'a*' */) {
    if (/* word starts with 'a' */) {
      // try letting the 'a*' match the initial 'a' in the word
      if (match(/* ??? */, /* the rest of the word */, restriction))
        return 1;
    }

    // try assuming that the 'a*' should match nothing
    if (match(/* rest of regex */, /* ??? */, restriction))
      return 1;
  }

  // ...

}
```

Note that the occurrences of `???` above are meant to make you think about how
the recursion should make progress.  Also, in the actual implementation,
you wouldn't have a special case for just `a*`, but rather any non-wildcard
character followed by `*`.

This type of recursive strategy is called *recursive backtracking*. The idea is
that the function is exploring a space of possibilities.  If one way of
making progress doesn't succeed, then it still might be possible to try
another way of making progress.

As with any recursion, you will need to think about what the base case
(or cases) of the recursion should be, and how the recursion can make
progress towards a base case.

## Files

### Provided files

Start with the template Makefile, source files, and header file in the
public repo: `cs220-f23-public/homework/hw3/`.

- The Makefile contains some, but not all, of the needed target
  definitions. The definitions provided are enough for you to build the
  `hw3` executable using `make hw3` on the command line. The Makefile
  does not have a target for the `test` executable -- you must add this
  yourself. Include the final Makefile (with working targets for both
  `test_functions.c` and `hw3.c`) in your submitted files. Remember:
  `make test` should create the test executable **and** run the test file
  in one command.
- The source and header files contain some, but not all, of the
  declarations/definitions you will need and you will also have to add
  code in the `TODO` regions.

### Gitlog

<!--
![Git commit trend throughout the project](https://imgs.xkcd.com/comics/git_commit.png)
-->

<div class='admonition tip'>
<div class='title'>Tip</div>
<div class='content'>
<p>You must commit your changes with meaningful messages every so
often. But what are meaningful commit messages? They are simply
messages that can inform the reader what the commit exactly did to
improve the program. If you want further information, you can read
<a href="https://chris.beams.io/posts/git-commit/">this</a> 10 minute
article that talks about good commit message practice.</p>
</div>
</div>

You must include with your submission a copy of the output of git log
showing at least five commits to the repository. Save the `git log` output
into a file called `gitlog.txt` (e.g. by doing `git log > gitlog.txt)`.

### README

Please submit a file called `README` (not `README.txt` or `README.md`,
etc -- just `README`) including information about what design choices you
made and anything the graders should know about your submission. In your
`README` you should:

- Write your name and JHED ID at the top of the file
- Briefly justify the structure of your program; why you defined the functions you did, etc
- If applicable: Highlight anything you did that was particularly clever
- If applicable: Tell the graders if you couldn’t do everything. Where
  did you stop? What did you get stuck on? What are the parts you already
  know do not work according to the requirements?

## Compiling

Your code should compile with no errors or warnings with the typical
command: `gcc <source> -Wall -Wextra -std=c99 -pedantic`. Do not use
any special libraries, like math.h, that require additional/different
compiler options. Libraries such as `string.h` and `ctype.h` are okay to
use in general. Your program should compile without errors or warnings
with the Makefile.

## Submission

Create a `.zip` file named `hw3.zip` containing:

- hw3.c
- functions.h
- functions.c
- test\_functions.c
- README
- Makefile
- gitlog.txt

Copy `hw3.zip` file to your local machine (using `scp` or `pscp`),
and submit it as Homework 3 on Gradescope. When you submit, gradescope
conducts a series of automatic tests. These do basic checks, e.g. to
check that you submitted the right files. If you see error messages (in
red), address them and resubmit. You may re-submit any number of times
prior to the deadline; only your latest submission will be graded. Review
the course syllabus for late submission policies (grace period and late
days), and remember that **if your final submitted code does not compile,
you will likely earn a zero score for the assignment.**

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
