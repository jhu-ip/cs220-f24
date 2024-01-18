---
id: ex03b
layout: default
title: Exercise 3-B
---

<div class='admonition info'>
<div class='title'>Info</div>
<div class='content'>
<p>This is an in-class exercise. An exercise page like this one will contain a brief description but is intended to be supplemented by discussion during our meeting time. Complete the exercise to the best of your ability in the time given. Feel free to talk with other students as you work, and do not be afraid to ask questions if you get stuck. Aim to complete as much as possible during our meeting, but you need not hand it in. You are encouraged to work at home to complete what you do not get through today.</p>
</div>
</div>
## Learning Objectives
<div class='admonition success'>
<div class='title'>Objectives</div>
<div class='content'>
<p>This exercise should help you gain familiarity with</p>
<ul>
<li>Unix/Linux command line interface</li>
<li>a text editor and the gcc compiler</li>
<li>the distributed version control tool called git.</li>
</ul>
</div>
</div>

### Part 1
To begin (if you have not already done so), log into the ugrad system using your ugrad account name and password.  You can do so by logging in to `ugradx.cs.jhu.edu`, or any machine `ugrad1.cs.jhu.edu`, `ugrad2.cs.jhu.edu`, … `ugrad24.cs.jhu.edu`. On a Mac or Unix/Linux machine, you will log in to ugrad from the command line using `ssh`.

<div class='admonition info'>
<div class='title'>Info</div>
<div class='content'>
<p>Using Mac terminal or Windows Powershell, you can <code>ssh</code> to ugrad machines as follows:</p>
<div class="sourceCode" id="cb1"><pre class="sourceCode bash"><code class="sourceCode bash"><a class="sourceLine" id="cb1-1" title="1"><span class="fu">ssh</span> USERNAME@ugrad5.cs.jhu.edu</a></code></pre></div>
<p>where <em>USERNAME</em> is replaced by your actual cs user name. Also, you can replace 5 by <em>x</em> or any number between <em>1</em> and <em>24</em>.</p>
</div>
</div>
 If your machine is running Windows, you will use <a href="https://www.putty.org/" target="_blank">PuTTy</a> or ssh using Windows Powershell to connect.

<div class='admonition caution'>
<div class='title'>Caution</div>
<div class='content'>
<p>You are advised to download and use PUTTY if you are a Windows user. Directly "sshing" into ugrad machines via Windows Powershell has caused an issue with keyboard layouts in the past!</p>
</div>
</div>

### Part 2
First, create a copy (clone) of the public repository for the class by taking the following steps:

1.	In your ugrad account, type `cd ~` to make sure you are in your home directory.

2.	If you have not already done so, use **git** to clone the class example repository by typing: 
```bash
git clone https://github.com/jhu-ip/cs220-f23-public.git
```
3.	Type:
``` bash
cd cs220-f23-public
```
to enter the newly created directory (that is, folder), and then type `ls` to list the files present in that directory.  Review the filenames that it shows and confirm that the files `README` and the exercises folder are present.

If you did not successfully complete the above steps, ask of a member of the course staff and/or post on <a href="http://piazza.com/jhu/spring2024/en601220" target="_blank">Piazza</a>.

### Part 3
Now that you have a local copy of the git repo in your ugrad account, we want to make a separate temporary directory structure in your account where you can do some work.

1.	Change back to your home directory by typing either `cd ~`, or just `cd`. It’s important that you’re no longer in your local copy of the repo for the next step, so type `pwd` to check the name of your current directory; you should see that you’re in the folder named */home/your\_username_*, e.g. */home/ips22004* or similar. If you need help getting there, raise your hand (via Zoom) so we can help, or post on <a href="http://piazza.com/jhu/spring2024/en601220" target="_blank">Piazza</a>.

2.	Create a subdirectory named `temp` by typing the command `mkdir temp`. 

### Part 4
Now, copy a file from your local copy of the class repo into the directory you just created in part 3, then compile and test it.  Here is how:

1.	Copy `hello_world.c` from your local copy of the class repository into your personal folder by navigating into `~/temp` (the folder you just created) using `cd temp` and then typing (Hint: using tab-completion will help here!): 
```bash
cp ~/cs220-f23-public/exercises/ex03b/hello_world.c .
```
The command above ends with a period ("dot"), and there must be a space before the dot. The dot in Unix stands for the current directory; in this command you’re expressing that the current directory is the destination for the copy you’re making.
 
2.	Type `pwd` to confirm that you are still working in the folder named `~/temp`, and then type `ls` to see that it now contains a copy of `hello_world.c`

3.	Now, compile the source file named `hello_world.c` and create an executable file by typing:
```bash
gcc -std=c99 -Wall -Wextra -pedantic hello_world.c
```
This command should create a new executable file named `a.out`.  (Type `ls` again now to confirm that the new file has been created.)

4.	Execute the file you just created by typing `./a.out` and seeing what is printed. The `./` to start the command above indicates to Unix that this program resides in the current directory. Unix/Linux does not look in this directory for commands by default, so without this, the command will not be found.

5.	Now, make a copy of the `hello_world.c` file in the same folder, and name it `hello_me.c`.  Here is how: Type:
```bash
cp hello_world.c hello_me.c
```
Note that the `cp` (that is, copy) command uses two arguments; the first is the source, the second is the destination. Type `ls` once more to confirm that you now have a new copy of the file in your folder.

6.	Using the _emacs_ text editor (or _vim_ if you prefer), modify the new file so that rather than displaying "Hello, world!" when it is executed, it instead displays _"Hello, $your name$!"_ (e.g., "Hello, Anna!" or "Hello, Xin!").  To do this using emacs, first type `emacs hello_me.c` to open the file for editing.  Once you've made the appropriate modifications in _emacs_, you can save the file using `Ctrl-x Ctrl-s`, and exit _emacs_ using `Ctrl-x Ctrl-c`.

7.	Next, compile your new file by typing 
```bash
gcc -std=c99 -Wall -Wextra -pedantic hello_me.c
```
, then execute it by typing `./a.out`. Confirm that it behaves as you planned.  If it does not, go back and re-edit the file, re-compile it, and re-run it until you get it to work.

### Part 5
Wrap up the exercise by cleaning up your files, and logging out of the ugrad system, as follows:

1.	While you do not want to remove or even modify the `cs220-f23-public` folder (that is, your copy of our public class repo), you will no longer need to keep the temporary directory named `temp` that we created today, or any of the files you put inside it.  To remove the `temp` directory, first navigate to your home directory (that is, the top-level folder in your account) by typing `cd ~` or simply `cd`.

2.	Once you are sure you are in the right folder, type `rm -r temp` to remove the `temp` folder and all of its contents. Note that `rm` is the remove command, and the extra `-r` flag indicates that you wish the remove command to be applied recursively, meaning to all subfolders within `temp`.  Be very careful when executing any `rm` command in Unix/Linux; there is no undo button if you make a mistake and delete important files! If you want to verify deletion before removing files, use the `-i` option with `rm`.
	<div class='admonition danger'>
	<div class='title'>Danger</div>
	<div class='content'>
	<p>Be careful around the <code>rm</code> command from here on. Once you remove a file/folder, there will not be a (straightforward) way to recover it!</p>
	</div>
	</div>

3.	Finally, log out of the ugrad system by typing `exit`.

