---
layout: post
title: Catching Up
date: 2017-02-08 20:10
---

My trip over the last weekend put me off schedule for this recap blog. But
today I catch up! I have three days to write about.

### Friday, Feb 3

You met without me to do a review day. It sounds like you talked your way
through items 35 and 38.

### Monday, Feb 6

We talked about matrix multiplication and its structure.
There are three good ways to compute the product <span>\\(AB\\)</span> of
a pair of matrices:

  1. use dot products: the ij entry of the product is the dot product of
  the ith row of <span>\\(A\\)</span> and the jth row of <span>\\(B\\)</span>.
  2. use linear combinations of rows of <span>\\(B\\)</span>: the ith row of
  the product should be the linear combination of the rows of
  <span>\\(B\\)</span> using the ith row of <span>\\(A\\)</span> as
  coefficients.
  3. use linear combinations of columns of <span>\\(A\\)</span>: the jth column
  of the product should be the linear combination of the columns of
  <span>\\(A\\)</span> using the jth column of <span>\\(B\\)</span> as
  coefficients.

I like method (1) because it was the first one I learned, and I find it easy to
remember. I like method (2) because it helps us understand how row operations
work. I like method (3) because it matches the geometry of the
"transformational" view of a matrix --- like in the 3Blue1Brown videos.

The we looked for interesting examples of things that behave differently. For
instance, matrix multiplication is not necessarily commutative, inverses do not
always exist, and you can even find matrices which are not zero, but square to
zero.

### Wednesday, Feb 8

Today we talked about the process of Gauss-Jordan Elimination. There should be a few important take-aways.

1. Gauss-Jordan Elimination is a specific algorithm performed in a specific way.
2. Gauss-Jordan Elimination provides an "efficient" way to
    - solve equations <span>\\(Ax = b\\)</span>
    - find the inverse of a square matrix
3. You can understand how GJE is supposed to work. But you don't want to do it
by hand. the computations are lengthy and tedious, and you will make arithmetic
errors. Use a computer.

I will soon share the "SageMath" solutions to some of today's exercises. Please
look that over and consider using SageMath to do some of the work you don't want
to do by hand. (Visualization and row operations!)


### For Friday, Feb 10

Please prepare [this section of the workbook][wkbk], on the
<span>\\(LU\\)</span> decomposition of matrices.

[wkbk]: http://theronhitchman.github.io/linear-algebra/course-materials/workbook/lu-decomposition.html

### Coming Up

Friday, Feb 18 will be our next assessment day. Before you let them pile up,
maybe you should consider revisiting the first set of assessments?
