---
layout: default
id: day17_questions
title: Day 17 Recap Questions
reference solutions:
  1. We first create the new node with the new data and set its next pointer to what the HEAD is pointing to. Then, we update the HEAD pointer to point to the new node.
  2. Doubly linked list is a bi-directional linked list. We can add another pointer field called previous and use it to point to the previous node. The first node's previous pointer would be NULL.
  3. We need a deep copy. We traverse the list and create new node from the old one. We need to pay attention to how to setup the next pointer for the new list. It should point to the newly created node.
  4. Because we need to change the HEAD pointer, we need to use pointer-to-pointer in the add_front function, so that we can change the HEAD pointer value in the function. 
  5. An empty list.
---

1. How do you implement *add_front* on a linked list?
2. How do you modify a singly linked list to create a doubly linked list?
3. How do you make a copy of a singly linked list?
4. Why does *add_after* takes a `Node *` as input, but *add_front* takes `Node **`?
5. What cases should be handled when implementing *remove_front*?
