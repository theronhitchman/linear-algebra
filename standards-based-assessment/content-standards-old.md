---
layout: default
title: Content Standards
---

The basic content standards for linear algebra are divided into _foundational_
proficiencies, which are mostly computational, and _advanced_ proficiencies,
which are about building good mental models and developing context and deeper
meaning for the structure of linear algebra.


------

## Chapter One

<div class="row">
  <div class="col-xs-12 col-sm-6">
    <h3>Foundational</h3>

    <ul>
      <li>Add vectors</li>
      <li>Multiply a vector by a scalar</li>
      <li>compute linear combinations</li>
      <li>draw pictures which correspond to the three above operations.</li>
      <li>Compute the dot product of two given vectors.</li>
      <li>Compoute the length of a given vector.</li>
      <li>Normalize a given vector</li>
      <li>recognize that \( u\cdot v = 0 \) is the same as "\(u\) and \(v\)
        are orthogonal."</li>
      <li>compute the angle between two given vectors using the cosine formula.</li>
      <li>Multiply a matrix times a vector as a linear combination of columns.</li>
      <li>Multiply a matrix times a vector as a set of dot products, row times
      column.</li>
      <li>Translate back and forth between our three algebraic representations:
      systems of linear equations, linear combination equations, and matrix
      equations.</li>
      <li>correctly identify the rows and columns of a matrix.</li>
      <li>describe waht is meant by a lower triangular matrix.</li>
    </ul>


  </div>
  <div class="col-xs-12 col-sm-6">
    <h3>Advanced</h3>

    <ul>
      <li>Solve linear combination equations involving unknown coefficients.</li>
      <li>Solve linear combination equations involving unknown vectors.</li>
      <li>Interpret the statements \(u \cdot v &lt; 0\) and  \(u \cdot v > 0\)
        geometrically.</li>
      <li>Pass back and forth between linear equations and equations involving
      dot products.</li>
      <li>Make pictures of level sets of the dot product operation.</li>
      <li>Desribe what it means for vectors in the plane or in space to be
      linearly dependent or linearly independent.</li>
      <li>Describe what the inverse of a matrix is, and its significance.</li>
    </ul>

  </div>
</div>

## Chapter Two

<div class="row">
  <div class="col-xs-12 col-sm-6">
    <h3>Foundational</h3>
    <ul>
      <li>Translate back and forth between the three algebraic representations:
        <ul>
          <li>A system of linear equations.</li>
          <li>An equation involving a linear combination of vectors.</li>
          <li>A matrix equation.</li>
        </ul>
      </li>
      <li>
        Can write down the \(n \times n\) <em class="terminology">identity matrix</em>.
      </li>
      <li>Clearly state and use the following vocabulary words: pivot, multiplier,
        triangular matrix, back substitution, singular, non-singular
      </li>
      <li>Translate a system of linear equations into the form of an augmented matrix
        and back.</li>
      <li>Perform the forward pass elimination process to an augmented matrix.</li>
      <li>Multiply a pair of square matrices having the same size.</li>
      <li>Identify the matrix which performs the operation “add a multiple of row
        i to row j.”</li>
      <li>Identify the matrix which performs the operation “swap the places of
          row i and row j.”</li>
      <li>Add and subtract matrices of the same size.</li>
      <li>Multiply matrices of appropriate sizes by one method.</li>
      <li>Compute powers \(A^p\) of a given square matrix \(A\).</li>
      <li>Use the distributive law for matrix multiplication and matrix addition correctly.</li>
      <li>State the definition of <em class="terminology">invertible</em> matrix.</li>
      <li>Solve an equation \(Ax = b\) using the inverse of \(A\)
              if it exists.
            </li>
      <li>State how inverses and multiplication interact.</li>
      <li>Use Gauss-Jordan elimination to compute the inverse of a matrix.</li>
      <li>State a test for invertibility of square matrices using pivots.</li>
      <li>
        Use Gaussian Elimination to find the \(LU\) and \(LDU\)
        decompositions of a matrix.
      </li>
      <li>
        Describe when the process of Gaussian Elimination will fail to
        produce an \(LU\) decomposition.
      </li>
      <li>
        Compute the transpose of a matrix.
      </li>
      <li>
        Correctly perform calculations where the transpose interacts with the
        operations of matrix sum, matrix product, and matrix inverse.
      </li>
      <li>
        Compute inner and outer products using the transpose.
      </li>
      <li>
        Decide if a matrix is symmetric or not.
      </li>
      <li>
        Recognize permutation matrices, and design permutation matrices which
        correspond to given row swaps.
      </li>
    </ul>
  </div>
  <div class="col-xs-12 col-sm-6">
    <h3>Advanced</h3>
    <ul>
      <li>Given a system, interpret and plot the “row picture”.</li>
      <li>Given a system, interpret and plot the “column picture”.</li>
      <li>Use a matrix as a model of a transformation, including stating
        the domain and the range.</li>
      <li>Perform elimination to put a system of linear equations into triangular form.</li>
      <li>Solve small systems by hand.</li>
      <li>Explain the two failure modes for elimination, and describe which leads to
        no solutions, and which leads to infinitely many solutions.</li>
      <li>Solve larger systems with the help of a computer algebra package (Sage).</li>
      <li>
          Use the steps from a forward pass elimination step to write a correct
          equation of the form
          \[
            E_{\bullet}E_{\bullet}\cdots E_{\bullet} (A\ |\ b) = (U\ |\ b')
          \]
          where \(U\) is an upper triangular matrix.
      </li>
      <li>Multiply block matrices.</li>
      <li>Multiply matrices by <em>three</em> methods.</li>
      <li>Give examples to show how matrix multiplication is not like
        ordinary multiplication of real numbers: including the trouble
        with commutativity, and the difficulty with inverses.
      </li>
      <li>Describe the connection between Gauss-Jordan elimination and solving
        \(n\) different systems of equations.
      </li>
      <li>Describe the connection between Gauss-Jordan elimination, computing
              matrix inverses, and the process of elimination by matrix multiplication.
            </li>
      <li>State the definition of the determinant of a square matrix.</li>
      <li>State the connection between the determinant of a square matrix and
              invertibility.</li>
      <li>State the distinction between a matrix being invertible
              and a matrix being singular.</li>
      <li>
        Solve a system of equations by using the \(LU\) decomposition and
        two triangular systems.
      </li>
      <li>
        Explain the connection between matrix elimination and the \(LU\)
        or \(LDU\) factorization of a matrix.
      </li>
      <li>
        Find the \(LDL^T\) decomposition for symmetric matrices.
      </li>
      <li>
        Explain how the necessity of permuting rows during Gaussian elimination
        leads to the decomposition \(PA = LU\).
      </li>
      <li>
        Explain why \(P^T = P^{-1}\) for permutation matrices.
      </li>
    </ul>
  </div>
</div>




<br class="visible-xs visible-sm"/>
