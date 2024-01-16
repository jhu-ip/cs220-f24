---
layout: default
title: "Course Material"
category: "material"
---

<!--
IMPORTANT: please don't edit material.md directly.
Instead, edit material.csv, adding a new row for each item you
want to add, and then regenerate materials.md by running
the command

  ./gen_materials_page.rb > material.md

Then add, commit, and push both material.csv and material.md.
-->

You can click on the header for a specific week to expand or collapse
the materials for that week.

<button type="button" id="week_1_toggle" class="week_control_button">Week 1 (23-Jan to 27-Jan)</button>
<div id="week_1" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 1 (28-Aug)</th>
      <th>Day 2 (30-Aug)</th>
      <th>Day 3 (1-Sep)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2a133efe-8fdb-4256-8e7a-aea2013f41b5'>Course intro</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=3af802fa-3c42-497b-996e-ae230027aea4'>Linux, ugrad accounts</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1a42038f-6e6e-43cb-958a-ae230027ad23'>Hello world program in C</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c7fc4118-f301-40bb-8693-ae230027ac09'>C basics</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d7af51c6-fffc-4c79-9e8e-ae230027adb4'>Editors (emacs)</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=24e8b117-753d-4721-a714-ae230027acd3'>Git</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4c4f67dd-677c-40d9-8bbc-ae230027ac60'>Submission workflow</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day01_intro.pdf'>Course intro</a><br><a href='slides/day01_linux_basics.pdf'>Linux, ugrad accounts</a></td>
      <td><a href='slides/day02_hello_world_c.pdf'>Hello world program in C</a><br><a href='slides/day02_c_basics.pdf'>C basics</a></td>
      <td><a href='slides/day03_editors.pdf'>Editors (emacs)</a><br><a href='slides/day03_git.pdf'>Git</a><br><a href='slides/day03_submission_workflow.pdf'>Submission workflow</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day01.html'>Day 1</a></td>
      <td><a href='questions/day02.html'>Day 2</a></td>
      <td><a href='questions/day03.html'>Day 3</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex01.html'>Exercise 1</a></td>
      <td><a href='exercise/ex02.html'>Exercise 2</a></td>
      <td><a href='exercise/ex03a.html'>Exercise 3-A</a><br><a href='exercise/ex03b.html'>Exercise 3-B</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td><a class='external' target='_blank' href='https://cs.jhu.edu/~joanne/unix.html'>Unix/Linux Tutorial</a><br><a class='external' target='_blank' href='https://cs.jhu.edu/~joanne/unixRC.pdf'>Unix/Linux Reference Card</a><br><a href='resources/github-ssh.html'>Github SSH key setup</a></td>
      <td><a class='external' target='_blank' href='https://www.onlinegdb.com/online_c_compiler'>Online C compiler</a></td>
      <td><a class='external' target='_blank' href='https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf'>Emacs reference card</a><br><a class='external' target='_blank' href='https://www.openvim.com/'>Interactive Vim tutorial</a><br><a class='external' target='_blank' href='https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf'>Git cheatsheet</a></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>

<!--
<button type="button" id="week_2_toggle" class="week_control_button">Week 2 (30-Jan to 3-Feb)</button>
<div id="week_2" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 4 (30-Jan)</th>
      <th>Day 5 (1-Feb)</th>
      <th>Day 6 (3-Feb)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=45b14d44-3d4e-4fd7-b0c0-ae230027aef2'>Logical operators, control flow</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=58f4d402-fd0d-4868-b805-ae230027ab93'>Arrays, ASCII</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=06a4f1da-f6a1-4212-b686-ae230027ab33'>C strings</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ae149930-15ce-460c-a2df-ae230027aac0'>File I/O, assert, math functions</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1de2958b-f8b8-4fae-ac47-ae230027aa77'>Writing functions, command line arguments</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day04_control_flow.pdf'>Logical operators, control flow</a></td>
      <td><a href='slides/day05_arrays.pdf'>Arrays</a><br><a href='slides/day05_c_strings.pdf'>C strings</a></td>
      <td><a href='slides/day06_fileio_assertion_math.pdf'>File I/O, assert, math functions</a><br><a href='slides/day06_functions_command_line_arguments.pdf'>Writing functions, command line arguments</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day04.html'>Day 4</a></td>
      <td><a href='questions/day05.html'>Day 5</a></td>
      <td><a href='questions/day06.html'>Day 6</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex04.html'>Exercise 4</a></td>
      <td><a href='exercise/ex05.html'>Exercise 5</a></td>
      <td><a href='exercise/ex06.html'>Exercise 6</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_3_toggle" class="week_control_button">Week 3 (6-Feb to 10-Feb)</button>
<div id="week_3" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 7 (6-Feb)</th>
      <th>Day 8 (8-Feb)</th>
      <th>Day 9 (10-Feb)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=bbef007b-88a8-4e42-bcc4-ae230027a8f4'>Function declarations</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c18158bd-cf31-48c4-a2c0-ae230027a87e'>Passing arrays to functions</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=12215376-94e9-48dd-8d5a-ae230027937e'>Recursion</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=76660996-f221-4bda-85bf-ae230027aa0b'>Separate compilation</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=956ae811-74a5-48f2-8d73-ae230027a9b0'>Makefiles</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=76a9e1f6-07f3-483c-9341-ae230027a948'>Header guards</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=67aec427-5035-40bb-a34f-ae230027a824'>Multidimensional arrays, gdb</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day07_function_declaration.pdf'>Function declarations</a><br><a href='slides/day07_passing_arrays_to_functions.pdf'>Passing arrays to functions</a><br><a href='slides/day07_recursion.pdf'>Recursion</a></td>
      <td><a href='slides/day08_separate_compilation.pdf'>Separate compilation</a><br><a href='slides/day08_makefiles.pdf'>Makefiles</a><br><a href='slides/day08_header_guards.pdf'>Header guards</a></td>
      <td><a href='slides/day09_multidimensional_arrays_gdb.pdf'>Multidimensional arrays, gdb</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day07.html'>Day 7</a></td>
      <td><a href='questions/day08.html'>Day 8</a></td>
      <td><a href='questions/day09.html'>Day 9</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex07.html'>Exercise 7</a></td>
      <td><a href='exercise/ex08.html'>Exercise 8</a></td>
      <td><a href='exercise/ex09.html'>Exercise 9</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td><a class='external' target='_blank' href='https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf'>GDB Cheat Sheet</a></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_4_toggle" class="week_control_button">Week 4 (13-Feb to 17-Feb)</button>
<div id="week_4" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 10 (13-Feb)</th>
      <th>Day 11 (15-Feb)</th>
      <th>Day 12 (17-Feb)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7dd96f56-4676-4f7c-913d-ae230027a7a3'>Pointers</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=88e3945a-f1f2-4442-825e-ae230027a746'>Dynamic Memory Allocation</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=f4c78306-67c7-4184-955f-ae230027a6b2'>Valgrind</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d83163b7-7827-4bca-a6ca-ae2300279303'>Pointer Arithmetic</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5b124364-dcca-4e9b-b276-ae23002792a9'>Dynamic 2-D Arrays, Pointers and Const</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day10_pointers.pdf'>Pointers</a></td>
      <td><a href='slides/day11_dynamic_memory_allocation.pdf'>Dynamic Memory Allocation</a><br><a href='slides/day11_valgrind.pdf'>Valgrind</a></td>
      <td><a href='slides/day12_pointer_arithmetic.pdf'>Pointer Arithmetic</a><br><a href='slides/day12_more_pointers_dynamic_2d_arrays.pdf'>Dynamic 2-D Arrays, Pointers and Const</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day10.html'>Day 10</a></td>
      <td><a href='questions/day11.html'>Day 11</a></td>
      <td><a href='questions/day12.html'>Day 12</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex10.html'>Exercise 10</a></td>
      <td><a href='exercise/ex11.html'>Exercise 11</a></td>
      <td><a href='exercise/ex12.html'>Exercise 12</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td><a class='external' target='_blank' href='https://www.youtube.com/watch?v=5VnDaHBi8dM'>Binky the Pointer (Video)</a></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_5_toggle" class="week_control_button">Week 5 (20-Feb to 24-Feb)</button>
<div id="week_5" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 13 (20-Feb)</th>
      <th>Day 14 (22-Feb)</th>
      <th>Day 15 (24-Feb)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=6fa78f1f-431c-40ea-95e2-ae230027a663'>Lifetime/Scope</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=81f128ab-96f2-433e-b770-ae230027a5f4'>Structs</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=e02cd998-bfde-4c4a-977a-ae23002791e7'>Random number generation</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9a428f88-2a13-420b-b008-ae230027a35f'>Binary file I/O</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=373770ad-6472-4b72-b789-ae230027a246'>Bitwise operations</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=9ce56b92-a382-468f-8c9e-ae230027a1af'>Number representation, type conversion/casting</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day13_lifetime_scope.pdf'>Lifetime/Scope</a><br><a href='slides/day13_struct_type.pdf'>Structs</a><br><a href='slides/day13_random_numbers.pdf'>Random number generation</a></td>
      <td><a href='slides/day14_binary_file_io.pdf'>Binary file I/O</a><br><a href='slides/day14_bitwise_operations.pdf'>Bitwise operations</a></td>
      <td><a href='slides/day15_number_rep_type_conversions.pdf'>Number representation, type conversion/casting</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day13.html'>Day 13</a></td>
      <td><a href='questions/day14.html'>Day 14</a></td>
      <td><a href='questions/day15.html'>Day 15</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex13.html'>Exercise 13</a></td>
      <td><a href='exercise/ex14.html'>Exercise 14</a></td>
      <td><a href='exercise/ex15.html'>Exercise 15</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_6_toggle" class="week_control_button">Week 6 (27-Feb to 3-Mar)</button>
<div id="week_6" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 16 (27-Feb)</th>
      <th>Day 17 (1-Mar)</th>
      <th>Day 18 (3-Mar)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=254ea75c-12a1-456c-b91d-ae230027a0c6'>Linked lists</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=06994aeb-6743-4fcd-b69f-ae2300279d42'>More Linked lists</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/sec01/16.pdf'>Midterm project</a></td>
      <td><a href='slides/day17_linked_lists.pdf'>Linked lists</a></td>
      <td><a href='slides/day18_more_linked_lists.pdf'>More Linked lists</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td></td>
      <td><a href='questions/day17.html'>Day 17</a></td>
      <td><a href='questions/day18.html'>Day 18</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td></td>
      <td><a href='exercise/ex17.html'>Exercise 17</a></td>
      <td><a href='exercise/ex18.html'>Exercise 18</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_7_toggle" class="week_control_button">Week 7 (6-Mar to 10-Mar)</button>
<div id="week_7" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 19 (6-Mar)</th>
      <th>Day 20 (8-Mar)</th>
      <th>Day 21 (10-Mar)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td>N/A</td>
      <td>N/A</td>
      <td>N/A</td>
    </tr>
    <tr>
      <td>Slides</td>
      <td>N/A</td>
      <td>N/A</td>
      <td>N/A</td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td>N/A</td>
      <td>N/A</td>
      <td>N/A</td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='assign/midterm.html'>Midterm Project</a></td>
      <td><a href='assign/midterm.html'>Midterm Project</a></td>
      <td><a class='external' target='_blank' href='https://www.gradescope.com/'>Midterm Exam (on Gradescope)</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td><a href='resources/MidtermReview-solutions.pdf'>Midterm Review Solutions</a><br><a href='resources/Midterm-Fall2019-solutions.pdf'>Fall 2019 Midterm Solutions</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_8_toggle" class="week_control_button">Week 8 (13-Mar to 18-Mar)</button>
<div id="week_8" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 22 (13-Mar)</th>
      <th>Day 23 (18-Mar)</th>
      <th>Day 24 (18-Mar)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2760c264-312d-49f2-9e43-ae2300279acb'>Introduction to C++</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=954ea030-61b3-482d-96e8-ae2300279a4f'>C++ Strings</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=04905da6-f193-4a6e-9f3e-ae2300279736'>Introduction to STL and templates</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c12342a6-6af3-4859-9da6-ae2300279661'>STL Containers - map, pair, and tuple</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c08d312c-963d-485b-84bf-ae23002796be'>STL Algorithms</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day22_intro_cpp.pdf'>Introduction to C++</a><br><a href='slides/day22_cpp_strings.pdf'>C++ Strings</a></td>
      <td><a href='slides/day23_stl_templates.pdf'>Introduction to STL and templates</a></td>
      <td><a href='slides/day24_more_stl_containers.pdf'>STL Containers - map, pair, and tuple</a><br><a href='slides/day24_stl_algorithms.pdf'>STL Algorithms</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day22.html'>Day 22</a></td>
      <td><a href='questions/day23.html'>Day 23</a></td>
      <td><a href='questions/day24.html'>Day 24</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td>N/A</td>
      <td><a href='exercise/ex23.html'>Exercise 23</a></td>
      <td><a href='exercise/ex24.html'>Exercise 24</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_9_toggle" class="week_control_button">Week 9 (27-Mar to 31-Mar)</button>
<div id="week_9" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 25 (27-Mar)</th>
      <th>Day 26 (29-Mar)</th>
      <th>Day 27 (31-Mar)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=f35cdf8e-80d0-4d88-b9e3-ae2300279562'>C++ I/O stream and stringstream</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=090adf84-0330-4c2f-9c73-ae230027a599'>Intro to Object Oriented Programming</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4fcd7033-f754-429f-b55b-ae230027a516'>References</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d9978853-6c9b-4cc3-b62d-ae230027a4cc'>Dynamic Memory Allocation</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5a1a7afe-6165-4e33-9567-ae230027a431'>C++ Classes</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0e485b33-028d-45e6-be18-ae230027a3d3'>Default Constructors</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day25_cpp_file_io_stringstream.pdf'>C++ I/O stream and stringstream</a><br><a href='slides/day25_intro_to_oo.pdf'>Intro to Object Oriented Programming</a></td>
      <td><a href='slides/day26_cpp_reference.pdf'>References</a><br><a href='slides/day26_dynamic_memory_allocation.pdf'>Dynamic Memory Allocation</a></td>
      <td><a href='slides/day27_cpp_classes.pdf'>C++ Classes</a><br><a href='slides/day27_default_constructor.pdf'>Default Constructors</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day25.html'>Day 25</a></td>
      <td><a href='questions/day26.html'>Day 26</a></td>
      <td><a href='questions/day27.html'>Day 27</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex25.html'>Exercise 25</a></td>
      <td><a href='exercise/ex26.html'>Exercise 26</a></td>
      <td><a href='exercise/ex27.html'>Exercise 27</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_10_toggle" class="week_control_button">Week 10 (3-Apr to 7-Apr)</button>
<div id="week_10" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 28 (3-Apr)</th>
      <th>Day 29 (5-Apr)</th>
      <th>Day 30 (7-Apr)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=62080530-d06e-4a0e-be06-ae230027a050'>Constructors and default arguments</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2ea9792a-afab-4319-85f1-ae2300279fe3'>Destructors</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2c8031d1-8509-4b22-881b-ae2300279f65'>Function overloading</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ee4c0ea7-24f8-426a-9291-ae2300279f0e'>Operator overloading</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=f9091b95-ab29-46fe-82b8-ae2300279e93'>Initialization and assignment</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=181313b7-6b07-400c-addf-ae2300279df3'>Rule of 3</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day28_constructors.pdf'>Constructors and default arguments</a><br><a href='slides/day28_destructors.pdf'>Destructors</a></td>
      <td><a href='slides/day29_function_overloading.pdf'>Function overloading</a><br><a href='slides/day29_operator_overloading.pdf'>Operator overloading</a></td>
      <td><a href='slides/day30_initialization_assignments.pdf'>Initialization and assignment</a><br><a href='slides/day30_rule_of_3.pdf'>Rule of 3</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day28.html'>Day 28</a></td>
      <td><a href='questions/day29.html'>Day 29</a></td>
      <td><a href='questions/day30.html'>Day 30</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex28.html'>Exercise 28</a></td>
      <td><a href='exercise/ex29.html'>Exercise 29</a></td>
      <td><a href='exercise/ex30.html'>Exercise 30</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_11_toggle" class="week_control_button">Week 11 (10-Apr to 14-Apr)</button>
<div id="week_11" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 31 (10-Apr)</th>
      <th>Day 32 (12-Apr)</th>
      <th>Day 33 (14-Apr)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=fed0c83c-bcd8-4341-8b0e-ae2300279cf6'>Template functions</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=06bf6f38-8f76-4b19-80f4-ae2300279c79'>Template classes</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7cdea279-e109-4ba8-b99d-ae2300279bea'>Inheritance</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=873d6ec0-a562-47f2-b098-ae2300279b28'>Polymorphism</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=162dba01-3c6a-4358-8179-ae23002799fe'>Dynamic dispatch</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0e849f80-9dec-47c1-aaac-ae2300279986'>Function hiding and abstract classes</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5d6fdb70-910c-4823-b4a0-ae23002797a1'>Virtual destructors</a></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day31_template_functions.pdf'>Template functions</a><br><a href='slides/day31_template_classes.pdf'>Template classes</a></td>
      <td><a href='slides/day32_inheritance.pdf'>Inheritance</a><br><a href='slides/day32_polymorphism.pdf'>Polymorphism</a></td>
      <td><a href='slides/day33_dynamic_dispatch.pdf'>Dynamic dispatch</a><br><a href='slides/day33_function_hiding_abstract_classes.pdf'>Function hiding and abstract classes</a><br><a href='slides/day33_virtual_destructors.pdf'>Virtual destructors</a></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day31.html'>Day 31</a></td>
      <td><a href='questions/day32.html'>Day 32</a></td>
      <td><a href='questions/day33.html'>Day 33</a></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex31.html'>Exercise 31</a></td>
      <td><a href='exercise/ex32.html'>Exercise 32</a></td>
      <td><a href='exercise/ex33.html'>Exercise 33</a></td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_12_toggle" class="week_control_button">Week 12 (17-Apr to 21-Apr)</button>
<div id="week_12" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 34 (17-Apr)</th>
      <th>Day 35 (19-Apr)</th>
      <th>Day 36 (21-Apr)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2edb2b97-e40e-4200-94ce-ae23002790c9'>OO Design & UML Diagrams</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=00c8e477-aa8e-4357-bd0e-ae230027992c'>Enumerated Types</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7e2654d0-197a-49fb-8d90-ae23002798b8'>Exceptions</a><br><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=53afa435-461a-4814-bfc2-ae2300279850'>Customized Exceptions</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day34_oo_design_uml.pdf'>OO Design & UML Diagrams</a></td>
      <td><a href='slides/day35_enum.pdf'>Enumerated Types</a><br><a href='slides/day35_exceptions.pdf'>Exceptions</a><br><a href='slides/day35_customized_exceptions.pdf'>Customized Exceptions</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day34.html'>Day 34</a></td>
      <td><a href='questions/day35.html'>Day 35</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td>Work on final project</td>
      <td><a href='exercise/ex35.html'>Exercise 35</a></td>
      <td>Work on final project</td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
<button type="button" id="week_13_toggle" class="week_control_button">Week 13 (24-Apr to 28-Apr)</button>
<div id="week_13" class="collapsible">
<table>
  <thead>
    <tr>
      <th></th>
      <th>Day 37 (24-Apr)</th>
      <th>Day 38 (26-Apr)</th>
      <th>Day 39 (28-Apr)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Videos</td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=737a8372-4317-47c5-8492-ae23002795c1&query=iterator'>Iterators</a></td>
      <td><a class='external' target='_blank' href='https://jh.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5eb3773f-b093-4630-8e18-ae810038ea47'>Lambdas</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Slides</td>
      <td><a href='slides/day36_iterators.pdf'>Iterators</a></td>
      <td><a href='slides/day37_lambdas.pdf'>Lambdas</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Recap<br>Questions</td>
      <td><a href='questions/day36.html'>Day 36</a></td>
      <td><a href='questions/day37.html'>Day 37</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Exercise</td>
      <td><a href='exercise/ex36.html'>Exercise 36</a></td>
      <td>Work on final project</td>
      <td>Work on final project</td>
    </tr>
    <tr>
      <td>Additional<br>Resources</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lecture<br>Slides</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Recorded<br>Sessions</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
-->
<script type="text/javascript">
  // Create and register a click handler for button clicks to expand/contract
  // specified content div
  function registerClickHandler(content, is_active) {
    //console.log("Registering click handler for " + content.id);

    content.style.display = is_active ? "block" : "none";

    var button_id = content.id + "_toggle";
    //console.log("button_id=" + button_id);

    var button = document.getElementById(button_id);

    button.addEventListener("click", function() {
      button.classList.toggle('active');
      //console.log("content.style.display="+content.style.display);
      if (content.style.display == 'block') {
        content.style.display = 'none';
      } else {
        content.style.display = 'block';
      }
    });

    if (is_active) {
      button.classList.add('active');
    }
  }

  document.addEventListener('DOMContentLoaded', function() {
    var active_week_id = 'week_1';

    var content_divs = document.getElementsByClassName("collapsible");
    for (i = 0; i < content_divs.length; i++) {
      var content = content_divs[i];

      var is_active = (content.id == active_week_id);
      registerClickHandler(content, is_active);
    }
  });
</script>
