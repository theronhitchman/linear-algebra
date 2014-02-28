︠c610f3db-012b-4964-a860-2e7b2bd4942di︠
%md
# Section 2.6: The LU and LDU Decompositions #

A neat feature of linear algebra is that simple facts about solving equations have several different incarnations. This section contains the first big example:
<quote>Gaussian Elimination leads to a multiplicative decomposition for matrices</quote>

There are three big points here, all highlighted in <i>Strang</i>

+ Each of the elementary row operation matrics $E_{ij}$ used to perform "add multiple of row $i$ to row $j$" is invertible with an easy to compute inverse.
+ The forward pass of elimination finds a sequence of these so that
\[ (E_k E_{k-1} \dots E_2 E_1) A = U \]
where $U$ is upper triangular. If we left multiply by the inverses in the proper order, we find
\[ A = (E_1^{-1}\dots E_k^{-1}) U = L U \]
where $L = E_1^{-1}\dots E_k^{-1}$ is lower triangular.
+ If we do the process in the right order, then $L$ is really easy to write down. We don't have to compute it, we can just write it down.
︡00804e01-cb11-4d97-a7bd-b3a3b37868e4︡{"html":"<h1>Section 2.6: The LU and LDU Decompositions</h1>\n\n<p>A neat feature of linear algebra is that simple facts about solving equations have several different incarnations. This section contains the first big example:\n<quote>Gaussian Elimination leads to a multiplicative decomposition for matrices</quote></p>\n\n<p>There are three big points here, all highlighted in <i>Strang</i></p>\n\n<ul>\n<li>Each of the elementary row operation matrics $E_{ij}$ used to perform &#8220;add multiple of row $i$ to row $j$&#8221; is invertible with an easy to compute inverse.</li>\n<li>The forward pass of elimination finds a sequence of these so that\n\\[ (E_k E_{k-1} \\dots E_2 E_1) A = U \\]\nwhere $U$ is upper triangular. If we left multiply by the inverses in the proper order, we find\n\\[ A = (E_1^{-1}\\dots E_k^{-1}) U = L U \\]\nwhere $L = E_1^{-1}\\dots E_k^{-1}$ is lower triangular.</li>\n<li>If we do the process in the right order, then $L$ is really easy to write down. We don&#8217;t have to compute it, we can just write it down.</li>\n</ul>\n"}︡
︠f140f781-1a30-40f8-b535-41d7d88ccbbdi︠

%md
First, let's recall how Sage can help us check some of those claims:
︡a19f93a4-9ccc-47ef-9801-bf5e89dd7070︡{"html":"<p>First, let&#8217;s recall how Sage can help us check some of those claims:</p>\n"}︡
︠5eb91f59-243f-45c8-abe2-55b0d2c85774︠
M = MatrixSpace(QQ,3,3)
︡56e25e1f-689d-4e3c-9ca7-be584f41dc68︡
︠0e844d89-1ed7-473c-9231-828575eb706a︠
One = M(1); One
︡2192d738-c431-48a9-bfbb-90c39458ae32︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡
︠9bacb998-03f5-4eec-9bd4-8d25d859903e︠
E = One.with_added_multiple_of_row(2,1,-4); E  # this creates a matrix which adds -4 times row 2 to row 3.
︡cd53cdfe-1cf6-449c-805c-4eda1d7911ed︡{"stdout":"[ 1  0  0]\n[ 0  1  0]\n[ 0 -4  1]\n"}︡
︠86d6c776-c9cb-4db2-9906-b79d97fd3418︠
E.is_invertible()
︡2a37a675-5ba0-49af-964d-c66c9b381c14︡{"stdout":"True\n"}︡
︠208633d4-c3d6-411e-8634-0178d01eb5ad︠
E.inverse()
︡09b63aa8-5643-4f0d-9bd0-42273309d270︡{"stdout":"[1 0 0]\n[0 1 0]\n[0 4 1]\n"}︡
︠e8069b1a-248c-4491-97e2-0fc3979cd650i︠
%md
Note that the inverse just came from changing the sign of that one entry.
This makes sense for the following reason: the opposite operation to "add -4 times row 2 to row 3" should be "add 4 times row 2 to row 3."
That is the way you undo the operation!
︡1a67263f-d0ef-42e5-a43c-1c0f2aed9d9f︡{"html":"<p>Note that the inverse just came from changing the sign of that one entry.\nThis makes sense for the following reason: the opposite operation to &#8220;add -4 times row 2 to row 3&#8221; should be &#8220;add 4 times row 2 to row 3.&#8221;\nThat is the way you undo the operation!</p>\n"}︡
︠16e83831-4a34-4846-bdf4-94418cc10552i︠

%md
## Study Break: Try it yourself ##
maybe now is a good time to make your own $3\times 3$ matrix and check the whole procedure...
︡51537e62-d253-4ae5-afef-6530e8499f34︡{"html":"<h2>Study Break: Try it yourself</h2>\n\n<p>maybe now is a good time to make your own $3\\times 3$ matrix and check the whole procedure&#8230;</p>\n"}︡
︠05d577ec-18a5-4b0c-9a25-8df4f3df8fee︠

︠cc3db2cd-de5f-4be5-960b-8c38c18b86f8︠

︠28c3e8d4-5c26-4c97-ac43-79d4fc3fbb89i︠
%md
## Sage Commands to short-cut the process ##

Here is the basic command for getting Sage to compute the LU decomposition directly.
︡0a0429d1-b762-4b85-a334-98ee711afa5d︡{"html":"<h2>Sage Commands to short-cut the process</h2>\n\n<p>Here is the basic command for getting Sage to compute the LU decomposition directly.</p>\n"}︡
︠6aa9ac32-cbef-44fd-8757-478fdaab00e6︠
A = M([2,3,1,-1,3,5, 6,5,4]); A
︡02126358-6fd2-4be2-b5dc-e999ff8d6cb0︡{"stdout":"[ 2  3  1]\n[-1  3  5]\n[ 6  5  4]\n"}︡
︠e2d561c7-662d-4395-aded-bd4937ff64b2︠
A.LU()
︡978013ed-41eb-405f-ac9e-5ba747132a31︡{"stdout":"(\n[0 0 1]  [   1    0    0]  [     6      5      4]\n[0 1 0]  [-1/6    1    0]  [     0   23/6   17/3]\n[1 0 0], [ 1/3 8/23    1], [     0      0 -53/23]\n)\n"}︡
︠a3cd28ab-9292-4c73-b532-5b29a5d4c0dai︠
%md
Hold on, the output is three matrices. Not two, but three. One is upper triangular, one is lower triangular, but the first one is a permutatoin matrix! (it switches rows 1 and 3.) What is going on?
Let's get some help by looking at the documentation for the command. We'll use the question mark routine.

<code>A.LU?</code>

This is an important command, and the authors wrote really extensive documentation with lots of examples. So hang on to your hat...

︡ae5c6870-720a-4d79-84e6-0e4c9b134987︡{"html":"<p>Hold on, the output is three matrices. Not two, but three. One is upper triangular, one is lower triangular, but the first one is a permutatoin matrix! (it switches rows 1 and 3.) What is going on?\nLet&#8217;s get some help by looking at the documentation for the command. We&#8217;ll use the question mark routine.</p>\n\n<p><code>A.LU?</code></p>\n\n<p>This is an important command, and the authors wrote really extensive documentation with lots of examples. So hang on to your hat&#8230;</p>\n"}︡
︠f5712dfb-e3d9-41e8-9561-ecf2f8dbdb1e︠
A.LU? # evaluate me, and watch the page grow! 
︠9118e2e3-62d2-42bf-b39b-a407eccc1a28i︠
%md
There is a hint at the beginning of all of that mess that one of the default options is <code>pivot = 'auto'</code>, and that this might mess with the columns.
Following our nose, let's try again, but by specifying <code>pivot = 'nonzero'</code>
︡c8b505ee-86e7-4ade-bbdd-c4ee8ef75414︡{"html":"<p>There is a hint at the beginning of all of that mess that one of the default options is <code>pivot = &#8216;auto&#8217;</code>, and that this might mess with the columns. \nFollowing our nose, let&#8217;s try again, but by specifying <code>pivot = &#8217;nonzero&#8217;</code></p>\n"}︡
︠df8a0586-eefe-4cc3-935d-b2a17f89ac31︠
A.LU(pivot='nonzero')
︡7db66027-2a0e-45d3-bb33-bd27c053f732︡{"stdout":"(\n[1 0 0]  [   1    0    0]  [   2    3    1]\n[0 1 0]  [-1/2    1    0]  [   0  9/2 11/2]\n[0 0 1], [   3 -8/9    1], [   0    0 53/9]\n)\n"}︡
︠4087999b-3283-47e7-98be-71197707d2ffi︠
%md
Aaah! There we go, now the permutation part is the identity.

Note that the command returns a "tuple." This is a collection of things, kind of like a list. (technical Python details omitted here...)

To grab the information out, let's assign the parts of that output to different names so we can use them.
︡5dc5e38c-7e15-4265-81af-3ac04b923800︡{"html":"<p>Aaah! There we go, now the permutation part is the identity.</p>\n\n<p>Note that the command returns a &#8220;tuple.&#8221; This is a collection of things, kind of like a list. (technical Python details omitted here&#8230;)</p>\n\n<p>To grab the information out, let&#8217;s assign the parts of that output to different names so we can use them.</p>\n"}︡
︠c569178f-5bcb-47f4-9004-0295fe12405f︠
P, L, U = A.LU(pivot='nonzero')
︡eef28c11-eabe-4049-8533-9588be94a354︡
︠021d1ad3-df37-4e9f-ad6e-4a766ae4da53︠
L # this should be the lower triangular part
︡fbc3bce4-2778-48c9-b647-2a13dcd2dfab︡{"stdout":"[   1    0    0]\n[-1/2    1    0]\n[   3 -8/9    1]\n"}︡
︠7f54c025-b65d-4614-a420-8c344993e796︠
U # this should be the upper triangular part
︡90f47fc3-0958-4fba-a262-de7bf6afa886︡{"stdout":"[   2    3    1]\n[   0  9/2 11/2]\n[   0    0 53/9]\n"}︡
︠bfe0967f-41a2-4ddf-9aad-bba47bf38e06︠
L*U # these should multiply to A
︡c2e2aeba-e93a-4547-a6a4-f2543a33555c︡{"stdout":"[ 2  3  1]\n[-1  3  5]\n[ 6  5  4]\n"}︡
︠db3f91f5-05e7-4f44-a74a-3de9dccb7004︠
L*U == A # let's have Sage check that these are equal
︡b9792374-9bc1-483c-b5d8-83b82ba0d009︡{"stdout":"True\n"}︡
︠2bca214e-d99d-40cf-a861-c08783cf8104i︠
%md
### What about the LDU Decomposition? ###
Does that work?

For now, Sage has no built in LDU decomposition.
︡153bd08e-48c0-478c-9a8c-b1043a8abc01︡{"html":"<h3>What about the LDU Decomposition?</h3>\n\n<p>Does that work?</p>\n\n<p>For now, Sage has no built in LDU decomposition.</p>\n"}︡
︠47533e6e-a5b9-4785-8677-e83a0564a3c2︠

︠896b937b-cdf0-40df-a99b-8d53dcae323ei︠

%md
### Another limitation: some matrices require permutations of rows, hence a "pivoting strategy" ###

Let's just look at an example:
︡200487bb-22ee-4380-9687-5edfa0df324f︡{"html":"<h3>Another limitation: some matrices require permutations of rows, hence a &#8220;pivoting strategy&#8221;</h3>\n\n<p>Let&#8217;s just look at an example:</p>\n"}︡
︠6a40a05d-44a7-4b88-beb1-63bd2233929a︠
B = M([0,2,2, 1,3,-1, 1,1,1]); B
︡07bf7aec-ec33-4202-a899-5ff184e4ce62︡{"stdout":"[ 0  2  2]\n[ 1  3 -1]\n[ 1  1  1]\n"}︡
︠6426c28f-36ad-45eb-b28a-822f8f5955bf︠
B.LU(pivot='nonzero')
︡90109407-4177-48a2-a230-17e422727f4c︡{"stdout":"(\n[0 1 0]  [ 1  0  0]  [ 1  3 -1]\n[1 0 0]  [ 0  1  0]  [ 0  2  2]\n[0 0 1], [ 1 -1  1], [ 0  0  4]\n)\n"}︡
︠73f8b8f1-5d58-4cbc-89a9-0c2c546cab45i︠
%md
This has a row-swap permutation matrix, and **it must**. Since the (1,1) entry is zero, but numbers below that are not zero, we can't use zero as a pivot.
We'll sort out how to handle this in section 2.7.
︡d6afd2e4-9f9d-4f0d-a9c9-5e2b6d43d5cd︡{"html":"<p>This has a row-swap permutation matrix, and <strong>it must</strong>. Since the (1,1) entry is zero, but numbers below that are not zero, we can&#8217;t use zero as a pivot. \nWe&#8217;ll sort out how to handle this in section 2.7.</p>\n"}︡
︠8869ed1c-abe5-431d-89d8-474ee568abd1︠









