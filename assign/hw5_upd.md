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
<li>Due: Friday November 1 at 11pm (Baltimore time).</li>
<li>This assignment is worth 70 points.</li>
</ul>
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
Before you start working on this homework, make sure you do a `git pull` on the `public` repo to get a copy of the starter code that comes with this assignment. The starter code is very minimal that includes one file only named `wordgen.cpp` and a few text files for testing with.</p>
</div>
</div>



The _infinite monkey theorem_ states that given enough time, a monkey typing randomly on a typewriter will eventually produce the complete works of William Shakespeare (or any other literary work, for that matter).  Of course, the length of time one would have to wait for that to occur is rather long; e.g., the universe would probably end before it actually happened.  Although we don't have time to test the theorem in its original form, we will test a modified theorem involving a more clever typewriter monkey.  This particular monkey has been browsing  books by well-known authors and remembers how often certain letter sequences appear.  Rather than typing purely randomly, the monkey tries to mimic great authors by repeating patterns it has seen before (though it does not understand the actual meaning of anything that it types).  The monkey may still not produce _Hamlet_ itself, but might at least be able to produce something passing as Shakespearean.

More practically, this project will give you experience writing programs using multiple classes, working with STL containers, and performing file I/O in C++.  You should read through the entire handout before proceeding with the project!  Remember to _plan_ your classes and methods before beginning to code!


Consider the following three excerpts of text:

```
Call me Ishmael.  Some years ago--never mind how long
precisely--having repeatedly smelt the spleen respectfully, not to
say reverentially, of a bad cold in his grego pockets, and throwing
grim about with his tomahawk from the bowsprit?


Call me Ishmael.  Some years ago--never mind how long
precisely--having little or no money in my purse, and nothing
particular to interest me on shore, I thought I would sail about a
little and see the watery part of the world.


Call me Ishmael, said I to myself.  We hast seen that the lesser man is
far more prevalent than winds from the fishery.
```

The second excerpt is the first sentence of Herman Melville's _Moby Dick_.  The other two excerpts were generated in Melville's style using a simple algorithm (Claude Shannon, _A mathematical theory of communication_).  In this homework, you will implement Shannon's algorithm, allowing you to programmatically generate text in the style of real authors!




Shannon's algorithm is based on letter probability distributions.  Imagine
taking the book _Tom Sawyer_ and determining the probability with
which each character occurs (we'll call this a _level-0_ analysis).  You'd probably find that spaces are the most common,
that the character `e` is fairly common, and that the character `q` is
rather uncommon. After completing this analysis, you'd
be able to produce random _Tom Sawyer_ text based on character
probabilities by just sampling one character at a time. It wouldn't have much in common with the real thing,
but at least the characters would tend to occur in the proper
proportion. In fact, here's an example of what you might produce:


**Level 0:**  rla bsht eS ststofo hhfosdsdewno oe wee h .mr
ae irii ela iad o r te u t mnyto onmalysnce, ifu en c fDwn oee iteo


Now imagine doing a slightly more sophisticated
analysis by determining the probability with which each character
follows every other character -- we'll call this a _level-1_ analysis. You would probably discover that `h`
follows `t` more frequently than `x` does, and that a space follows `.` more frequently than `,` does.  For example, if you are analyzing the text `the theater is their
thing` and considering the letter `h`, then `e` appears after `h` three times, `i` appears after
`h` one time, and no other letters ever appear after `h.`  So the
probability that `e` follows `h` is 0.75 (75%); the probability that `i`
follows `h` is 0.25 (25%); the probability that any other letter follows
`h` is 0.

Using a _level-1_ analysis, you could produce some randomly
generated _Tom Sawyer_ text by picking some character to begin with
and then repeatedly choosing the next character based on the previous one
and the probabilities revealed by the original text analysis. Here's an example:

**Level 1:** Shand tucthiney m? le ollds mind Theybooure
He, he s whit Pereg lenigabo Jodind alllld ashanthe ainofevids tre
lin--p asto oun theanthadomoere


Now imagine doing a _level-k_ analysis by determining the
probability with which each character follows every possible sequence
of characters of length `k`. For example, a _level-5_ analysis of _Tom Sawyer_
would reveal that `r` follows `Sawye` more frequently than any other
character. After such an analysis, you'd be able to produce
random _Tom Sawyer_ text by always choosing the next character based
on the previous `k` characters and the probabilities
revealed by the analysis.

At somewhat higher levels of analysis (e.g., levels 5--7), the randomly
generated text begins to take on many of the characteristics of the
source text. It probably won't make complete sense, but you'll be able
to tell that it was derived from _Tom Sawyer_ as opposed to, say, _Hamlet_ or _Moby Dick_. Here are some more _Tom Sawyer_ examples: 


**Level 2:** "Yess been." for gothin, Tome oso; ing, in to
    weliss of an'te cle -- armit. Papper a comeasione, and smomenty,
    fropeck hinticer, sid, a was Tom, be suck tied. He sis tred a
    youck to themen 
    
**Level 4:** en themself, Mr. Welshman, but him awoke, the
    balmy shore. I'll give him that he couple overy because in the
    slated snufflindeed structure's kind was rath. She said that the
    wound the door a fever eyes that WITH him.  


    
**Level 6:** people had eaten, leaving. Come -- didn't stand it
    better judgment; His hands and bury it again, tramped herself!
    She'd never would be. He found her spite of anything the one was a
    prime feature sunset, and hit upon that of the forever.

**Level 8:** look-a-here -- I told you before, Joe. I've heard
    a pin drop. The stillness was complete, how- ever, this is awful
    crime, beyond the village was sufficient. He would be a good
    enough to get that night, Tom and Becky.

**Level 10:** you understanding that they don't come around in
    the cave should get the word "beauteous" was over-fondled, and
    that together" and decided that he might as we used to do -- it's
    nobby fun. I'll learn you."


To summarize the algorithm: given some input text (e.g., the text of _Tom Sawyer_)
and the level `k` of the desired analysis, we first process the input text and store
the probabilities of every possible character that follows each `k`-length sequence
encountered in the input text.  Following this analysis, we can generate random text as follows:
first, pick the first `k` letters from the input text to bootstrap the random text.  Then, repeatedly choose the next character by looking at the preceding `k` characters in the random
text and selecting randomly given the probability information from the input text analysis.  We can
continue to select random characters in this way to generate as much output text as desired.

## Program Specification

Your program will take three command-line arguments: the file to read, the desired value of `k`, and the number of characters of text to generate (`n`).  Your program should do some basic error checking on the inputs.  If the entered file can't be read, if the valid of `k` is invalid (non-numeric, or less than 1), or if the amount of random text is invalid (non-numeric, or less than `k`), your program should print an error message and exit with a non-zero exit code.  You are **strongly encouraged**, however, to not do all of this right from the start.  Instead, write a program that works from just a single input file, and uses a constant value of `k`, and then generalise to the more complete scenario.

Your program will perform a _level-i_ analysis, for each `i` between 1 and `k` (inclusive), printing `n` characters of text from this analysis, as shown in the examples above.  For example, running your program as `./wordgen ts.txt 4 75` would produce the following output:

```
Level 1: Co l iritont d, bubentrentet foroudsped ffug s wow Mr miginerire ond tout."
~~~
Level 2: CHAPTER XXXXII
"Baroubt."
"But ove gairie MANDER XIV
Hucke gloneriss.
T
~~~
Level 3: CHAPTER XI
They've inst theird, and skiff pearthey're stookind, to that. I
~~~
Level 4: TOM'S minished at. Tom stopped in then! Tom, it himself been seen a man ice
```

As you can see from this example, newlines are an expected part of the output (as long as your source text also contains newlines, of course).  Thus, to help make the boundaries between each level analysis clear, your program should print a line with three tilde (`~`) characters between each different level of output text.


## Hints and Suggestions

As always, you should start with design before you jump into the implementation.  A good way to approach the design is to think about the two stages of the program: first, processing the input text to calculate the probability information (stage #1), and second, using that probability information to generate random text (stage #2).  Thus, your program will need to repeatedly perform the following two operation:
* Given a string of `k` characters and the following (`k+1`) character from the input text, update the probabilities in your probability table.  This operation will be used when reading the text input and building the table (stage #1).
* Given a string of `k` characters and using the probabilities previously computed and stored in the table, select the next (i.e., `k+1`) character to follow in the generated text.  This operation will be used when generating the output text (stage #2).

After you implement stage #1, we _strongly_ encourage you to test your implementation to make sure that it builds the correct character distributions.  To do so, you should come up with a _small_ amount of text, with a decent amount of repetition (in order to make frequencies more than just 0s and 1s) and come up with the character distributions _by hand_.  For instance, you might use the input text `abcdabcbaa`.  A level-1 analysis of this text would produce the following distribution:

```
{
    a: {
        b: 2,
        a: 1
    }, 
    b: {
        c: 2,
        a: 1
    },
    c: {
        d: 1,
        b: 1
    },
    d: {
        a: 1
    }
}
```
This shows that, after an `a`, the input text contained two `b`s and one `a`.  After a `b`, the text contained two `c`s and one `a`.  Results for `c` and `d` can be read similarly.


<div class='admonition caution'>
<div class='title'>Important Note</div>
<div class='content'>
<p>
The program must use container classes from the C++ Standard Template Library (STL) to keep track of character distributions.  You must at least use `std::string` and `std::map`, but you are free to use others as well. Take the time to understand the STL containers; selecting the right ones will make your code cleaner and easier to write and debug.</p>
</div>
</div>

<div class='admonition caution'>
<div class='title'>Special Cases</div>
<div class='content'>
One particular complication to note is any situation in which you generate a random `k`-length sequence that has no known following characters.  In particular, this situation can arise if your input ends in a `k`-length sequence that appears nowhere else in the input.  In this case, if you randomly generate this particular `k`-length sequence, the program will have no probability information to decide what character should follow it.  A straightforward fix to this problem is to prepend (i.e., add to the beginning) the final `k`-length sequence of the input to itself before processing.  That way, there will never be a unique `k`-length sequence appearing at the end of the input.
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
<li>You do not need to handle or report any errors other than what is mentioned above. </li>
</ul>



### Makefile

<div class='admonition caution'>
<div class='title'>Important Note</div>
<div class='content'><p>
You need to write your own Makefile. Make sure you have defined the target `wordgen` properly to compile your program. We will run `make wordgen` to compile your program and produce an executable named `wordgen`. Failure to comply with this requirement will result in a <strong>zero</strong> score.</p>
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
