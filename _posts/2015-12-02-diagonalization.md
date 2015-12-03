---
layout: post
title: Diagonalization
---

We discussed items related to eigenvalues, eigenvectors, and diagonalization today.
Presentations:

  * \#160 Knief
  * \#165 Conger
  * \#166 Bundt
  * \#167 Adams

The main idea here is that if you can collect enough eigenvectors \\(v_i\\) to
make a basis of \\(\mathbb{R}^n\\), then you can take all of the eigenvector
equations
\\[
A v_i = \lambda_i v_i
\\]
and stack them as columns of a matrix to find
\\[
A \cdot
\begin{pmatrix}
| & | &  & | \\
v_1 & v_2 &  & v_n \\
| & | &  & | \\
\end{pmatrix} =
\begin{pmatrix}
| & | &  & | \\
Av_1 & Av_2 &  & Av_n \\
| & | &  & | \\
\end{pmatrix} =
\begin{pmatrix}
| & | &  & | \\
\lambda_1v_1 & \lambda_2v_2 &  & \lambda_nv_n \\
| & | &  & | \\
\end{pmatrix}
\\]
Now, if we make a matrix \\(S\\) whose columns are the vectors \\(v_i\\), then we
get \\(AS = \Lambda S\\), where \\(\Lambda\\) is the diagonal matrix with the
eigenvalues \\(\lambda_i\\) as entries! This can be rearranged to the standard
equation \\(A = S^{-1} \Lambda S \\), where we say we have "diagonalized" \\(A\\).


#### For Friday, 4 December

Prepare section 6.3 of the workbook and text. This discusses the
"Spectral Theorem" for symmetric matrices.

That will be our last bit of new material for the semester!
