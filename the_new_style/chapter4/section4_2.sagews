︠8d7f9044-a56f-4ec0-84da-1190d938652di︠
%md

## Section 4.1: Orthogonal Projections

Sage has no built-in commands for orthogonal projections. But let us recall those parts that might be useful:
︡ccb903d3-a725-4da8-80b7-bfc700be261f︡{"html":"<h2>Section 4.1: Orthogonal Projections</h2>\n\n<p>Sage has no built-in commands for orthogonal projections. But let us recall those parts that might be useful:</p>\n"}︡
︠63beada2-71ba-4c45-8341-ba62c3cef563︠
A = matrix(QQ, 3,2, [1,2,3,4,5,6]); A
︡12d37f0c-9743-43c4-a6ef-c5a40ab15f49︡{"stdout":"[1 2]\n[3 4]\n[5 6]\n"}︡
︠4582b66d-bf3a-48fd-a963-f97eb67571e3︠
A.transpose() # the transpose
︡2d47193b-1392-4d46-9700-4e26f30c40a5︡{"stdout":"[1 3 5]\n[2 4 6]\n"}︡
︠3d9476fe-ed74-4089-9920-3536a76bcdec︠
A.inverse() # the inverse
︡09271e2a-2d3a-4495-b1ec-05651c565179︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7733, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:41429)\n  File \"matrix_rational_dense.pyx\", line 644, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9441)\n  File \"matrix_rational_dense.pyx\", line 705, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:9586)\nArithmeticError: self must be a square matrix\n"}︡
︠d223d508-6774-4081-af9c-bbf3ec890a40i︠
%md
Sorry, that matrix is not even square, so it can't be invertible.
But this will be:
︡d36b6613-a98b-4f5b-b2d2-eb99350626f5︡{"html":"<p>Sorry, that matrix is not even square, so it can&#8217;t be invertible.\nBut this will be:</p>\n"}︡
︠32cf98c8-01ac-4493-a4c0-126a5662ad6f︠
(A.transpose()*A).inverse()
︡03672c54-2986-4506-b4ef-28b8a81670a4︡{"stdout":"[  7/3 -11/6]\n[-11/6 35/24]\n"}︡
︠4060f9da-499a-46f8-88c3-5f266733be42i︠
%md
And finally...
︡e369b420-0dbf-4a2a-b9b8-221e3dad0b20︡{"html":"<p>And finally&#8230;</p>\n"}︡
︠cb78a194-c681-4e6b-8ac5-cbde2014f440︠
P = A * (A.transpose()*A).inverse() * A.transpose(); P
︡f69c0c98-e8a0-45d9-8236-dd459f26f9c7︡{"stdout":"[ 5/6  1/3 -1/6]\n[ 1/3  1/3  1/3]\n[-1/6  1/3  5/6]\n"}︡
︠e2221dc4-bc49-46d7-9e90-53de371bd74di︠
%md
This proces should have some basic properties. Let's check them.
︡dfa658b6-c93b-43ea-8182-a5136ce64692︡{"html":"<p>This proces should have some basic properties. Let&#8217;s check them.</p>\n"}︡
︠58ae2701-28ae-4f12-b624-9cca744b2e31︠
B = A.transpose()*A
B.is_invertible(); B.is_symmetric(); B.parent()
︡c79ce485-6a98-4e79-8993-bc0c1bd7cce5︡{"stdout":"True\nTrue\nFull MatrixSpace of 2 by 2 dense matrices over Rational Field\n"}︡
︠fcfea8d2-e105-42fc-9045-227e02182695i︠
%md
So, $A^T A$ is square, symmetric, and invertible.
︡6dc7ac5a-aa28-410f-9ea7-b9c00fae6511︡{"html":"<p>So, $A^T A$ is square, symmetric, and invertible.</p>\n"}︡
︠998dab2b-5593-4a48-85c1-2665c2a88169︠
P.transpose() == P; P.is_symmetric(); P*P == P
︡22599528-2ffd-4fce-9879-d72147710b1e︡{"stdout":"True\nTrue\nTrue\n"}︡
︠f475862d-33e9-4dcb-ab62-14ae6f08950a︠
%md
Also as expected.









