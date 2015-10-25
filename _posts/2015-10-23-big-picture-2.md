---
layout: post
title: The Big Picture, Part 2
---

Well, I seem to be fit for talking, lately. I spent 45 minutes answering questions
and drawing the **BIG PICTURE**. This newer version of the transformational picture
shows us where to put the four fundamental subspaces related to a matrix
equation \\(Ax = b\\), and how to relate their dimensions to the information you
can pull out of the reduced row-echelon form of the augmented matrix \\( (A|b) \\).

We talked a bit about how to find bases for these four subspaces, too. The key was always
to perform Gauss-Jordan to do a row-reduction.
1. To find bases for \\( \mathrm{null}(A)\\) and \\(\mathrm{col}(A)\\): do
Gauss-Jordan on the augmented matrix and then
    * find the special solutions -- these are a basis of the null space of \\(A\\).
    * note the positions of the pivot columns in the RREF. The corresponding
    columns of \\(A\\) are a basis of the column space of A.
2. To find bases for the left null space and the row space, repeat the above, but
use the transpose \\(A^T\\) in place of A.

#### For Monday, 26 October

Prepare as much of the last two sections as you can. We will spend our whole day on
presentations of those tasks.
