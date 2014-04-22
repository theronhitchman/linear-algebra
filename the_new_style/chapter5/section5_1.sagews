︠61bd6204-db8f-4065-a03f-a12ba2ef0591i︠
%md
# Chapter 5: The Determinant

Sage has a built-in method on matrices which will compute the determinant. It is just as you would expect: <code>A.determinant()</code>.
︡278cfdd3-a87c-4a1d-b1a0-5182e265a4ed︡{"html":"<h1>Chapter 5: The Determinant</h1>\n\n<p>Sage has a built-in method on matrices which will compute the determinant. It is just as you would expect: <code>A.determinant()</code>.</p>\n"}︡
︠5e728346-053f-4aab-8d59-6d9b20029d25︠
A = matrix(QQ, 3,3, [4,3,5, 2,-1,0, -5,2,10]); A
︡cb7df26d-0a22-409c-85f8-feefd88d7c4e︡{"stdout":"[ 4  3  5]\n[ 2 -1  0]\n[-5  2 10]\n"}︡
︠60573e75-b652-4092-bc87-1379f439acca︠
A.determinant()
︡e8ae1811-c89c-46a8-8862-365259c694d1︡{"stdout":"-105\n"}︡
︠3b3c5451-f403-4c93-8535-482f2e48c664i︠
%md
To be sure that we understand this properly, we can do it the old-fashioned way...
︡daade1e3-4e80-41f6-84d6-0c95dffa8b3e︡{"html":"<p>To be sure that we understand this properly, we can do it the old-fashioned way&#8230;</p>\n"}︡
︠965c98eb-1975-4e11-8ebe-4575f4f1b0f8︠
P, L, U = A.LU(pivot="nonzero")
︡1eb9e15a-9072-41c2-ad12-fa26f0c4a235︡
︠1ac5ee8a-a623-4e14-ad6d-5cb820d62d99︠
P
︡89b1a89a-a0ab-4c3b-8660-08781e6d8a6b︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡
︠420db8bd-695e-4327-9e2e-7fd1ed5ab2c8︠
L
︡14ccbbad-b168-4d1d-8220-b762b844e912︡{"stdout":"[     1      0      0]\n[   1/2      1      0]\n[  -5/4 -23/10      1]\n"}︡
︠843ad5a9-9976-428b-9af3-74c461bcf887︠
U
︡443edd73-78c7-43bb-9879-40e8576a9ad1︡{"stdout":"[   4    3    5]\n[   0 -5/2 -5/2]\n[   0    0 21/2]\n"}︡
︠ed200e5b-7eef-44d6-96c8-10e34efe34f0i︠
%md
Notice that no row swaps were required, so $P$ is the identity. And as usual, $L$ is lower triangular with 1's on the diagonal.
The important part is the diagonal of $U$.
︡2b554a3c-7744-4a8e-8118-f07073a83542︡{"html":"<p>Notice that no row swaps were required, so $P$ is the identity. And as usual, $L$ is lower triangular with 1&#8217;s on the diagonal. \nThe important part is the diagonal of $U$.</p>\n"}︡
︠aefd7156-5cbe-497a-835a-a907dd09b5fc︠
my_det = prod([U[k][k] for k in range(3)]); my_det # this pulls out the diagonal entries of U, puts them in a list, and then takes the product of the elements of that list.
︡086c4ac7-d612-4a68-9c22-b246c18bf422︡{"stdout":"-105\n"}︡
︠e5e74a83-92d9-44c3-85d6-d168aa0fce7ai︠
%latex
YAY!
︡55fb3c6a-f5d5-47fe-a180-5a6e539c327d︡{"once":false,"file":{"show":true,"uuid":"50e918ef-122e-4779-9b1c-3bacb1c00093","filename":"/tmp/tmpnsophL.png"}}︡
︠6193ddfe-9ba0-4ad8-bae5-386c43c04094︠









