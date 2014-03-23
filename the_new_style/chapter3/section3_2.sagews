︠8bf89604-0821-40ef-9222-db12c573fac5i︠
%md
# Chapter 3 Section 2 #

The main idea in this section is to get solutions to homogeneous systems $Ax=0$ by using the reduced row echelon form. This will compute the nullspace of the matrix $A$. Sage has some useful built in commands for this. Let us explore an example.
︡891116f6-2c2d-4383-8c9d-c8f410ce7ad6︡{"html":"<h1>Chapter 3 Section 2</h1>\n\n<p>The main idea in this section is to get solutions to homogeneous systems $Ax=0$ by using the reduced row echelon form. This will compute the nullspace of the matrix $A$. Sage has some useful built in commands for this. Let us explore an example.</p>\n"}︡
︠82db5103-abe9-49bf-9571-a3f0f1cb0d89︠
A = matrix(QQ, 3,4, [1,2,3,4,5,6,7,8,9,10,11,12]); A
︡df3578bb-7ec7-44a8-a80f-8a4994007f2b︡{"stdout":"[ 1  2  3  4]\n[ 5  6  7  8]\n[ 9 10 11 12]\n"}︡
︠cd6d2230-5f75-4a29-afd1-36941a710a63i︠
%md
The most direct way is to ask Sage for the nullspace. But Sage doesn't call it that, it uses the synonym kernel. And because we do matrix vector multiplication with vectors on the right, we have to tell Sage to do it that way.
︡689df65c-60ff-4427-b656-c8608cdbc97f︡{"html":"<p>The most direct way is to ask Sage for the nullspace. But Sage doesn&#8217;t call it that, it uses the synonym kernel. And because we do matrix vector multiplication with vectors on the right, we have to tell Sage to do it that way.</p>\n"}︡
︠0039dffe-ca16-4125-b9b4-f37270400123︠
A.right_kernel()
︡18091393-b49b-4658-8af9-5dbaa42ac92a︡{"stdout":"Vector space of degree 4 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -3  2]\n[ 0  1 -2  1]"}︡{"stdout":"\n"}︡
︠1adec684-e645-4c31-b66b-43988d66c1dfi︠
%md
Notice that Sage returns the nullspace by specifying a basis. This is a complete set of special solutions! How can we be sure?

Let's check that those vectors are actually in the nullspace:

︡f3aebc70-6577-4e50-9ff9-6c815513297a︡{"html":"<p>Notice that Sage returns the nullspace by specifying a basis. This is a complete set of special solutions! How can we be sure?</p>\n\n<p>Let&#8217;s check that those vectors are actually in the nullspace:</p>\n"}︡
︠90f4f6ed-e191-4c95-a174-ed3cccce40cc︠
sage1 = vector([1,0,-3,2])
sage2 = vector([0,1,-2,1])


A*sage1; A*sage2 # these will return the zero vectors in R^3. (why R^3?)
︡088d9949-11cd-4385-b245-e3d1134845da︡{"stdout":"(0, 0, 0)\n(0, 0, 0)\n"}︡
︠549ca357-0e46-437d-bd48-4ea7b020b877i︠
%md
Remember that the method to find the reduced row echelon form is <code>.rref()</code>
︡4fcff7a9-e80f-4d69-9b70-73fb92149de1︡{"html":"<p>Remember that the method to find the reduced row echelon form is <code>.rref()</code></p>\n"}︡
︠813c5568-d67f-42b6-a054-daa439ad149d︠
A.rref()
︡3ef6e8a1-2b1e-48c3-be11-351267a2faa4︡{"stdout":"[ 1  0 -1 -2]\n[ 0  1  2  3]\n[ 0  0  0  0]\n"}︡
︠f331f67d-d4d2-410a-bff4-fa5872997db1i︠
%md
What this means is that the null space is described by the two equations
\[
\left\{
\begin{array}{rrrrrrrrr}
v & & & - & y & - & 2 z & = & 0 \\
  & & x & + & 2y & + & 3 z & = & 0
\end{array}\right.
\]

That is, the nullspace is the intersection of these two hyperplanes in $\mathbb{R}^4$.
︡d3964138-3e58-454f-ade5-fd3de85292f6︡{"html":"<p>What this means is that the null space is described by the two equations\n\\[\n\\left\\{\n\\begin{array}{rrrrrrrrr}\nv & & & - & y & - & 2 z & = & 0 \\\\\n  & & x & + & 2y & + & 3 z & = & 0\n\\end{array}\\right.\n\\]</p>\n\n<p>That is, the nullspace is the intersection of these two hyperplanes in $\\mathbb{R}^4$.</p>\n"}︡
︠2ca954c4-3246-4045-8c83-c594a390c91d︠
# Let's see what Sage's solve command tells us:
v,x,y,z = var('v x y z')
expr1 = v - y - 2*z == 0
expr2 = x + 2*y + 3*z == 0
solve([expr1, expr2], [v,x,y,z])
︡167e0952-e3ed-4d0c-bd83-3300df8f9449︡{"stdout":"[[v == 2*r5 + r6, x == -3*r5 - 2*r6, y == r6, z == r5]]\n"}︡
︠b71d7fd4-dbb4-4994-b9e3-176d57905477i︠
%md
Aha! Sage is trying to tell us that the pivot variables v and x should be written in terms of the free variables y and z.
Strang's "easy way out" is to choose the free variables to be 0's and 1's in combination. Here we have two of them, so we will alternate.
One special solution will be to choose $y = 1$ and $z=0$. Then we solve to get $v = 1$ and $x = -2$.
︡9404f046-6a42-4390-809c-e66c028aebc8︡{"html":"<p>Aha! Sage is trying to tell us that the pivot variables v and x should be written in terms of the free variables y and z.\nStrang&#8217;s &#8220;easy way out&#8221; is to choose the free variables to be 0&#8217;s and 1&#8217;s in combination. Here we have two of them, so we will alternate.\nOne special solution will be to choose $y = 1$ and $z=0$. Then we solve to get $v = 1$ and $x = -2$.</p>\n"}︡
︠3c5867ad-4603-422e-9d52-7725e79672eb︠
special1 = vector([1,-2,1,0])

# let's check
A*special1
︡0186c917-276a-48d0-9bcf-314d5a4fd846︡{"stdout":"(0, 0, 0)\n"}︡
︠9342b44f-68b5-4b14-9bce-a786d9f6ee5ei︠
%md
Similarly, we can choose $y=0$ and $z=1$ to get a second special solution. This leads to $v=2$ and $x = -3$.
︡efbeeca4-9cfa-457e-a6cb-96676efaeeca︡{"html":"<p>Similarly, we can choose $y=0$ and $z=1$ to get a second special solution. This leads to $v=2$ and $x = -3$.</p>\n"}︡
︠6c7cdb05-5a9a-418b-b395-9450ca98798a︠
special2 = vector([2,-3,0,1])

#let's check
A*special2
︡f6bb70eb-e723-43c1-ba1c-afa427d3e205︡{"stdout":"(0, 0, 0)\n"}︡
︠90c05c75-64c0-4b58-a980-8a3eeed1af64i︠
%md
These two vectors form a _basis_ for the nullspace. Every vector in the null space can be written as a linear combination of these two vectors.

What is weird is that Sage always wants its basis to look like 1's and 0's at the beginning, and our process makes them at the end!

How can we be sure everything lines up?  Well, it is possible to express the two vectors that Sage gives us as a linear combination of the ones we just found, and vice versa. So we are getting _two_ descriptions of the same space.
︡a3499827-1c46-4fe8-b238-fccadff59c55︡{"html":"<p>These two vectors form a _basis_ for the nullspace. Every vector in the null space can be written as a linear combination of these two vectors.</p>\n\n<p>What is weird is that Sage always wants its basis to look like 1&#8217;s and 0&#8217;s at the beginning, and our process makes them at the end!</p>\n\n<p>How can we be sure everything lines up?  Well, it is possible to express the two vectors that Sage gives us as a linear combination of the ones we just found, and vice versa. So we are getting _two_ descriptions of the same space.</p>\n"}︡
︠c717442a-84fb-40ce-bb2e-1719d6813837︠
sage1 == -3* special1 + 2* special2
sage2 == -2* special1 + special2
︡12f2336e-f26a-4dfc-9efd-07023b369e1d︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡
︠5bfad305-1472-454a-82fb-38f990851bd8︠
special1 ==    sage1 - 2* sage2
special2 == 2* sage1 - 3* sage2
︡63e645bd-e0cf-4263-a3cc-355751b5707c︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡
︠c278bd1c-847c-4412-9281-1516d999165ei︠
%md
Can you see the matrix and its inverse hiding behind that? I found those relationships using row operations and a matrix inverse.

Anyway, what's happened is that Sage has performed our calculation above, and then taken the extra steps of putting the matrix of basis vectors into reduced row echelon form, too.
︡6a7166bc-4281-46f0-b304-3dc270fcff6c︡{"html":"<p>Can you see the matrix and its inverse hiding behind that? I found those relationships using row operations and a matrix inverse.</p>\n\n<p>Anyway, what&#8217;s happened is that Sage has performed our calculation above, and then taken the extra steps of putting the matrix of basis vectors into reduced row echelon form, too.</p>\n"}︡
︠57445e70-0508-459b-aedb-12e41e04cbb4︠









