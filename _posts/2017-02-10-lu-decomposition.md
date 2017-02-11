---
layout: post
title: The LU decomposition
date: 2017-02-10 12:00
---

We talked about how a careful watch on a forward pass of Gauss-Jordan
elimination could be used to write a matrix in a special form:

<div>\\[ A = LU\\]</div>

where <span>\\(L\\)</span> is a lower-triangular matrix which sort of
encodes the elimination steps used to get to <span>\\(U\\)</span>, an
upper-triangular matrix.

This is an example of a _factorization_. It tells us a useful way we may
write a matrix as a product of other "simpler" matrices.

Note that this doesn't always work. Sometimes to get from the matrix
<span>\\(A\\)</span> to the upper-triangular <span>\\(U\\)<span>, you have to
use a row swap. This keeps us from making an LU decomposition. But the next
reading and assignment will help us see what happens in those cases.

### For Monday

Please prepare [this section of the workbook.](http://theronhitchman.github.io/linear-algebra/course-materials/workbook/permutations.html)

### Keep in Mind

Our Next set of in-class assessments will be on Friday.
