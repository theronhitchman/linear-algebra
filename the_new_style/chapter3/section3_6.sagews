︠5e4e507e-ac8c-4701-9ddd-b62b73ee363ai︠
%md
# The Four Fundamental Subspaces Associated to a Matrix #

Suppose we have an $m\times n$ matrix $A$. Then there are four important subspaces associated to $A$:

* the column space
* the nullspace
* the row space
* the left nullspace

Note that the row space is really just the column space of the transpose $A^T$, and the left nullspace is just the nullspace of the transpose $A^T$. So two of the subspaces are built using $A$ directly, and two are built using $A^T$.

Sage has built-in commands for these, as much as it needs:
︡ac344d91-f012-4f65-b247-c6e292e53a56︡{"html":"<h1>The Four Fundamental Subspaces Associated to a Matrix</h1>\n\n<p>Suppose we have an $m\\times n$ matrix $A$. Then there are four important subspaces associated to $A$:</p>\n\n<ul>\n<li>the column space</li>\n<li>the nullspace</li>\n<li>the row space</li>\n<li>the left nullspace</li>\n</ul>\n\n<p>Note that the row space is really just the column space of the transpose $A^T$, and the left nullspace is just the nullspace of the transpose $A^T$. So two of the subspaces are built using $A$ directly, and two are built using $A^T$.</p>\n\n<p>Sage has built-in commands for these, as much as it needs:</p>\n"}︡
︠f844fdd2-5833-415e-ab3a-a11bf38a84ab︠
A = matrix(AA, 2,5, [3,4,5,-1,-1, 1,1,2,-1,1]); A
︡2982968f-38f8-4b60-979b-1360c106262e︡{"stdout":"[ 3  4  5 -1 -1]\n[ 1  1  2 -1  1]\n"}︡
︠2c4e393e-bfd2-4a3c-b5f0-2d249cae0195︠
A.column_space()
︡534ec222-e08d-4c61-9964-e1206bca6b46︡{"stdout":"Vector space of degree 2 and dimension 2 over Algebraic Real Field\nBasis matrix:\n[1 0]\n[0 1]"}︡{"stdout":"\n"}︡
︠13ebd754-8bcc-4fbe-b0bf-9754a7e3489c︠
A.left_kernel()
︡6c1c5014-dcad-48af-9566-0f2268afa546︡{"stdout":"Vector space of degree 2 and dimension 0 over Algebraic Real Field\nBasis matrix:\n[]\n"}︡
︠053c106b-d975-47d6-84af-051f76482abb︠
A.row_space()
︡c752be33-a128-431a-a604-511fd71d2bab︡{"stdout":"Vector space of degree 5 and dimension 2 over Algebraic Real Field\nBasis matrix:\n[ 1  0  3 -3  5]\n[ 0  1 -1  2 -4]\n"}︡
︠18174d53-a861-4905-bcaa-988bb536dff2︠
A.transpose().column_space()
︡3d8776a2-856e-47c1-90d0-5c43937a1634︡{"stdout":"Vector space of degree 5 and dimension 2 over Algebraic Real Field\nBasis matrix:\n[ 1  0  3 -3  5]\n[ 0  1 -1  2 -4]\n"}︡
︠0d55b0a6-5f0d-422d-9c4d-5f5394b2d139︠
A.transpose().column_space() == A.row_space()
︡0a17c86f-3761-4b05-9d61-e6ec115a2531︡{"stdout":"True\n"}︡
︠c50a9b6e-bb3f-40b1-9f98-11b8bde6b193︠
A.transpose().left_kernel()  # the left null space
︡3724af0d-8a0c-441e-8551-902144e1fcd7︡{"stdout":"Vector space of degree 5 and dimension 3 over Algebraic Real Field\nBasis matrix:\n[  1   0   0   2   1]\n[  0   1   0 5/2 3/2]\n[  0   0   1 7/2 3/2]\n"}︡
︠083a1f0c-643f-433e-9c97-cabf5d88548e︠
A.right_kernel() #Sage actually prefers rows under the hood, so this is easier.
︡f0339119-5b3b-4f07-9816-38b58af5469f︡{"stdout":"Vector space of degree 5 and dimension 3 over Algebraic Real Field\nBasis matrix:\n[  1   0   0   2   1]\n[  0   1   0 5/2 3/2]\n[  0   0   1 7/2 3/2]\n"}︡
︠b4e70933-d6d6-4c73-8283-88ccc9c7ca3d︠
A.right_kernel() == A.transpose().left_kernel()
︡3a4033b1-5a44-4cf4-a3e6-dcaa8ef1a6b2︡{"stdout":"True\n"}︡
︠92a457cb-e9eb-4f09-b28c-05221c6fe332i︠

%md
And there you have it. This constructs all four fundamental subspaces, and each comes with a basis computed by Sage.
︡7f4f86a1-7457-4750-b79d-a5fc1d91359a︡{"html":"<p>And there you have it. This constructs all four fundamental subspaces, and each comes with a basis computed by Sage.</p>\n"}︡
︠9855f636-5d4f-453f-893e-4177749fb31e︠









