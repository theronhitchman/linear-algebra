︠5af2a788-5b7d-4295-a9e9-e9c0c95345adi︠
%latex

\begin{center} \Large Section 4.1 Orthogonality of the Four Subspaces
\end{center}

The four main subspaces associated to a matrix:
\begin{itemize}
\item the nullspace
\item the column space
\item the row space
\item the left nullspace
\end{itemize}
make up two pairs of complementary subspaces. The nullspace and the row space are in the domain. The column space and the leftnullspace are in the target.

It is not hard to find the four subspaces with Sage's built-in linear algebra commands. But Sage also has a general purpose "complement" command which can be used.
︡bcdb5df4-2cfb-4543-b75e-9d83a310e3d3︡{"once":false,"file":{"show":true,"uuid":"7f364eb4-482c-434f-ba1e-4d1c34e3237f","filename":"/tmp/tmp2GGVis.png"}}︡
︠68756a78-c06e-41c1-829c-d360e48c819d︠
A = matrix(QQ,3,2, [12,3,4,5,6,7]); A
︡ecfc9bde-4235-4d21-b8cf-681cd992c977︡{"stdout":"[12  3]\n[ 4  5]\n[ 6  7]"}︡{"stdout":"\n"}︡
︠68dd74eb-b897-46a0-9cbd-2a1116ff9c28︠
A.right_kernel() # the nullspace
︡cf23c86f-779c-447b-8067-a60cc570d711︡{"stdout":"Vector space of degree 2 and dimension 0 over Rational Field\nBasis matrix:\n[]"}︡{"stdout":"\n"}︡
︠2a2375b9-c985-40ff-96bb-3f9075670df9︠
A.column_space()
︡d590b5ce-6dee-4d5e-9404-cb57efe56bd3︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[   1    0 1/24]\n[   0    1 11/8]"}︡{"stdout":"\n"}︡
︠8119b7b0-4de7-4d7c-a937-baa773596ac8︠
A.row_space()
︡5340d6a0-48a0-44ca-a075-366effb02301︡{"stdout":"Vector space of degree 2 and dimension 2 over Rational Field\nBasis matrix:\n[1 0]\n[0 1]\n"}︡
︠1519e8f0-868d-4ef5-8744-d53885e3774ai︠
%latex
Those are the 'easy' ones to find. The left nullspace is just a touch trickier. What is the deal? It is just the null space of the transpose!
Of course, by our theorem, it is also the orthogonal complement of the column space. Let's see if they all match.
︡73a7e9e2-e6dc-4053-8484-8ed51fe319f4︡{"once":false,"file":{"show":true,"uuid":"7452f6bf-758a-460e-b468-b370c8c122de","filename":"/tmp/tmpcbcyqu.png"}}︡
︠71393a34-3c90-4a6b-a2b6-8d7d23570bf1︠
A.column_space().complement() # this will be the left nullspace!
︡898b55fa-ee29-4621-80e5-551a79d4a660︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[  1  33 -24]\n"}︡
︠73f390a7-9761-472f-b4de-f9700df52eb2︠
A.transpose().right_kernel() # this should also be the left nullspace
︡bad71b95-d1bc-4ec0-a23a-b398fa3030ca︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[  1  33 -24]\n"}︡
︠198b2744-1b1d-4c07-a085-7a7bcb5718de︠
A.left_kernel() # this should also, also be the left null space
︡c42957b7-5c0d-41f5-bb39-ad87202620ac︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[  1  33 -24]\n"}︡
︠e7aef9a9-c16e-4ea3-9f20-65b9782c3221︠









