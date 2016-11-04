---
layout: post
title: Least Squares
---

Today was our day to see a beautiful application of some of our ideas: curve fitting.
It turns out that fitting a curve to data in a way that minimizes the "sum of squared
errors" (often called least squares regression) is sometimes just a system of linear
equations \\(Ax= b\\) where \\(b\\) is not in the column space of \\(A\\).
More often than not, this is because A has many more rows than columns.

So, how do we approximate a solution to the unsolvable system \\(Ax = b\\)? Well,
we note that the orthogonal projection of \\(b\\) onto the column space of \\(A\\)
will be "close to b," and since it is in the column space, the equation \\(Ax=p\\)
will have a solution.

If we unpack what we learned about computing projections, that means we really
solve this equation instead: \\(A^{T} Ax = A^{T}b\\). Seriously, that is it.
If A has full column rank, the matrix \\(A^T A\\) is square, symmetric, and invertible.
That "fixes" things.

Presentations: \#117 Tarnow; \#118 Schmitt; \#119 Parker; \#120 Fuhs.
