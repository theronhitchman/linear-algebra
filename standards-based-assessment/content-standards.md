---
layout: default
title: Content Standards
---


# Standards for Linear Algebra Content Learning

These are organized by the "big questions" that we address throughout the course.
At first, the questions are pretty straightforward and focus on solving systems
of equations. Eventually, the questions become more internal to linear algebra, and
address things that come up in our study of systems, but are definitely at a "second
level."

## Foundational Goals


### Question One: What are the basic objects of linear algebra?

 * Vector Algebra (Chapter 1)

    > add vectors, plot vectors, compute scalar multiplication of number and vector,
    > compute linear combinations, geometric interpretations of these operations

 * Matrix Algebra (Chapter 1 and 2)

    > add matrices, take transpose, multiply matrix times vector (two ways),
    > multiply two matrices (three ways), identify troubles with matrix multiplication:
    > commutativity, inverses

 * The Dot Product (Chapter 1)

    > compute the dot product of two vectors, compute angles between vectors,
    > compute length of a vector, normalize a vector, use connection between
    > dot product and linear equations to work with normal vectors

### Question Two: How can we solve a square system of linear equations?

 * Gauss-Jordan Elimination (Chapter 2)

    > Use Gauss-Jordan and back-solving to solve a system, find LU decomposition,
    > identify when Gauss-Jordan breaks, identify when matrix does not have
    > an LU decomposition and discuss workaround, compute determinant of a square matrix,
    > compute the inverse of a square matrix


### Question: How can we solve a general system of linear equations?
How can we tell if there is a solution? What shape will the solution set have?
When will the solution be unique? Is there a computationally effective way to
find the solution set?

 * Solving Systems of Equations (Chapter 3)

    > Solve a general (rectangular) system of linear equations using the reduced row-echelon form,
    > special solutions, a particular solution. Give the general solution to a
    > system of linear equations. Compute the rank of a matrix. Use pivots
    > and free variables to reason about the solution set to a system of equations

 * The Four Subspaces (Chapter 3)

    > Compute the nullspace, column space, row space, and left nullspace of a
    > matrix. describe these subspaces by giving bases

### Question: What are the good ways to understand subspaces?

 * Implicit and Explicit Descriptions (Chapter 3)

    > determine when a set of vectors is linearly dependent or linearly independent,
    > determine the span of a set of vectors. determine if a collection of vectors
    > is a basis for a subspace
    > Find a basis for a subspace described using equations,
    > find equations to describe a subspace described using a basis
    > use the row space algorithm and the column space algorithm to find a basis


### Question: Can we find approximate solutions to systems that do not have an actual solution?

 * Approximate Solutions and Least Squares (Chapter 4)

    > Find the "best" available approximate solution to an unsolvable system
    > of equations, draw pictures explaining how orthogonal projection is relevant,
    > use approximate solutions to fit curves to data

### Question: Is there a good way to test if a square matrix is invertible?

 * Determinants and the Invertible Matrix Theorem (Chapter 5)

    > Use properties of determinants, compute determinants in a variety of ways,
    > Use the invertible matrix theorem

### Question: How can we understand the geometry of square matrices as transformations?

 * Eigenvalues, Eigenvectors, and the Spectral Theorem (Chapter 6)

    > Compute eigenvalues and eigenvalues, diagonalize matrices when possible (and
    > recognize limitations), know and use spectral theorem

----

----

## Advanced Goals

### Question: Are there any good geometric interpretations of a system of linear equations?

 * The Three Viewpoints (Chapters 1 and 2)

    > The row picture, the column picture, and the transformational picture. pass back and forth
    > cleanly pass between the representations, and describe what a solution means in each case.

### Question: How do we understand matrices as transformations?

 * Four Subspaces and the Fundamental Theorem of Linear Algebra (Chapters 3 and 4)

    > Use the four subspaces to describe the action of a matrix as a transformation (function)
    > Draw reasonably accurate schematic of the transformational picture using information
    > about the four subspaces, make conclusions about the nature of a matrix using
    > the four subspaces

### Question: Is there a way to choose a geometrically good basis for a subspace?

 * Orthonormal Bases and the QR Decomposition (Chapter 4)

    > Use Gram-Schmidt to compute an orthonormal basis for a subspace, decide if a
    > matrix is orthogonal or not, compute the QR decomposition of a matrix

### Question: Is there a good geometric way to understand the behavior of a general matrix as a function?

 * Singular Value Decomposition (Chapter 6)

    > Compute the SVD of a matrix, reason about the structure of a matrix using
    > the SVD, build matrices with given properties using the SVD.
