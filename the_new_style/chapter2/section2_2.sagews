︠d12f029f-100a-47ee-acae-8d52f5c27985i︠
%md
# Sage and Row Operations #

The process of <emph>elimination</emph> for systems of equations involves performing operations on the equations. When translated to matrix form, it involves operations on the rows of the coefficient matrix. The corresponding matrix methods come in two types.

The first type modify the matrix "in place," which means that they <strong>change the input matrix</strong>

+ <code> A.rescale_row(r, num) </code> multiplies row r by the factor of num.
+ <code> A.swap_rows(r1, r2) </code> switches the places of row r1 and r2.
+ <code> A.add_multiple_of_row(target, useful, num) </code> This adds num times row useful to row target.

Throughout, please remember that Sage uses 0-based indexing! So the rows are labeled $0, 1, 2, \ldots$
︡647f8904-0c5d-4cc9-bd02-7986b7e7f073︡{"html":"<h1>Sage and Row Operations</h1>\n\n<p>The process of <emph>elimination</emph> for systems of equations involves performing operations on the equations. When translated to matrix form, it involves operations on the rows of the coefficient matrix. The corresponding matrix methods come in two types.</p>\n\n<p>The first type modify the matrix &#8220;in place,&#8221; which means that they <strong>change the input matrix</strong></p>\n\n<ul>\n<li><code> A.rescale_row(r, num) </code> multiplies row r by the factor of num.</li>\n<li><code> A.swap_rows(r1, r2) </code> switches the places of row r1 and r2.</li>\n<li><code> A.add_multiple_of_row(target, useful, num) </code> This adds num times row useful to row target.</li>\n</ul>\n\n<p>Throughout, please remember that Sage uses 0-based indexing! So the rows are labeled $0, 1, 2, \\ldots$</p>\n"}︡
︠d20b3d5f-ed31-460a-93ef-81e036aa7e15︠
A = matrix(QQ, 3,3, [0,2,4, 1,1,5, 6,2,5]); A
︡c3006155-f386-4cf4-99fb-57fac0b4acbd︡{"stdout":"[0 2 4]\n[1 1 5]\n[6 2 5]\n"}︡
︠5e0e1511-c184-42e3-817c-df616e190bd8︠
A.swap_rows(0,1); A
︡5a84dd83-e0f5-4fd3-a9e8-eacbe9bac635︡{"stdout":"[1 1 5]\n[0 2 4]\n[6 2 5]\n"}︡
︠d6b44332-bc56-44eb-b167-22b02640f051︠
A.add_multiple_of_row(2,0,-6) # this should add -6 times row 0 to row 2
A
︡7ea998e7-2bd9-4dad-8c20-4c72091f0f2e︡{"stdout":"[  1   1   5]\n[  0   2   4]\n[  0  -4 -25]\n"}︡
︠44cb1545-2c09-4c9a-a5d6-cdfcc020882a︠
A.rescale_row(1,1/2); A
︡ad172289-9655-40dd-8b7c-5dda33dbe255︡{"stdout":"[  1   1   5]\n[  0   1   2]\n[  0  -4 -25]\n"}︡
︠53351b98-49be-4933-98ff-0559bd1ea16b︠
A.add_multiple_of_row(2,1,4) # this should add 4 times row 2 to row 2
A
︡b7bd3af1-ee4e-496c-b3b6-8a924caa3282︡{"stdout":"[  1   1   5]\n[  0   1   2]\n[  0   0 -17]\n"}︡
︠ef20228e-af90-4f2c-bcd5-b5d4176c63ca︠
A.rescale_row(2,-1/17); A
︡5af077c4-5cc7-4456-b7a1-bb7a5fd2899f︡{"stdout":"[1 1 5]\n[0 1 2]\n[0 0 1]\n"}︡
︠012f1108-73a0-407f-96f0-5c42e5891419i︠
%md
This just did the whole process of elimination. (Well, we did a bit more than Strang would. He wouldn't rescale rows.)
︡5f689e50-5edb-4d71-8610-4dd75e553711︡{"html":"<p>This just did the whole process of elimination. (Well, we did a bit more than Strang would. He wouldn&#8217;t rescale rows.)</p>\n"}︡
︠bfca7697-833a-4602-ab60-1c00ae3e7ba0i︠
%md
### The same thing, but with operations that don't change A ###
Sometimes you don't want to change the matrix $A$. Instead, you want to leave $A$ alone, you can use these methods, which return a new object and don't change $A$.

+ <code> A.with_rescaled_row(r, num) </code>
+ <code> A.with_swapped_rows(r1, r2) </code>
+ <code> A.with_added_multiple_of_row(t, u, num) </code>

Let's do the same operations as above, but without changing $A$. This will mean making a bunch of new matrices.
︡b6edf84d-0485-48d4-b9ab-45b0e1f836ff︡{"html":"<h3>The same thing, but with operations that don&#8217;t change A</h3>\n\n<p>Sometimes you don&#8217;t want to change the matrix $A$. Instead, you want to leave $A$ alone, you can use these methods, which return a new object and don&#8217;t change $A$.</p>\n\n<ul>\n<li><code> A.with_rescaled_row(r, num) </code></li>\n<li><code> A.with_swapped_rows(r1, r2) </code></li>\n<li><code> A.with_added_multiple_of_row(t, u, num) </code></li>\n</ul>\n\n<p>Let&#8217;s do the same operations as above, but without changing $A$. This will mean making a bunch of new matrices.</p>\n"}︡
︠eaed5924-acd0-4702-b0b9-531d0355c38d︠
B = matrix(QQ, 3,3, [0,2,4, 1,1,5, 6,2,5]); B
︡6ef64234-94a7-4a1b-a4ee-02b80df3d7fc︡{"stdout":"[0 2 4]\n[1 1 5]\n[6 2 5]\n"}︡
︠22800cb5-eb9b-4512-8cb1-f61782b80ebd︠
B1 = B.with_swapped_rows(0,1); B1
︡54f05726-4f9b-41b1-8367-dd49c03ad39a︡{"stdout":"[1 1 5]\n[0 2 4]\n[6 2 5]\n"}︡
︠eea3953d-daf3-4f51-810d-164574ae5be5︠
B2 = B1.with_added_multiple_of_row(2,0,-6); B2
︡e0d99abd-4ae3-4ec0-bff3-c4b3f728f3e3︡{"stdout":"[  1   1   5]\n[  0   2   4]\n[  0  -4 -25]\n"}︡
︠4c253bc7-c493-4f9b-8c5d-d2e9eff2490c︠
B3 = B2.with_rescaled_row(1, 1/2); B3
︡06cb7d25-0865-4384-9b2e-379713f31f38︡{"stdout":"[  1   1   5]\n[  0   1   2]\n[  0  -4 -25]\n"}︡
︠afa37d18-10fc-4236-9f5b-1c2348c36f7f︠
B4 = B3.with_added_multiple_of_row(2,1,4); B4
︡872b71b4-3cf9-4c42-a4a0-a3aff9f02923︡{"stdout":"[  1   1   5]\n[  0   1   2]\n[  0   0 -17]\n"}︡
︠f376361b-1110-437d-9360-6b6fef7d76dc︠
B5 = B4.with_rescaled_row(2,-1/17); B5
︡ea1c6abf-3cfe-479a-8592-eddf51062a03︡{"stdout":"[1 1 5]\n[0 1 2]\n[0 0 1]\n"}︡
︠1af95cd9-6b6b-471a-9b43-ab4e5d931532i︠
%md
This second option has some advantages. At any point, you can revise your work, because the original matrix is still in memory, and so are all of the intermediate steps.
︡321acae6-67c2-447e-98e6-e8229c92b623︡{"html":"<p>This second option has some advantages. At any point, you can revise your work, because the original matrix is still in memory, and so are all of the intermediate steps.</p>\n"}︡
︠afc2c211-fbd0-433a-a789-d2d1003e7177︠
B, B1, B2; B3, B4, B5 # let's display all six matrices from the process
︡e4f67a85-065f-43eb-88f9-1d86188682a6︡{"stdout":"(\n[0 2 4]  [1 1 5]  [  1   1   5]\n[1 1 5]  [0 2 4]  [  0   2   4]\n[6 2 5], [6 2 5], [  0  -4 -25]\n)\n(\n[  1   1   5]  [  1   1   5]  [1 1 5]\n[  0   1   2]  [  0   1   2]  [0 1 2]\n[  0  -4 -25], [  0   0 -17], [0 0 1]\n)\n"}︡
︠3af66a80-e359-48d1-8a02-c0778a0ea835︠









