︠b30ad8c7-c6f7-4979-a8c5-9f40cfe4f850i︠
%md
## Exercise 62:##
Use Gauss-Jordan elimination to find the inverse of the matrix $B$ below.
\[
B =
\begin{pmatrix}
0 & 3 & 4 & -1 \\
0 & 1 & 6 & 1 \\
2 & 0 & 3 & -1 \\
5 & -1 & 1 & 3
\end{pmatrix}
\]
Be sure to clearly write down the operations you use and the matrices which perform the operations by left multiplication.
︡0e771741-4d38-4c73-9037-5964554590a2︡{"html":"<h2>Exercise 62:</h2>\n\n<p>Use Gauss-Jordan elimination to find the inverse of the matrix $B$ below.\n\\[\nB = \n\\begin{pmatrix} \n0 & 3 & 4 & -1 \\\\ \n0 & 1 & 6 & 1 \\\\ \n2 & 0 & 3 & -1 \\\\ \n5 & -1 & 1 & 3\n\\end{pmatrix}\n\\]\nBe sure to clearly write down the operations you use and the matrices which perform the operations by left multiplication.</p>\n"}︡
︠16b298cd-1cce-4a15-8c3d-0e99e14c2431i︠
%md
A step-by-step solution using Sage.
︡16c590c0-96f7-4e1a-983f-565959987d9c︡{"html":"<p>A step-by-step solution using Sage.</p>\n"}︡
︠fae71172-a72c-44d3-bac0-ea7d28aa2309︠
B = matrix(QQ, 4,4, [[0,3,4,-1], [0,1,6,1], [2,0,3,-1], [5,-1,1,3]]); B # define the matrix
︡75d86265-ae19-4c32-bfa1-c50160c808eb︡{"stdout":"[ 0  3  4 -1]\n[ 0  1  6  1]\n[ 2  0  3 -1]\n[ 5 -1  1  3]\n"}︡
︠e0c51203-78ca-425c-8931-26b13da88518︠
Baug = B.augment(matrix.identity(4)); Baug # augment it and display it.
︡dfbd67fd-15d7-4bda-960e-5654bae8783b︡{"stdout":"[ 0  3  4 -1  1  0  0  0]\n[ 0  1  6  1  0  1  0  0]\n[ 2  0  3 -1  0  0  1  0]\n[ 5 -1  1  3  0  0  0  1]\n"}︡
︠794812a2-2b14-409f-8d14-17cbc7d6b672︠
C = copy(Baug); C # let's make a copy of Baug, so we can play with it, but leave B and Baug alone
︡c66b33bc-989a-4257-942b-224a00d42258︡{"stdout":"[ 0  3  4 -1  1  0  0  0]\n[ 0  1  6  1  0  1  0  0]\n[ 2  0  3 -1  0  0  1  0]\n[ 5 -1  1  3  0  0  0  1]\n"}︡
︠de29db15-1325-4adf-b40c-74d80139e647︠
C.swap_rows(0,2); C # swap rows 1 and 3
︡01f59c99-5e35-4609-b690-7498d74f71b3︡{"stdout":"[ 2  0  3 -1  0  0  1  0]\n[ 0  1  6  1  0  1  0  0]\n[ 0  3  4 -1  1  0  0  0]\n[ 5 -1  1  3  0  0  0  1]\n"}︡
︠ac2ed1ee-d523-4edd-b999-7e095e1b9dad︠
E1 = matrix.identity(4); E1.swap_rows(0,2); E1 # this is the matrix that does the row swap if we left multiply
︡55b559f1-9bd8-4b2d-8507-a85091630dab︡{"stdout":"[0 0 1 0]\n[0 1 0 0]\n[1 0 0 0]\n[0 0 0 1]\n"}︡
︠262ef001-49b2-4e7b-b764-e468a3eb2336︠
C.add_multiple_of_row(3,0,-5/2); C # add -5/2 times row 1 to row 4
︡ae48c8e9-509e-42db-8c9c-39254d76048d︡{"stdout":"[    2     0     3    -1     0     0     1     0]\n[    0     1     6     1     0     1     0     0]\n[    0     3     4    -1     1     0     0     0]\n[    0    -1 -13/2  11/2     0     0  -5/2     1]\n"}︡
︠497dcfde-d9c3-4cff-9ac1-e406d6d80d24︠
E2 = matrix.identity(QQ, 4); E2[3,0] = -5/2; E2 # this is the matrix that does the elimination step
︡c2f11746-c8b3-4b81-8a43-4ea559e12153︡{"stdout":"[   1    0    0    0]\n[   0    1    0    0]\n[   0    0    1    0]\n[-5/2    0    0    1]\n"}︡
︠6e11857e-b37e-4170-a13c-73900536e748︠
C.add_multiple_of_row(2,1,-3); C # add -3 times row 2 to row 3
︡ba17888d-3786-436f-b2b5-c9029fdb172d︡{"stdout":"[    2     0     3    -1     0     0     1     0]\n[    0     1     6     1     0     1     0     0]\n[    0     0   -14    -4     1    -3     0     0]\n[    0    -1 -13/2  11/2     0     0  -5/2     1]\n"}︡
︠31834d50-cad9-4f7e-b9bc-c55787b8e925︠
E3 = matrix.identity(QQ, 4); E3[2,1] = -3; E3 # this is the matrix that does that elimination step
︡f0ca5a0f-1a2a-48ad-9e26-6f33ebb91bd8︡{"stdout":"[ 1  0  0  0]\n[ 0  1  0  0]\n[ 0 -3  1  0]\n[ 0  0  0  1]\n"}︡
︠74e65b0f-820e-4f1a-a47a-5bf250c1146a︠
C.add_multiple_of_row(3,1,1); C # add 1 times row 2 to row 4
︡d8417e46-391c-4245-9994-11f1ad7552e5︡{"stdout":"[   2    0    3   -1    0    0    1    0]\n[   0    1    6    1    0    1    0    0]\n[   0    0  -14   -4    1   -3    0    0]\n[   0    0 -1/2 13/2    0    1 -5/2    1]\n"}︡
︠656af115-df72-4fb9-a7b6-afcb14628ce7︠
E4 = matrix.identity(QQ, 4); E4[3,1] = 1; E4 # this is the matrix that does that elimination step
︡effd48cf-5700-43fd-9d6b-0e30f301a875︡{"stdout":"[1 0 0 0]\n[0 1 0 0]\n[0 0 1 0]\n[0 1 0 1]\n"}︡
︠ace607ba-cc98-4d7b-aa36-04d04d1cde12︠
C.add_multiple_of_row(3,2,-1/28); C # add -1/28 times row 3 to row 4
︡3ce90452-3c29-487d-af28-505613a735c0︡{"stdout":"[    2     0     3    -1     0     0     1     0]\n[    0     1     6     1     0     1     0     0]\n[    0     0   -14    -4     1    -3     0     0]\n[    0     0     0 93/14 -1/28 31/28  -5/2     1]\n"}︡
︠0221b6ed-8333-49ad-9084-e8e121675f7b︠
E5 = matrix.identity(QQ,4); E5[3,2] = -1/28; E5 # this is the matrix that does that elimination step
︡cde100f6-ac9e-4080-a0b7-7d520a4946d1︡{"stdout":"[    1     0     0     0]\n[    0     1     0     0]\n[    0     0     1     0]\n[    0     0 -1/28     1]\n"}︡
︠a0095ce3-a501-4bc0-9cf7-cc04409cfe84i︠
%md

## A detour ##
Note that at this point we have made the original matrix upper triangular. Because this is enough to have computed a PLU decomposition, let's pause and see what we get for that. We'll finish the Gauss-Jordan elimination process later.
︡436facc6-489f-4bba-8ab1-e328c977173b︡{"html":"<h2>A detour</h2>\n\n<p>Note that at this point we have made the original matrix upper triangular. Because this is enough to have computed a PLU decomposition, let&#8217;s pause and see what we get for that. We&#8217;ll finish the Gauss-Jordan elimination process later.</p>\n"}︡
︠367151f4-b5d4-42f5-892c-e07443002f4f︠
elim = E5*E4*E3*E2*E1; elim # this should be our lower triangular guy
︡725b7b3e-cbaf-408b-960f-928c44b8fb43︡{"stdout":"[    0     0     1     0]\n[    0     1     0     0]\n[    1    -3     0     0]\n[-1/28 31/28  -5/2     1]\n"}︡
︠f5f7e04c-daa1-40a7-86a8-448774f1efcbi︠
%md
What happened? Well, we used a row swap. E1 is a row swap! That will become part of a permutation matrix.
︡e91993bf-d661-498f-8093-d2fb6de1784f︡{"html":"<p>What happened? Well, we used a row swap. E1 is a row swap! That will become part of a permutation matrix.</p>\n"}︡
︠d0207d57-622e-4eb0-8848-5b4ecb8d6f2b︠
Lprime = E5*E4*E3*E2; Lprime
︡348bcf94-8cf7-44f8-80f2-913630bd994a︡{"stdout":"[    1     0     0     0]\n[    0     1     0     0]\n[    0    -3     1     0]\n[ -5/2 31/28 -1/28     1]\n"}︡
︠81654adf-a50c-4dd4-8ec9-90d5cc269f2f︠
P = E1.transpose(); P
︡758c5aa5-223e-495a-8fb2-a5a24dbfec14︡{"stdout":"[0 0 1 0]\n[0 1 0 0]\n[1 0 0 0]\n[0 0 0 1]\n"}︡
︠b8d24499-5d42-4c74-baa8-6926f2da4de9︠
L = Lprime.inverse(); L # this is the lower triangular matrix we really need.
︡ed945938-5fb4-4793-924e-c24160431546︡{"stdout":"[   1    0    0    0]\n[   0    1    0    0]\n[   0    3    1    0]\n[ 5/2   -1 1/28    1]\n"}︡
︠d42caeba-264c-4cef-bf72-bdd07bbadc6e︠
U = C.matrix_from_columns([0,1,2,3]); U
︡9ba2f49e-edca-4efd-b1e5-5c0a47d40add︡{"stdout":"[    2     0     3    -1]\n[    0     1     6     1]\n[    0     0   -14    -4]\n[    0     0     0 93/14]\n"}︡
︠b214c23d-3a24-4f05-8506-07ef42b95076︠
# of course, we could just let Sage handle it:

P, L, U = B.LU(pivot='nonzero')
︡03ffa372-1e35-4e3b-a589-ed3d14bf212b︡
︠70877132-9fc8-4a00-954c-ffacd2fb2194︠
P
︡5246110f-63ed-4e9c-9c73-2f5beeb9b891︡{"stdout":"[0 0 1 0]\n[0 1 0 0]\n[1 0 0 0]\n[0 0 0 1]\n"}︡
︠5af8a97e-0a2b-43f5-8457-9c1fe976494d︠
L
︡70bbd803-b4a1-4135-8a7d-75d996b49e59︡{"stdout":"[   1    0    0    0]\n[   0    1    0    0]\n[   0    3    1    0]\n[ 5/2   -1 1/28    1]\n"}︡
︠30572fbd-5012-4d19-b0ee-98ba4ee7d5af︠
U
︡16638246-375d-411e-926e-c045be1121f9︡{"stdout":"[    2     0     3    -1]\n[    0     1     6     1]\n[    0     0   -14    -4]\n[    0     0     0 93/14]\n"}︡
︠dc127d7e-e9e6-42ba-bdf8-160a39fec112︠
P*L*U == B # check the decomposition
︡daaa570e-5454-4f39-8206-24c87fd2d54a︡{"stdout":"True\n"}︡
︠d5defc82-1871-46bc-8298-d09ec3756262i︠
%md

## back to the program... ##
Let's now finish the process of Gauss-Jordan Elimination.
︡861979e0-50fd-4ab4-bf63-b71526205673︡{"html":"<h2>back to the program&#8230;</h2>\n\n<p>Let&#8217;s now finish the process of Gauss-Jordan Elimination.</p>\n"}︡
︠8307c8be-8a7e-497e-b822-1d88eca85b22︠
C
︡741cb891-d7d8-423b-a633-13323c91779b︡{"stdout":"[    2     0     3    -1     0     0     1     0]\n[    0     1     6     1     0     1     0     0]\n[    0     0   -14    -4     1    -3     0     0]\n[    0     0     0 93/14 -1/28 31/28  -5/2     1]\n"}︡
︠b8d26c41-3a8a-4670-801e-1fd680bcffd1︠
C.add_multiple_of_row(2,3,56/93); C  # we start the backward pass. I will no longer list the matrices that make this work...
︡fe390e20-3efa-4086-9050-4afd85840fb7︡{"stdout":"[      2       0       3      -1       0       0       1       0]\n[      0       1       6       1       0       1       0       0]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠1cc53609-e471-4b0f-b4bf-65d783ac0889︠
C.add_multiple_of_row(1,3, -14/93); C
︡a708c7f8-ad7e-49eb-914f-ab16696757f1︡{"stdout":"[      2       0       3      -1       0       0       1       0]\n[      0       1       6       0   1/186     5/6   35/93  -14/93]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠1ea70691-c175-4919-b980-876bd81c15d9︠
C.add_multiple_of_row(0,3,14/93); C
︡dce0009c-f2c7-4c91-b058-0ef8c51939a7︡{"stdout":"[      2       0       3       0  -1/186     1/6   58/93   14/93]\n[      0       1       6       0   1/186     5/6   35/93  -14/93]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠2885b3d4-ae56-40c0-bf83-5094195b8338︠
C.add_multiple_of_row(1,2,3/7); C
︡5b4b9b6c-e893-4acd-bcf1-25c69481b2bf︡{"stdout":"[      2       0       3       0  -1/186     1/6   58/93   14/93]\n[      0       1       0       0  79/186    -1/6  -25/93   10/93]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠02004780-ef2d-4f07-95a3-3c03a88b816b︠
C.add_multiple_of_row(0,2,3/14); C
︡9ed8133b-9b60-4c9a-83e0-9f65f355e54b︡{"stdout":"[      2       0       0       0   19/93    -1/3   28/93   26/93]\n[      0       1       0       0  79/186    -1/6  -25/93   10/93]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠cc3cef68-8e68-4f4a-a357-45e0fc2c716ei︠
%md
That is the backward pass portion. What remains is to rescale the rows.
︡5088591a-3440-4874-9767-6b11f3b65783︡{"html":"<p>That is the backward pass portion. What remains is to rescale the rows.</p>\n"}︡
︠44b38542-2571-4a05-bbf7-7359506c3799︠
C.rescale_row(0,1/2); C
︡46bbfbf6-0cfe-42a6-9deb-c630be1f9f84︡{"stdout":"[      1       0       0       0  19/186    -1/6   14/93   13/93]\n[      0       1       0       0  79/186    -1/6  -25/93   10/93]\n[      0       0     -14       0   91/93    -7/3 -140/93   56/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠a899f871-1973-4b90-a002-9e1973e04d7a︠
C.rescale_row(2,-1/14); C
︡897e2a67-f251-442d-96d2-b35fc1a143c6︡{"stdout":"[      1       0       0       0  19/186    -1/6   14/93   13/93]\n[      0       1       0       0  79/186    -1/6  -25/93   10/93]\n[      0       0       1       0 -13/186     1/6   10/93   -4/93]\n[      0       0       0   93/14   -1/28   31/28    -5/2       1]\n"}︡
︠c062d6c8-aa2c-41ad-8f6f-d25852312857︠
C.rescale_row(3, 14/93); C
︡1fba41cb-7412-42a8-8174-4f71db6033b1︡{"stdout":"[      1       0       0       0  19/186    -1/6   14/93   13/93]\n[      0       1       0       0  79/186    -1/6  -25/93   10/93]\n[      0       0       1       0 -13/186     1/6   10/93   -4/93]\n[      0       0       0       1  -1/186     1/6  -35/93   14/93]\n"}︡
︠752d7862-8de2-45b4-b4f1-8b59f47e6c56i︠
%md
And now we just need to read out the inverse.
︡58f11762-474a-4c05-9e40-fc4ff9078810︡{"html":"<p>And now we just need to read out the inverse.</p>\n"}︡
︠dc6d2cac-b0cf-46b3-beda-75a7fbab8447︠
X = C.matrix_from_columns([4,5,6,7]); X # this is the inverse of B
︡9e2d584f-3e0d-41a5-bbad-626bb910720c︡{"stdout":"[ 19/186    -1/6   14/93   13/93]\n[ 79/186    -1/6  -25/93   10/93]\n[-13/186     1/6   10/93   -4/93]\n[ -1/186     1/6  -35/93   14/93]\n"}︡
︠2344df07-dd3d-4cdf-b26f-5467292f7353i︠
%md
Let's check our work with Sage built-in commands
︡450b750e-b4b9-4304-b105-d4c244a067c4︡{"html":"<p>Let&#8217;s check our work with Sage built-in commands</p>\n"}︡
︠b90bb3e6-d861-4dbf-a513-5820bf0aa05c︠
B.inverse()
︡e2273dae-51e5-40c4-b96f-b03a5a7a5518︡{"stdout":"[ 19/186    -1/6   14/93   13/93]\n[ 79/186    -1/6  -25/93   10/93]\n[-13/186     1/6   10/93   -4/93]\n[ -1/186     1/6  -35/93   14/93]\n"}︡
︠e91bbc0e-3cc2-4505-a76e-5573b286c259︠
X*B
︡7be1edd4-0015-43c4-9587-a582940c40a9︡{"stdout":"[1 0 0 0]\n[0 1 0 0]\n[0 0 1 0]\n[0 0 0 1]\n"}︡
︠8571e396-5671-46a6-93c9-c7176fa6e042︠
B*X
︡8f4dac70-1543-4be6-b475-10231b1a74bf︡{"stdout":"[1 0 0 0]\n[0 1 0 0]\n[0 0 1 0]\n[0 0 0 1]\n"}︡
︠41a2172c-1b9d-40f4-a48f-fa8f9a8bdb4b︠









