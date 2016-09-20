---
layout: post
title: Matrix Algebra &colon; Matrices as Generalized Numbers
---

A matrix starts out as a notational convenience. It is a simple way to keep the
array of numbers necessary for solving a system of linear equations. But soon,
we notice that they are interesting and have properties of their own. And we engage
in the process of "abstraction" to give the idea of a matrix its own life.

In this new viewpoint, a matrix is a kind of generalized number. So we can ask
about the kinds of properties we usually see from numbers. Is there a way to add
or multiply matrices? How do those operations behave? Are things "as usual?"

The first restriction is that we can only add or multiply matrices if the sizes
match up appropriately. So, let's just assume that sort of thing, and see how
everything else works. Pick a natural number \\(n\\)--like \\(n=2\\), say--and
then ask questions like

  - Is the operation of addition for \\(2 \times 2\\) matrices just like addition of
  numbers?
  - Is the operation of multiplication of \\(2 \times 2 \\) matrices just like
  multiplication of numbers?

The answer to the first questions is an unreserved "yes." The second question is
not so forgiving. One can view this in two ways. The first, naive, response is
to bemoan the dangers of matrix multiplication. ("Look out! They don't always commute!
Inverses might not exist!") The mathematician's response is to get excited by the
difference and go see what things happen. When you go on to study _Modern Algebra_,
you will see that square matrices form what is called a _non-commutative ring with unit_.

Anyway, today we talked about some details, and I stopped things to share what I think
are the three crucial ways to know how to compute a product of matrices \\(A B\\):

  - [ROWS] use each row of \\(A\\) as coefficients to make linear combinations of
  the rows of \\(B\\)  --- This is close to the row operations idea.
  - [COLUMNS] use each column of \\(B\\) as coefficients to make linear combinations
  of the columns of \\(A\\) --- This is close to the matrix transformation idea
  - [DOT PRODUCTS] form dot products of each row of \\(A\\) with each column of \\(B\\)
  and arrange them appropriately.

There are lots of ways to organize the information in computing a matrix product,
and Strang introduces some others (like the "outer product" and "block multiplication"),
but those three are the big ones in my view.

Presentations: \#41 Fuhs; \#42 Nichols; \#43 Ojoh; \#44 Bettle; \#45 De La Bruere

We didn't get to \#46.

### For Wednesday

Please prepare the material in [this section of the workbook.]][wkbk]

[wkbk]: http://theronhitchman.github.io/linear-algebra/course-materials/workbook/inverse.html
