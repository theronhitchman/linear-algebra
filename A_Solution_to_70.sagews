︠57aaf0d5-7c89-4559-b9c3-04a2719ef1f4i︠
%md
## Exercise 70 ##
The matrix below is symmetric because if you flip it across the main diagonal you get the same thing. Find the LU decomposition of this matrix.
\[
D =
\begin{pmatrix}
a & a & a & a \\
a & b & b & b \\
a & b & c & c \\
a & b & c & d
\end{pmatrix}
\]
︡fe8c8eef-5fe5-4058-99c1-3534c58013b8︡{"html":"<h2>Exercise 70</h2>\n\n<p>The matrix below is symmetric because if you flip it across the main diagonal you get the same thing. Find the LU decomposition of this matrix.\n\\[\nD = \n\\begin{pmatrix}\na & a & a & a \\\\\na & b & b & b \\\\\na & b & c & c \\\\\na & b & c & d \n\\end{pmatrix}\n\\]</p>\n"}︡
︠9a084244-5a57-42c1-9cd3-f7ce3845a508︠
a, b, c, d = var('a b c d') # declare variables to sage. this way it knows to treat these as symbolic objects
D = matrix(SR, 4,4, [a,a,a,a, a,b,b,b, a,b,c,c, a,b,c,d]); D # we use SR to denote the symbolic ring. this is the place that Sage thinks the variables live.
︡efa6f9b3-1db8-4a15-a63e-64e92f168b02︡{"stdout":"[a a a a]\n[a b b b]\n[a b c c]\n[a b c d]\n"}︡
︠1c221e9d-3e13-48e7-be87-ad69cd498b53︠
A = copy(D)
︡6890df0c-f8b3-4389-8c18-96513697bdb8︡
︠25b2ba45-40e5-4e7d-8c8e-9d056e7c5083︠
E = A.augment(matrix.identity(SR,4)); E
︡c48b1cff-9976-45c4-98e5-e3b8af96a14d︡{"stdout":"[a a a a 1 0 0 0]\n[a b b b 0 1 0 0]\n[a b c c 0 0 1 0]\n[a b c d 0 0 0 1]\n"}︡
︠0fafcb1e-84b3-4ca8-875d-96ea96eaa0f1︠
E.add_multiple_of_row(1,0,-1); E
︡d25c3643-aca1-4eed-ab3f-601254d91e73︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     a      b      c      c      0      0      1      0]\n[     a      b      c      d      0      0      0      1]\n"}︡
︠0011b110-b035-48ef-8b35-aa3803e0a68c︠
E.add_multiple_of_row(2,0,-1); E
︡123faa25-5cdd-473f-8179-a7720e481405︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     0 -a + b -a + c -a + c     -1      0      1      0]\n[     a      b      c      d      0      0      0      1]\n"}︡
︠76d1a75b-0a05-44cd-8af6-d71d72458b64︠
E.add_multiple_of_row(3,0,-1); E
︡72961760-7254-405e-b3c4-6e5c99f34855︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     0 -a + b -a + c -a + c     -1      0      1      0]\n[     0 -a + b -a + c -a + d     -1      0      0      1]\n"}︡
︠2a3cf016-9fc0-4135-8f79-2365cfeb5454︠
E.add_multiple_of_row(2,1,-1); E
︡ca6bc891-d654-4076-a58a-257d73b38f50︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     0      0 -b + c -b + c      0     -1      1      0]\n[     0 -a + b -a + c -a + d     -1      0      0      1]\n"}︡
︠4190efc0-3e97-4062-85c5-a1967474d085︠
E.add_multiple_of_row(3,1,-1)
︡d57d4b8c-f92e-4661-a9de-23a40dbb5927︡
︠b0f71460-e1d5-4ae2-82a0-dfca4f195f62︠
E
︡89abba9e-d752-46ca-bc5d-c996b6ee4d67︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     0      0 -b + c -b + c      0     -1      1      0]\n[     0      0 -b + c -b + d      0     -1      0      1]\n"}︡
︠16f318d8-b65a-446d-ba3f-263f02a25bea︠
E.add_multiple_of_row(3,2,-1); E
︡1551ed1d-4352-4c6f-b0b2-eb5732ef6ad6︡{"stdout":"[     a      a      a      a      1      0      0      0]\n[     0 -a + b -a + b -a + b     -1      1      0      0]\n[     0      0 -b + c -b + c      0     -1      1      0]\n[     0      0      0 -c + d      0      0     -1      1]\n"}︡
︠dc95e459-e86e-4ed7-af0a-5babed808c7ci︠
%md
This is now far enough to have the LU decomposition.
︡4a251e36-5487-44b4-bf48-305b1cacd5db︡{"html":"<p>This is now far enough to have the LU decomposition.</p>\n"}︡
︠119e775e-aedd-495d-8e97-64e0c50f1719︠
U = E.matrix_from_columns([0,1,2,3])
X = E.matrix_from_columns([4,5,6,7])
L = X.inverse()
L; U
︡7c0acf67-63f1-4fa2-8d55-89b92bfa1dd1︡{"stdout":"[1 0 0 0]\n[1 1 0 0]\n[1 1 1 0]\n[1 1 1 1]\n[     a      a      a      a]\n[     0 -a + b -a + b -a + b]\n[     0      0 -b + c -b + c]\n[     0      0      0 -c + d]\n"}︡
︠2ad9d958-6079-45a7-940c-66f308f0cf9f︠
# that looks ugly. let's make it look nicer
show(U)
︡564b3a7e-742d-4758-933d-1be4b78a6cb0︡{"tex":{"tex":"\\left(\\begin{array}{rrrr}\na & a & a & a \\\\\n0 & -a + b & -a + b & -a + b \\\\\n0 & 0 & -b + c & -b + c \\\\\n0 & 0 & 0 & -c + d\n\\end{array}\\right)","display":true}}︡
︠bcfe0fda-a35c-4811-ac42-beb100b912a7︠
L*U ; L*U == D #check your work
︡35ae46a0-1d55-4bcd-b09c-06bcc9207928︡{"stdout":"[a a a a]\n[a b b b]\n[a b c c]\n[a b c d]\nTrue\n"}︡
︠2dc25771-78de-4d46-bc2b-9fe3e6fbb25d︠









