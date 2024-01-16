---
layout: default
id: day16_questions
title: Day 16 Recap Questions
reference solutions:
  1. HEAD -> [Node 1 | next-]-> [Node 2 | next-]-> ... [Node n | next-]-> NULL
  2. Array is linear in memory, so it is faster to access elements by indexing, but it has a fixed size and inserting new element is expensive. Linked list has a dynamic size and we can insert new element more efficiently, but it requires more memory space (to store links) and is slower in access (by traversing the whole list). 
  3. HEAD is a just pointer to the first node or NULL if it is an empty list, while a node contains the data and a pointer to the next node or NULL if it is a tail. 
  4. We traverse the list starting from the HEAD pointer, advance using the next pointer until it reaches the end (i.e. NULL). Increase the length by 1 for each advancement.
  5. First, we allocate a new node for the new data and set its next pointer to be the same as the current node's next pointer, where current node is the node that we want to insert the data after. Lastly, we update the current node's next pointer to point to this new node.
---

1. Describe the linked list structure by a diagram.
2. Compare arrays and linked lists. Write down their pros and cons.
3. What is a linked list's head? How is it different from a node? Explain. 
4. How do you calculate `length` of a linked list?
5. How do you implement `add_after` on a singly linked list?
