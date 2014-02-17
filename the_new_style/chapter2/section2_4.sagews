︠1a0d6456-fca5-48eb-86ed-4d6de63924bci︠
%md
# Section 2.4: Matrices as generalized numbers #

In many ways, matrices have their own algebraic structure. They behave a bit like numbers do, and it can be very useful to remember exactly in which ways they behave like other types of numbers and which ways they do not.

The interesting bit is that there are _two_ operations on matrices: multiplication and addition.

### First Trouble: keeping sizes sorted out ###

Sage is aware of the basic matrix operations and it won't let you get away with nonsense. Matrix multiplication and matrix addition are only defined if the dimensions of the matrices line up properly.
︡61443e10-c5ad-4eb7-a77c-972ac6091bcb︡{"html":"<h1>Section 2.4: Matrices as generalized numbers</h1>\n\n<p>In many ways, matrices have their own algebraic structure. They behave a bit like numbers do, and it can be very useful to remember exactly in which ways they behave like other types of numbers and which ways they do not.</p>\n\n<p>The interesting bit is that there are _two_ operations on matrices: multiplication and addition.</p>\n\n<h3>First Trouble: keeping sizes sorted out</h3>\n\n<p>Sage is aware of the basic matrix operations and it won&#8217;t let you get away with nonsense. Matrix multiplication and matrix addition are only defined if the dimensions of the matrices line up properly.</p>\n"}︡
︠bf462fda-dec6-415e-ac61-b152863eedf6︠
A = matrix(QQ, 2,3, [0,1,2,3,6,6])# A 2 by 3 matrix
B = matrix(QQ, 2,2, [4,2,3,1]) # 2 by 2 square matrix
C = matrix(QQ, 3,3, [2,1,2,1,2,1,2,1,2]) # a 3 by 3 square matrix
D = matrix(QQ, 2,3, [1,1,1,1,1,1]) # another 2 by 3 matrix
E = matrix(QQ, 3,2, [3,4,2,5,6,1]) # a 3 by 2 matrix
︡424d6910-bc1b-425b-be39-788173048cae︡
︠67f68d64-bdf1-40f4-9501-b1f65b13f521i︠
%md
Let's see which of these Sage doesn't like. You should be able to predict which ones will return an error.
︡8b09078b-77f8-478c-88e4-8c791ea6efd3︡{"html":"<p>Let&#8217;s see which of these Sage doesn&#8217;t like. You should be able to predict which ones will return an error.</p>\n"}︡
︠da934481-f7cf-4892-a8cc-85092e341991︠
A*B
︡c0d67743-7ee1-4136-b7e4-f049da14d650︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"element.pyx\", line 2751, in sage.structure.element.Matrix.__mul__ (sage/structure/element.c:19589)\n  File \"coerce.pyx\", line 856, in sage.structure.coerce.CoercionModel_cache_maps.bin_op (sage/structure/coerce.c:8169)\n"}︡{"stderr":"TypeError: unsupported operand parent(s) for '*': 'Full MatrixSpace of 2 by 3 dense matrices over Rational Field' and 'Full MatrixSpace of 2 by 2 dense matrices over Rational Field'\n"}︡
︠b46f594b-a500-4d6a-b61c-ff6f838684d9︠
B*A
︡5cb4414d-b1ad-43a8-9b82-921205622ad6︡{"stdout":"[ 6 16 20]\n[ 3  9 12]\n"}︡
︠79900d54-68ae-4045-985c-06614e11d623︠
A+B
︡5b238256-9939-4dd2-8498-6fcfa3e82a6c︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"element.pyx\", line 1539, in sage.structure.element.RingElement.__add__ (sage/structure/element.c:13886)\n  File \"coerce.pyx\", line 856, in sage.structure.coerce.CoercionModel_cache_maps.bin_op (sage/structure/coerce.c:8169)\nTypeError: unsupported operand parent(s) for '+': 'Full MatrixSpace of 2 by 3 dense matrices over Rational Field' and 'Full MatrixSpace of 2 by 2 dense matrices over Rational Field'\n"}︡
︠ef6493b6-4c86-4c1c-9afc-e0fd45df8e4c︠
A*C
︡b16dd62b-4b3b-42e7-ae3f-b453916b9abe︡{"stdout":"[ 5  4  5]\n[24 21 24]\n"}︡
︠09cce50a-95ef-4321-b45f-4b973e61fb9d︠
C*A
︡2e434d0e-fd61-4a2d-977a-15079ee68438︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"element.pyx\", line 2751, in sage.structure.element.Matrix.__mul__ (sage/structure/element.c:19589)\n  File \"coerce.pyx\", line 856, in sage.structure.coerce.CoercionModel_cache_maps.bin_op (sage/structure/coerce.c:8169)\nTypeError: unsupported operand parent(s) for '*': 'Full MatrixSpace of 3 by 3 dense matrices over Rational Field' and 'Full MatrixSpace of 2 by 3 dense matrices over Rational Field'\n"}︡
︠8350b9f4-1db4-428b-86f4-c6c1ae3d80c2︠
A*D
︡591afcdf-f005-49e3-95db-0ee63b15d71d︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"element.pyx\", line 2748, in sage.structure.element.Matrix.__mul__ (sage/structure/element.c:19570)\n  File \"matrix_rational_dense.pyx\", line 1041, in sage.matrix.matrix_rational_dense.Matrix_rational_dense._matrix_times_matrix_ (sage/matrix/matrix_rational_dense.c:12303)\n  File \"matrix_rational_dense.pyx\", line 2615, in sage.matrix.matrix_rational_dense.Matrix_rational_dense._multiply_pari (sage/matrix/matrix_rational_dense.c:24235)\nArithmeticError: self must be a square matrix\n"}︡
︠aadd3062-7c54-4800-ae49-789904cdbd7d︠
A+D
︡4f38fb3c-0cf1-4c1b-b7fa-4b9bfb53e11e︡{"stdout":"[1 2 3]\n[4 7 7]\n"}︡
︠95f4c38f-cd08-49f6-9311-ce7da6956f52i︠
%md

### Matrices and Addition ###

Matrix addition is a lot like the addtion of integers.

+ zero
+ additive inverses (i.e. negatives)
+ commutative
︡5f4d9662-9234-40be-b0dc-659d060ea7f4︡{"html":"<h3>Matrices and Addition</h3>\n\n<p>Matrix addition is a lot like the addtion of integers.</p>\n\n<ul>\n<li>zero</li>\n<li>additive inverses (i.e. negatives)</li>\n<li>commutative</li>\n</ul>\n"}︡
︠c2aa91ad-a2dd-4091-bc11-548e8f253547︠
Z= zero_matrix(2,3); Z  # this should construct and display the 2 by 3 zero matrix
︡b5714f31-9589-4832-9d82-8c50496348bb︡{"stdout":"[0 0 0]\n[0 0 0]\n"}︡
︠c732ff3a-a9d0-47b0-a5d0-6ad34b2dc9da︠
A + Z # let's add A and Z
︡aa32a22c-7594-41da-9d85-c8bd099f8294︡{"stdout":"[0 1 2]\n[3 6 6]\n"}︡
︠b2662662-8951-4ca4-a86d-d55ee778f74a︠
A + Z == A # let's check that adding Z doesn't change anything
︡afdb9f07-fa9a-4516-8d36-db70f15e924d︡{"stdout":"True\n"}︡
︠effa022c-762c-49b4-9726-98cc0194151d︠
L = -A; L
︡66245388-8ac2-4132-ae21-cbfa43df8ac1︡{"stdout":"[ 0 -1 -2]\n[-3 -6 -6]\n"}︡
︠a2647bff-616b-498b-aaed-3f41c84d9c1d︠
A + L # this should return zero
︡0dcf937f-a0c8-4560-922a-29ac0206fa89︡{"stdout":"[0 0 0]\n[0 0 0]\n"}︡
︠7f8cb652-22e0-4ee3-8c80-6719940d3503i︠


%md
### Matrices and Multiplication ###

Matrix multiplication satisfies *some* of the usual rules.

+ It is associative, in that $(AB)C = A(BC)$, at least when that set of products makes sense.
+ distributive rules, right and left:
+ there is a multiplicative identity, right and left.

Big problem: matrix multiplication is not generally commutative. In fact, it is possible that sizes are all wrong!

+ above $AC$ makes sense, but $CA$ does not
+ above $AE$ and $EA$ both make sense, but are different sizes!

The way to avoid all of this trouble is to restrict your attention to square matrices. But even in this case, matrix multiplication may not be commutative. It is *not* always the case that $XY = YX$.

For those of you going on to a course in "Modern Algebra," what we have here is an example of a (non-commutative) *ring with unit*.

︡f11386d0-1783-48bd-b1c2-5937c1ff5cdc︡{"html":"<h3>Matrices and Multiplication</h3>\n\n<p>Matrix multiplication satisfies <em>some</em> of the usual rules.</p>\n\n<ul>\n<li>It is associative, in that $(AB)C = A(BC)$, at least when that set of products makes sense.</li>\n<li>distributive rules, right and left:</li>\n<li>there is a multiplicative identity, right and left.</li>\n</ul>\n\n<p>Big problem: matrix multiplication is not generally commutative. In fact, it is possible that sizes are all wrong!</p>\n\n<ul>\n<li>above $AC$ makes sense, but $CA$ does not</li>\n<li>above $AE$ and $EA$ both make sense, but are different sizes!</li>\n</ul>\n\n<p>The way to avoid all of this trouble is to restrict your attention to square matrices. But even in this case, matrix multiplication may not be commutative. It is <em>not</em> always the case that $XY = YX$.</p>\n\n<p>For those of you going on to a course in &#8220;Modern Algebra,&#8221; what we have here is an example of a (non-commutative) <em>ring with unit</em>.</p>\n"}︡
︠8da00b60-4539-4e6c-bb84-a58f4f6c90e3︠
A*E, E*A
︡bccb30f8-c9d9-495d-b7c7-e6e1651c18c4︡{"stdout":"(\n         [12 27 30]\n[14  7]  [15 32 34]\n[57 48], [ 3 12 18]\n)\n"}︡
︠b2a200db-8d42-4275-a4c6-7358aeea1addi︠
%md
Sage knows about the ring structure, and can be used to investigate it.
︡5efb037e-d225-46c5-a316-d95c0b1201e0︡{"html":"<p>Sage knows about the ring structure, and can be used to investigate it.</p>\n"}︡
︠fe1f87a8-beb8-44d6-bb30-8073a9180af5︠
B.is_invertible() # this just checks if B has an inverse.
︡79c7d262-35b9-4138-af62-8b3566440455︡{"stdout":"True\n"}︡
︠2f76403a-ffa7-429c-baa9-a3353089e4ff︠
C.is_invertible()
︡e07383f1-6fb7-4b93-b64c-c3e82bdb6168︡{"stdout":"False\n"}︡
︠29f37f44-f741-4fb6-b0e4-723e0c998620︠
B.inverse() # this will return the inverse
︡932a9d91-8428-4b48-81fb-035f98e027d6︡{"stdout":"[-1/2    1]\n[ 3/2   -2]\n"}︡
︠570a99b4-f074-41d9-8383-73403841020f︠
B^(-1) # and so will this.
︡1888ca92-9d16-4b02-a9f3-36bf8c9d1297︡{"stdout":"[-1/2    1]\n[ 3/2   -2]\n"}︡
︠c27c8ab9-e40f-46f8-b3f8-053e40e57df8i︠
%md
One can even construct the ring of all n by n matrices and play around inside it.
︡09b86c21-b077-4ddc-9b67-fc5701eca634︡{"html":"<p>One can even construct the ring of all n by n matrices and play around inside it.</p>\n"}︡
︠2be11639-79bc-4710-b0c7-247afb0145db︠
M = MatrixSpace(QQ, 2,2); M
︡9ef8cf90-c5e8-467d-8751-c2497d727024︡{"stdout":"Full MatrixSpace of 2 by 2 dense matrices over Rational Field\n"}︡
︠fb083d54-68f5-4050-9619-d2f80be68b6c︠
M(1) # this should be the 2 by 2 identity matrix, which acts like 1 for multiplication
︡f0ad2e1c-f66d-4502-b31e-19424e0e8857︡{"stdout":"[1 0]\n[0 1]\n"}︡
︠d0ee2dbd-b5c5-42b1-a721-387dadab9aaa︠
M(0) # this should be the 2 by 2 zero matrix
︡516d7874-36db-4b4b-ba83-71605889ad7f︡{"stdout":"[0 0]\n[0 0]\n"}︡
︠18ba66e9-a20c-4d12-9e1f-23313366ef4b︠
H = M([2,1,1,1]); H
︡9d6a2edc-5df4-4831-9295-5a7aabe2d34f︡{"stdout":"[2 1]\n[1 1]\n"}︡
︠8346943c-1a38-4b69-8303-8900be4c43dc︠
%md
You can even make complicated expressions out of matrices! Sage will do all the work.
︠a77b74e7-a0eb-4f9c-a745-463f3ee9604b︠
H^2 + H
︡0a51928e-a67b-4875-9ef9-1eaf39f14a6b︡{"stdout":"[7 4]\n[4 3]\n"}︡
︠00405260-5e7e-4366-bfbf-19841335f9ae︠
H * (H - 5*M(1) + 2*H^2)
︡f157faa2-bffc-4e3a-9251-c06417b24814︡{"stdout":"[21 14]\n[14  7]\n"}︡
︠fa174f84-a79c-4e1b-99c2-0003e2924d29︠
H^2 - 3*H + M(1) # this one should turn out to be zero. I know this because of a theorem.
︡99146ec5-849b-4095-af2d-9ccbc3a67fe3︡{"stdout":"[0 0]\n[0 0]\n"}︡
︠d9d97e5e-82be-4b9d-b068-85c6d897ea89i︠

%md
### Block Matrices ###

Sage has a bulit-in for constructing matrices out of blocks, too. It is easiest to see an example.

To make this work, I will have to tell Sage when I have a vector that I want it to be either a row or a column vector in the appropriate places.
︡abc4ab04-6f5a-4709-b0cd-867e20609f34︡{"html":"<h3>Block Matrices</h3>\n\n<p>Sage has a bulit-in for constructing matrices out of blocks, too. It is easiest to see an example.</p>\n\n<p>To make this work, I will have to tell Sage when I have a vector that I want it to be either a row or a column vector in the appropriate places.</p>\n"}︡
︠ea1d2f68-39e2-45a2-9e13-d881615e99d7︠
X = matrix(QQ, 2,2, [0,-1,1,0])
v = vector([2,3])
w = matrix(QQ, 1,1, [1])
Blockey = block_matrix(QQ, 2,3, [[X, X, v.column()], [v.row(), v.row(), w]])
Blockey
︡3c8bea71-d5ff-4d6a-a74a-f6a4708b0c0d︡{"stdout":"[ 0 -1| 0 -1| 2]\n[ 1  0| 1  0| 3]\n[-----+-----+--]\n[ 2  3| 2  3| 1]\n"}︡
︠4efcc12a-bc83-4586-b79d-26279d98efb6︠









