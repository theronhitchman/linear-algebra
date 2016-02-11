---
layout: post
title: Matrix Multiplication Day
---

Today was our day to talk about matrix multiplication. It is hard to understate
how important today's material is for the rest of the term.

We had a chance to talk about my _three favorite ways_ to multiply matrices.
There are actually a great many ways to organize the computation of a matrix
product \\(A B \\). But the ones I like best are:

  * use dot products of rows of A by columns of
  * use the rows of A as coefficients and form linear combinations of the rows of B
  * use the columns of B as coefficients and form linear combinations of the columns of A

If I had to pick a fourth way, it would be breaking B into columns and performing
a set of matrix-vector products:
\\[
A \begin{pmatrix} | & | & | \\\\ b\_1 & b\_2 & b\_3 \\\\ | & | & | \end{pmatrix} = \begin{pmatrix} | & | & | \\\\ A b\_1 & A b\_2 & A b\_3 \\\\ | & | & | \end{pmatrix}
\\]

We also had a chance to see that matrix multiplication is somehow different from
regular multiplication of numbers. Some of the properties we are used to just do
not work.

Finally, we saw a connection between solving equations and finding the inverse of
a matrix.

Our presentations were these: \#55 Martin; \#56 Hauser; \#57 Nommensen; \#58 Kleiss;
\#59 Gravert; \#61 Thein.

----

#### For Friday:

Please prepare section 2.6 of the workbook, which is coded to section 2.5 of Strang.
