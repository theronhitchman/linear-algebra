︠51291e15-4403-4f63-a29d-df0d1abc5843i︠
%md
# Section 2.1: Vectors and Linear Equations #

There are just a few new Sage commands that might be useful here. We have already seen how to take linear equations and turn them into vectors and then turn the vector equation into a matrix equation. But Sage can help us move in the other direction, too.

The keys are commands to pull out the rows and the columns from a given matrix. Let's start with a simple situation where the matrix equation is
\[
\begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 3 \\ 4 \end{pmatrix}
\]
︡33a2f5f5-5491-4596-a13c-a66c1956f24c︡{"html":"<h1>Section 2.1: Vectors and Linear Equations</h1>\n\n<p>There are just a few new Sage commands that might be useful here. We have already seen how to take linear equations and turn them into vectors and then turn the vector equation into a matrix equation. But Sage can help us move in the other direction, too.</p>\n\n<p>The keys are commands to pull out the rows and the columns from a given matrix. Let&#8217;s start with a simple situation where the matrix equation is\n\\[\n\\begin{pmatrix} 2 & 1 \\\\ 1 & 1 \\end{pmatrix} \\begin{pmatrix} x \\\\ y \\end{pmatrix} = \\begin{pmatrix} 3 \\\\ 4 \\end{pmatrix}\n\\]</p>\n"}︡
︠f905582e-496d-4eb6-998c-e06a3cf3d536︠
A = matrix(QQ, 2,2, [2,1,1,1]); A
︡338fb40e-fe0e-4ba7-964e-291d37b27f79︡{"stdout":"[2 1]\n[1 1]\n"}︡
︠cb291c59-0073-42c4-a218-e3f4282731c6︠
var('x y')
︡ef9e9b10-77ec-49cd-aa6d-13c149c4f60b︡{"stdout":"(x, y)\n"}︡
︠a3cd6219-7183-4dbe-8c30-1bc341a86fe0︠
X = vector([x,y]); X
︡b967b6dd-59c6-4551-b2b7-a023df5748a0︡{"stdout":"(x, y)\n"}︡
︠f13587b5-ae43-44c2-910f-9248988817ba︠
b = vector([3,4]); b
︡d06cdf98-5173-47c4-9db3-756d1cd1421b︡{"stdout":"(3, 4)\n"}︡
︠fc0aee26-f46d-4258-a53f-edae5f09eb59i︠
%md
To get Sage to pull out the columns, we can use the <code>.columns()</code> method. If we want just one column, we can use the <code>.column()</code> method, but then we have to remember to specify which column we want.
︡571ba44f-1b5c-42dd-bd51-adfde92f741e︡{"html":"<p>To get Sage to pull out the columns, we can use the <code>.columns()</code> method. If we want just one column, we can use the <code>.column()</code> method, but then we have to remember to specify which column we want.</p>\n"}︡
︠ee4216b7-817a-44a2-956e-b487d044fd43︠
A.columns() # this will return a list.
︡fd431ab9-82a7-4132-befd-c9655b2bd24a︡{"stdout":"[(2, 1), (1, 1)]\n"}︡
︠38dd6702-749e-49dc-8025-d587e1bc4c2f︠
A.column(1); A.column(1).parent()
︡be5e977c-f470-4b93-83b9-91e770586523︡{"stdout":"(1, 1)\nVector space of dimension 2 over Rational Field\n"}︡
︠de97e705-39d1-4669-b8e7-e27ebc1d54d8i︠
%md
**Big important note**: Sage always numbers lists starting at $0$. So the first element of every list is the $0$ entry, and the second element is the $1$ entry, etc.

Now, it is possible to make sage do things like this:
︡d48eb7cf-d324-484a-8b77-9eef7400cae4︡{"html":"<p><strong>Big important note</strong>: Sage always numbers lists starting at $0$. So the first element of every list is the $0$ entry, and the second element is the $1$ entry, etc.</p>\n\n<p>Now, it is possible to make sage do things like this:</p>\n"}︡
︠85a91be6-5bf5-4803-96f2-d1711f939d4d︠
column_plot = plot(A.column(0), color='red') + plot(A.column(1), color='blue') + plot(b, color='purple')
show(column_plot)
︡a2078182-d391-4b19-8cb6-2f72cd5d169e︡{"once":false,"file":{"show":true,"uuid":"f23e326a-01d7-4367-af02-e7d3afcc1e43","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/9751/tmp_OtrI5b.png"}}︡
︠6a117062-5636-483f-a54c-8009cf4a57fbi︠
%md
### Obtaining the row picture ###

One can also pull out the rows with corresponding <code>row</code> methods.
︡288c7e64-1c4c-4753-8cf7-2dbcb096ce38︡{"html":"<h3>Obtaining the row picture</h3>\n\n<p>One can also pull out the rows with corresponding <code>row</code> methods.</p>\n"}︡
︠fbd08c4f-62b6-43af-aec8-2582520c69b1︠
A.rows()
︡c4f4b88b-a92e-492a-a718-229d0b66b7c2︡{"stdout":"[(2, 1), (1, 1)]\n"}︡
︠5cfc6164-72ee-4245-ab9a-a2c49f5da069︠
expr1 = A.row(0).dot_product(X) == b[0]
expr2 = A.row(1).dot_product(X) == b[1]

expr1; expr2
︡af2a9dc1-8415-4a24-a30a-aaa435277f5b︡{"stdout":"2*x + y == 3\nx + y == 4\n"}︡
︠c5c951d6-d181-4461-a21a-8877d56a72cbi︠
%md
And then you can plot those if you want:
︡8510ceff-21b1-4d6d-aa6f-3a5acea64b98︡{"html":"<p>And then you can plot those if you want:</p>\n"}︡
︠402184b7-5773-4358-8e74-12d69992bad9︠
row_plot = implicit_plot(expr1, [x,-5,5],[y,-1,9], color='blue')
row_plot+= implicit_plot(expr2, [x,-5,5],[y,-1,9], color='red')
show(row_plot, axes=True)
︡da21bfe4-1440-44b0-9dd1-e2b98283b27e︡{"once":false,"file":{"show":true,"uuid":"90e4d906-cf12-4db0-84da-fbfb936fcba7","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/9751/tmp__Ls6Dg.png"}}︡
︠b213ebf9-ce0d-4433-ac49-83ce04fc03cd︠









