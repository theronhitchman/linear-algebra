︠1489fdfe-c946-4924-8a1d-6b38e6d3a18fi︠
%md
# Section 2.5: Gauss-Jordan Elimination \& Matrix Inverses #

We have already seen Sage commands for constructing matrices, and for applying row operations to them. (See <code>section2_2.sagews</code>.)
Those are the operations used to perform Gauss-Jordan elimination.

But there are several interesting and useful commands in this neighborhood we haven't yet discussed.
︡b81433af-bb27-46a2-a318-17c2a2e24a97︡{"html":"<h1>Section 2.5: Gauss-Jordan Elimination \\&amp; Matrix Inverses</h1>\n\n<p>We have already seen Sage commands for constructing matrices, and for applying row operations to them. (See <code>section2_2.sagews</code>.)\nThose are the operations used to perform Gauss-Jordan elimination.</p>\n\n<p>But there are several interesting and useful commands in this neighborhood we haven&#8217;t yet discussed.</p>\n"}︡
︠263592d9-1a90-4652-9fee-95e72729abb4︠
A = matrix(QQ, 2,2, [2,1,1,1]) # lets construct my favorite matrix so we have something to play with
︡5b2ce403-cc1f-4d1d-b305-0e48daef7dc5︡
︠fe8752dc-0223-4a63-bfc4-967d5ae08dbc︠
A.is_invertible() # this method returns True or False depending on if the matrix is invertible or not
︡ec461d30-2909-4ced-8091-ee871739b6d0︡{"stdout":"True\n"}︡
︠9cbd86a3-09e8-4a96-a93a-0a630a357401︠
A.inverse() # this method returns the inverse of the matrix
︡13f51903-b5c9-4417-a3e3-1c3a7bd2fb93︡{"stdout":"[ 1 -1]\n[-1  2]\n"}︡
︠0cb8ba0b-0c09-483e-9223-dbb7a7fb7daa︠
A^(-1) # this will also compute the inverse of a mstrix, if it exists
︡f4b1032d-6ffa-4f2b-9c5a-442074a56f8d︡{"stdout":"[ 1 -1]\n[-1  2]\n"}︡
︠a9d68feb-6e5a-492f-88b6-48e80769e264︠
B = matrix(QQ, 2, 2, [0,1,0,0]) # just so we can see what happens if the matrix is not invertible
B.is_invertible(); B.inverse()
︡b0c4e53e-0bf3-476e-8222-991798ed8ca7︡{"stdout":"False\n"}︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7532, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:40678)\n  File \"matrix_rational_dense.pyx\", line 641, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9435)\n  File \"matrix_rational_dense.pyx\", line 724, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:9835)\nZeroDivisionError: input matrix must be nonsingular\n"}︡
︠d25ee9cf-c0be-4d35-b475-b1d50547d9bc︠
A.determinant(); B.determinant()  # this method returns the value of the determinant, which equals the product of the pivots
︡3e1d2d1d-3eaf-4628-a4ba-78e846633f85︡{"stdout":"1\n"}︡
︠5530b49c-d27d-421d-bd2b-f996e6d86434︠
A.rref() # this method returns the reduced row echelon form (the 'rref') of a matrix.
︡049a44c1-cb3e-47a2-af5d-1ab9383761df︡{"stdout":"[1 0]\n[0 1]\n"}︡
︠7a2796bf-c0f9-4be7-90a3-b16f294b2033︠
A.echelon_form() # this also returns the rref of A. neither of these two methods changes A.
︡5f453a5b-3910-4515-bf92-156d69d04c71︡{"stdout":"[1 0]\n[0 1]\n"}︡
︠852eacaa-386d-4dc7-800c-c83d64d96050︠
B = copy(A) # because I want to mess with A, I will first make a copy... (this is a fancy Python thing)
︡a8f4bd38-9ea6-47f6-a174-e18767c66452︡
︠07c9341d-7265-4944-b6aa-4bf259261011︠
B.echelonize() # this methods finds the rref AND THEN UPDATES the matrix. So this changes the original matrix. This is why I made a copy.
︡aed02e11-5613-4345-a294-60a2603381e9︡
︠8a5bd1f4-6ac5-40cc-9fa0-b90353749340︠
A, B # let's just look at them, shall we? See A is unchanged, but B changed
︡dcb5b78d-e293-48f9-a986-9ee97e1d8b4e︡{"stdout":"(\n[2 1]  [1 0]\n[1 1], [0 1]\n)\n"}︡
︠2c2e092c-fdf5-4a43-a0f5-0bc7b67a7948︠
M = MatrixSpace(QQ, 2,2) # I want to play with the 2 by 2 identity matrix here, so I'll construct it the fancy way
M(1)
︡e389b907-4db8-4168-a822-14b0d949ca39︡{"stdout":"[1 0]\n[0 1]\n"}︡
︠bed68539-6fb7-4965-92fc-cdb4d2b57844︠
C = A.augment(M(1)) # prepare for GJE
C.rref()
︡20e7f955-bdb6-4846-ac04-429a9259f7a6︡{"stdout":"[ 1  0  1 -1]\n[ 0  1 -1  2]\n"}︡
︠bcf926eb-0a5e-4278-b00e-90e8c48ee017︠
D = C.rref().matrix_from_columns([2,3]) # "do GJE and report the right hand side."
D
︡8d5e7534-5157-4325-9e58-177df54eeb52︡{"stdout":"[ 1 -1]\n[-1  2]\n"}︡
︠5e9c99fa-20e7-4285-8c86-5379dd4cef78︠
A.determinant() # and of course, sage has a command for this.
︡a79dfd31-61b0-46f2-8822-4c63244f285b︡{"stdout":"1\n"}︡
︠c618a0e6-2342-43a4-96b1-fb00b6a6a9f9︠









