︠6b0b87b4-52de-4d78-89a1-444c392a2d42i︠
%md
# Chapter Three, Section 4: The General Solution to a System $Ax=b$ #

Sage has many built-in methods for solving systems of linear equations. I will demonstrate them below with a single example considered several times.
︡01664a97-cb13-41f9-bb7a-d51b0c476aa0︡{"html":"<h1>Chapter Three, Section 4: The General Solution to a System $Ax=b$</h1>\n\n<p>Sage has many built-in methods for solving systems of linear equations. I will demonstrate them below with a single example considered several times.</p>\n"}︡
︠25289bc5-18e9-45f7-a3ad-3512245a798e︠
A = matrix(QQ, 3,4, [1,0,2,3, 1,3,2,0, 2,0,4,9])
b = vector([2,5,10])
A; b
︡267a4b81-f2d1-41f1-ad08-5b01365a7c89︡{"stdout":"[1 0 2 3]\n[1 3 2 0]\n[2 0 4 9]\n(2, 5, 10)\n"}︡
︠e8f404c5-3047-4acb-9a7b-84a31ceb2e69i︠
%md
### Method One: RREF and the null space ###
︡8759f497-3832-44d7-bd30-4d92780bc298︡{"html":"<h3>Method One: RREF and the null space</h3>\n"}︡
︠d3d18db2-45ab-48e6-82d1-9a4ffc2aafbb︠
## First, we find the particular solution
X = A.augment(b, subdivide=True).rref(); X  # this subdivide thing is pretty neat.
︡8bfeb6ef-aeb7-4aae-9368-46aa3de03520︡{"stdout":"[ 1  0  2  0|-4]\n[ 0  1  0  0| 3]\n[ 0  0  0  1| 2]\n"}︡
︠acefaed7-5e2a-4faf-93c2-0fa19d010b48︠
# that has three pivots, all in the original matrix. So we have a solution
xp = vector([-4, 3, 0, 2]); xp
︡02376d9f-0f7c-4c5b-8e14-6ac05b1027ac︡{"stdout":"(-4, 3, 0, 2)\n"}︡
︠ba86ec09-dc38-40ad-a1ba-5a38c80a247a︠
#Let's check our work
A*xp == b
︡973ec1bb-b56b-42b8-9d59-b87df8fe837b︡{"stdout":"True\n"}︡
︠6a43d259-16f9-408c-8042-d733dda42c5c︠
# Now we need to find the nullspace and the special solutions
A.right_kernel()
︡8e76a742-8a82-48be-96c0-3f942d1aad93︡{"stdout":"Vector space of degree 4 and dimension 1 over Rational Field\nBasis matrix:\n[   1    0 -1/2    0]\n"}︡
︠cd9ea033-5ab8-4805-bb46-ab7655389bd9︠
s1 = vector([-2, 0, 1, 0]) # this is the special solution. Since our 3x4 system has rank 3, we have only one free column, and hence only one special solution
A*s1==0
︡f159f066-787e-4840-b17f-e8cbf6914dc3︡{"stdout":"True\n"}︡
︠f44b6228-37f7-4de2-9aa8-ad42fc61ca02︠
## Now we can check the general solution
t = var('t')
gensol = xp + t * s1
gensol
︡2dc5a7ad-d237-4076-aee1-57d03bc2833d︡{"stdout":"(-2*t - 4, 3, t, 2)\n"}︡
︠fe02d01b-b97e-47c4-aa8c-1dbf651a80d6︠
A*gensol == b
︡7b8a13db-6444-4e44-9edd-98482bde869f︡{"stdout":"True\n"}︡
︠c437c954-8a16-431c-a4b5-32168573babei︠
%md
### Method Two ###

Sage built-in number one: "matrix division".

Here we "left divide" by the matrix. This is odd notation, and is just something Sage allows.
︡e3545590-226b-40f8-9829-339fd37c5340︡{"html":"<h3>Method Two</h3>\n\n<p>Sage built-in number one: &#8220;matrix division&#8221;.</p>\n\n<p>Here we &#8220;left divide&#8221; by the matrix. This is odd notation, and is just something Sage allows.</p>\n"}︡
︠b7c03230-312d-482b-a28c-7403e85819cb︠
A\b
︡bd5f48c2-28e1-4068-85ab-1ebadf1b5bf9︡{"stdout":"(-4, 3, 0, 2)\n"}︡
︠6474daba-2576-4f39-8f41-f7fb1e566f45︠
## Note that this works even though A is not invertible.
A.inverse()*b
︡955ec469-6ace-4065-b9f2-affed9db55e7︡{"stderr":"Error in lines 2-2\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7733, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:41429)\n  File \"matrix_rational_dense.pyx\", line 644, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9441)\n  File \"matrix_rational_dense.pyx\", line 705, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:9586)\nArithmeticError: self must be a square matrix\n"}︡
︠f458074a-1470-4c74-848c-f15e6e078615i︠
%md

However, it only pulls out a single particular solution. It doesn't give the general solution. You still have to do that part by yourself.

### Method Three ###

Finally, Sage will also try to solve the system if you apply the <code>.solve_right()</code> method to A.
︡d5ef9c96-7d87-44f8-94e1-7c260785646f︡{"html":"<p>However, it only pulls out a single particular solution. It doesn&#8217;t give the general solution. You still have to do that part by yourself.</p>\n\n<h3>Method Three</h3>\n\n<p>Finally, Sage will also try to solve the system if you apply the <code>.solve_right()</code> method to A.</p>\n"}︡
︠6d7fc26e-fab8-4ed7-9bfa-bad75c5ea049︠
A.solve_right(b)
︡5f990628-b7c8-4338-b827-2af6460ee8b8︡{"stdout":"(-4, 3, 0, 2)\n"}︡
︠82b0a23b-8525-4728-9b9c-85a51a643781i︠
%md
Again, it only pulls out a single particular solution. It is up to you to figure out the rest.
︡f3e23843-ecc0-48bc-ad54-c5da56511401︡{"html":"<p>Again, it only pulls out a single particular solution. It is up to you to figure out the rest.</p>\n"}︡
︠0f16bf98-cbc0-4cce-800d-ebfc3f094c3c︠









