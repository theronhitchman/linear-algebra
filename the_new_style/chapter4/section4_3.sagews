︠e22ce112-d7e2-4ce9-a6c6-7d4857297104i︠
%md
# Section 4.3: Least Squares Approximation

There are no new commands for dealing with matrices here, as we already have all we need.
If you are interested, Sage does have a built-in function called <code>find_fit</code>.


︡9035fbbf-7e18-4189-aa38-28bb667ba07d︡{"html":"<h1>Section 4.3: Least Squares Approximation</h1>\n\n<p>There are no new commands for dealing with matrices here, as we already have all we need.\nIf you are interested, Sage does have a built-in function called <code>find_fit</code>.</p>\n"}︡
︠39ebbaf4-e4cd-4311-9844-5f60e9a9e357︠
Data = [[1,2], [-1,3], [4,1],[2,1],[1,.5]]
var('a b x')
model(x) = a*x + b

best = find_fit(Data, model, solution_dict=True)
best
︡d35a6c62-5674-478f-8e48-8f476ffaefbe︡{"stdout":"(a, b, x)\n"}︡{"stdout":"{b: 2.0303030303024285, a: -0.3787878787874489}\n"}︡
︠231937f9-cb50-4186-8417-650ac99e97c6i︠
%md
Just to check that, let's plot it:
︡e4f12c20-3e4d-4028-b418-bdbf1f0f6a46︡{"html":"<p>Just to check that, let&#8217;s plot it:</p>\n"}︡
︠a840745a-eb6c-4f4d-8ab0-e96f1f703af1︠
curve = model.subs(best) # this substitutes the values from best into the expression for model

plot(curve, (x,-1,6)) + points(Data, color='red', size=20)  #not so terrible.
︡d0a151bc-9dd0-4b93-b186-f51ca1bbe5d3︡{"once":false,"file":{"show":true,"uuid":"72f9e150-e595-4e7b-b86b-b8f31ec6629f","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute1dc2/13526/tmp_E9STmG.png"}}︡
︠db33e591-1eb5-4cab-9ae1-6afac6386249i︠


%md

Keep in mind that from a linear algebra perspective, we just found the projection of $y = (2,3,1,1,.5) \in \mathbb{R}^5$  onto the column space of the matrix
\[
A = \begin{pmatrix} 1 & 1 \\ -1 & 1 \\ 4 & 1 \\ 2 & 1 \\ 1 & 1\end{pmatrix},
\]
which is a 2-dimensional plane in that 5-dimensional space.

If I could, I would draw that picture, but five dimensions is challenging.
︡92c9c2da-d279-49c6-807c-58443ed05921︡{"html":"<p>Keep in mind that from a linear algebra perspective, we just found the projection of $y = (2,3,1,1,.5) \\in \\mathbb{R}^5$  onto the column space of the matrix\n\\[\nA = \\begin{pmatrix} 1 & 1 \\\\ -1 & 1 \\\\ 4 & 1 \\\\ 2 & 1 \\\\ 1 & 1\\end{pmatrix}, \n\\]\nwhich is a 2-dimensional plane in that 5-dimensional space. </p>\n\n<p>If I could, I would draw that picture, but five dimensions is challenging.</p>\n"}︡
︠2474beaa-07b1-4438-8a96-88fc32f1295e︠









