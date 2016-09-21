---
layout: posts
title: Gauss-Jordan Elimination and Matrix Inverses
---

So, matrix multipliation is funny. Sometimes, a matrix doesn't have an inverse.
Fortunately, there are simple ways to find out, and an good procedure for computing
the inverse when there is one.

_Gauss-Jordan Elimination_ is the "provably best way" to compute the inverse of
some crazy matrix. Keep in mind that this is a particular algorithm. If you don't
do it in exactly that way, you aren't doing it.

Today we talked about the proper way to do GJE, and the kind of complications you
can run into, and the way to tell that you should just quit.

Also, I ranted a bit. First, about how GJE is nasty for not-too-large matrices so
you should use a computer, second about TI calculator and textbook prices, and I am sure
about a couple of other things because I have trouble staying focused when I got
going. At least I got to give Mr Oswald a hard time about programming style in
Python.

Anyway, I also did a massive algebraic computation which you should never want to see
again, but at least let me introduce the idea of the "determinant" of a matrix
(which is a thing that helps you decide if there are enough pivots).

Presentations: \#47 Vijaranakorn; \#49 Tarnow; and \#48 Hitchman.
We kinda talked about \#51, too.

### For Friday

Please prepare the _next section_, which is about the \\(LU\\)-decomposition.
You can find it [here.][wkbk]

[wkbk]: http://theronhitchman.github.io/linear-algebra/course-materials/workbook/lu-decomposition.html
