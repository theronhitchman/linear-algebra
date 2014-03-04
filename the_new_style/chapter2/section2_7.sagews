︠ecb48fce-f824-4cdd-8c17-8b65a1c249fbi︠
%md
# Section 2.7: Transposes, Symmetry, Perumtations, and Pivots #

There is a lot going on in this little section. At first glance, it is a bit intimidating. But realy, you have seen most of the ideas before.

### The Transpose ###

The transpose of a matrix is what you get by switching the roles of rows and columns. Sage has a simple method for this:
︡bcf22023-b584-4ebf-ab1b-9fe30738f1db︡{"html":"<h1>Section 2.7: Transposes, Symmetry, Perumtations, and Pivots</h1>\n\n<p>There is a lot going on in this little section. At first glance, it is a bit intimidating. But realy, you have seen most of the ideas before.</p>\n\n<h3>The Transpose</h3>\n\n<p>The transpose of a matrix is what you get by switching the roles of rows and columns. Sage has a simple method for this:</p>\n"}︡
︠e644de45-f930-4ac0-8054-e9c876828ffc︠
M = MatrixSpace(QQ, 3,3)
A = M([1,2,3,4,5,6,7,8,9]); A
︡2dfe88f9-8825-40f1-9a9b-72a1b4c2b7c2︡{"stdout":"[1 2 3]\n[4 5 6]\n[7 8 9]\n"}︡
︠39c7167f-b2f5-4195-9e87-0780ed8373dc︠
A.transpose()
︡60567c6d-8a8e-4827-9d0c-0cb1b2125be3︡{"stdout":"[1 4 7]\n[2 5 8]\n[3 6 9]\n"}︡
︠e5e19585-b86b-483c-9919-f5b974c705f0i︠
%md
One place that the transpose is useful is in describing the dot product. Check this out:
︡1df8e438-1aa8-46da-84e0-a1b911f49187︡{"html":"<p>One place that the transpose is useful is in describing the dot product. Check this out:</p>\n"}︡
︠36648347-5112-41c5-ac33-febb50ae37d4︠
u = vector([1,2,3])
v = vector([4,5,6])
u.dot_product(v)
︡46f80439-c292-420e-ac1e-a6f87482b9d5︡{"stdout":"32\n"}︡
︠195bf0a4-389f-4859-9631-8752d77436a8︠
U = u.column(); U # This puts the vector u into a column matrix.
︡c8d0dce2-9930-4b59-9bb0-01327255af1e︡{"stdout":"[1]\n[2]\n[3]\n"}︡
︠6588cb69-b4e1-49b4-9da5-eff06b15bd8b︠
U.parent() # here is how you can check what kind of object U is. Ask for its "parent"
︡52086e7e-e1e3-45d2-b956-b53a9067c3dc︡{"stdout":"Full MatrixSpace of 3 by 1 dense matrices over Integer Ring\n"}︡
︠8cd70aa3-a97d-494f-9827-18925e786e2ei︠
%md
See! Sage thinks of $U$ as a matrix with 3 rows and 1 column. That matches how we think of vectors: as columns.

Let's do the same with $V$.
︡a6fa5b52-79b1-45dc-82d5-5a60a810e903︡{"html":"<p>See! Sage thinks of $U$ as a matrix with 3 rows and 1 column. That matches how we think of vectors: as columns.</p>\n\n<p>Let&#8217;s do the same with $V$.</p>\n"}︡
︠edcdfcfa-2a42-43d7-9102-f988dbd74b1e︠
V = v.column()
V; V.parent()
︡3a66fc4a-12c4-4f88-913f-089b20d00d16︡{"stdout":"[4]\n[5]\n[6]\nFull MatrixSpace of 3 by 1 dense matrices over Integer Ring\n"}︡
︠27e7f635-4e7a-4fbd-8857-23ae53be3575i︠
%md
And now Sage thinks of $V$ as matrix with 1 row and 3 columns.
%md
and now for the magic...
︡6adb2284-6e1c-420c-af1c-9e259de12f6a︡{"html":"<p>And now Sage thinks of $V$ as matrix with 1 row and 3 columns.\n%md\nand now for the magic&#8230;</p>\n"}︡
︠016ffb77-ab26-4395-95be-dc0557c2c99e︠
U.transpose()*V
︡c14a82b4-c920-40a8-b7bb-bea90c785d4e︡{"stdout":"[32]\n"}︡
︠bed3abee-fc9a-4e3f-9dfe-fe89ccba9e5c︠
V.transpose()*U
︡5f9629c8-3cfd-4f09-8055-87c41e46f2e3︡{"stdout":"[32]\n"}︡
︠62247d13-a769-4373-9408-5ee24e99fbcfi︠
%md
That is the dot product!

### Other Properties ###

The transpose has other useful properties, Strang lists the big ones, including how the transpose interacts with matrix multiplication and matrix inverses.
︡b9df2d9e-56f4-4351-9e49-4f8392509138︡{"html":"<p>That is the dot product!</p>\n\n<h3>Other Properties</h3>\n\n<p>The transpose has other useful properties, Strang lists the big ones, including how the transpose interacts with matrix multiplication and matrix inverses.</p>\n"}︡
︠9aaf0975-2447-4345-8bf4-f8d0c854032ai︠
%md
### Symmetry ###

A matrix is called _symmetric_ when it is equal to its transpose. Sage has some built-ins for that.
︡59d4ac0d-e818-4031-8ced-6d611042eca1︡{"html":"<h3>Symmetry</h3>\n\n<p>A matrix is called _symmetric_ when it is equal to its transpose. Sage has some built-ins for that.</p>\n"}︡
︠7ca4b9a6-8916-4961-872d-ef25c53dcff5︠
B = M([2,1,0,1,1,0,0,0,1]); B
︡b8c01854-5172-4ef0-8844-b23e13f8a63d︡{"stdout":"[2 1 0]\n[1 1 0]\n[0 0 1]\n"}︡
︠a1609726-dba1-4245-b998-29a70d247924︠
B.transpose()
︡4f17af83-41d1-4f75-9780-4c1804db10a4︡{"stdout":"[2 1 0]\n[1 1 0]\n[0 0 1]\n"}︡
︠2a01ccd1-303c-493c-8681-d432f28767dc︠
B.is_symmetric()
︡77e091af-3fb4-4436-9537-aadf66d8b99a︡{"stdout":"True\n"}︡
︠f2ec9979-7a3e-459d-a8e8-5bfa4fa40615︠
C = M([1,0,1, 1,1,1, 0,0,0]); C
︡0ebc4783-2612-4d87-8e60-c701c9479f09︡{"stdout":"[1 0 1]\n[1 1 1]\n[0 0 0]\n"}︡
︠1d342aa1-65a5-45ed-90d4-452881c0549e︠
C.transpose(); C.is_symmetric()
︡5ce7cee3-3cb1-4c8d-9198-06254139f563︡{"stdout":"[1 1 0]\n[0 1 0]\n[1 1 0]\nFalse\n"}︡
︠fadfa0be-39a3-44ab-b346-175e21e47446i︠
%md
Strang notes a really neat property of symmetric matrices: their LDU decompositions are nicer than average.
︡14db354e-0c75-4aed-9520-c0a9ca9bf070︡{"html":"<p>Strang notes a really neat property of symmetric matrices: their LDU decompositions are nicer than average.</p>\n"}︡
︠497646db-20ed-4143-a6e6-fadb508f2703︠
P, L, U = B.LU(pivot="nonzero")
︡0e388294-1073-4057-a090-c63f5e12d1cd︡
︠b91c4dff-629c-472f-8864-a3c29643524c︠
P # here, things are good, no row swaps are needed.
︡69cb363f-2a93-46e1-8bbf-2248ea8444e7︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡
︠858324b0-8727-47db-8e8c-c0affff31e60︠
L
︡0da050e1-c974-44f3-85e6-973c29b45494︡{"stdout":"[  1   0   0]\n[1/2   1   0]\n[  0   0   1]\n"}︡
︠943422ff-a3f5-42e6-964b-63358816d4ed︠
U
︡0d1f61c8-fdb6-4a4f-acc4-bc049cb9a8d1︡{"stdout":"[  2   1   0]\n[  0 1/2   0]\n[  0   0   1]\n"}︡
︠191ae51b-a8d2-4a18-bac8-663c16719cfc︠
D = M([2,0,0, 0,1/2,0, 0,0,1])
Uprime = D.inverse()*U
Uprime
︡e5b5acd8-f435-4874-8899-95fb04720a3a︡{"stdout":"[  1 1/2   0]\n[  0   1   0]\n[  0   0   1]\n"}︡
︠8972030f-ab71-4079-9ad4-6007e324c50c︠
B == L*D*Uprime
︡fe51a195-f6ab-47c2-a8d5-2948b1a903bb︡{"stdout":"True\n"}︡
︠605ec76a-2474-4756-a633-fb06faab58c2︠
L.transpose() == Uprime # this is the neat part.
︡974f1d59-4dec-4299-9aac-b4e90976ef8a︡{"stdout":"True\n"}︡
︠1bbcb7d3-e945-4ce3-96ce-ec83eabca955i︠
%md
### Permutations and Pivots ###

We have seen that elimination sometimes requires us to perform a row operation of swapping the position of two rows to put a pivot in good place. At first, we want to do this to avoid a zero. But for computational reasons, a machine really likes to have a *big* number as a pivot. So software often uses row swaps even when not strictly needed.

If all we care about is finding the reduced row echelon form (the rref), then this won't worry us. You do whatever operations you want, and the rref is always the same thing. But if we want to keep track with matrices, things get a little complicated.

Here is the important stuff to remember:

1. A row swap is performed by a _permutation matrix_

    A permutation matrix is a matrix with exactly one $1$ in each column and each row. These matrices have the important property that their transposes and their inverses are equal.
    That is, if $P$ is a permutation matrix, then $P^t$ is equal to $P^{-1}$. (Not every matrix with this property is a permutation matrix. be careful.)

2. It is possible to figure out what all of the row swaps should be and then rearrange all of the matrices in an LU decomposition routine. If you do it right, you get:
\[
P'A = LU
\]
or
\[
A = PLU
\]
where $P'$ and $P$ are permutation matrices.

Note: Strang prefers to write things as $P'A = LU$, but Sage writes $A = PLU$. How are these related? $P'$ is the transpose (=inverse) of $P$.

If you haven't figured it out by now, I think that row reduction by hand is really for chumps. Sage (or whatever compuational tool you use) makes it waaaaaay easier.
︡0097e73e-46e8-4798-a9b9-764a3472cf7c︡{"html":"<h3>Permutations and Pivots</h3>\n\n<p>We have seen that elimination sometimes requires us to perform a row operation of swapping the position of two rows to put a pivot in good place. At first, we want to do this to avoid a zero. But for computational reasons, a machine really likes to have a <em>big</em> number as a pivot. So software often uses row swaps even when not strictly needed.</p>\n\n<p>If all we care about is finding the reduced row echelon form (the rref), then this won&#8217;t worry us. You do whatever operations you want, and the rref is always the same thing. But if we want to keep track with matrices, things get a little complicated.</p>\n\n<p>Here is the important stuff to remember:</p>\n\n<ol>\n<li><p>A row swap is performed by a _permutation matrix_</p>\n\n<p>A permutation matrix is a matrix with exactly one $1$ in each column and each row. These matrices have the important property that their transposes and their inverses are equal. \nThat is, if $P$ is a permutation matrix, then $P^t$ is equal to $P^{-1}$. (Not every matrix with this property is a permutation matrix. be careful.)</p></li>\n<li><p>It is possible to figure out what all of the row swaps should be and then rearrange all of the matrices in an LU decomposition routine. If you do it right, you get:\n\\[\nP'A = LU\n\\]\nor\n\\[\nA = PLU\n\\]\nwhere $P'$ and $P$ are permutation matrices.</p></li>\n</ol>\n\n<p>Note: Strang prefers to write things as $P'A = LU$, but Sage writes $A = PLU$. How are these related? $P'$ is the transpose (=inverse) of $P$.</p>\n\n<p>If you haven&#8217;t figured it out by now, I think that row reduction by hand is really for chumps. Sage (or whatever compuational tool you use) makes it waaaaaay easier.</p>\n"}︡
︠43b30cfb-3fbb-40b5-871d-4e2811e1e169︠
P, L, U = A.LU() # this will compute the PLU decomposition with 'partial pivoting' -- where we get "big pivots"
P; L; U
︡6558b972-2c56-4f2c-b16d-9d26a9da896b︡{"stdout":"[0 1 0]\n[0 0 1]\n[1 0 0]\n[  1   0   0]\n[1/7   1   0]\n[4/7 1/2   1]\n[   7    8    9]\n[   0  6/7 12/7]\n[   0    0    0]\n"}︡
︠a76ec06d-b920-4f94-935e-1e0be8d9bec1︠
P*L*U
︡792da11c-0593-4f7f-8997-92712f4378e9︡{"stdout":"[1 2 3]\n[4 5 6]\n[7 8 9]\n"}︡
︠4e878cef-7074-4b33-a273-5fa49b7c8203︠
A == P*L*U
︡11d218e4-9e6f-4aee-bc4a-3876dec26aea︡{"stdout":"True\n"}︡
︠6f46c007-5de6-4e4a-b425-9ecb1f576d9c︠
P.transpose()*A == L*U
︡7d8a28ec-840d-4272-a7e5-86fda7d699b4︡{"stdout":"True\n"}︡
︠eeb2f45e-73cd-4ae6-9873-bd67dad45ce2︠
P.transpose()*A
︡28893608-f6b5-4cdf-b58e-8bf6806c90ef︡{"stdout":"[7 8 9]\n[1 2 3]\n[4 5 6]\n"}︡
︠cbb84841-28bb-4a9f-9ee7-00a5e8404004︠









