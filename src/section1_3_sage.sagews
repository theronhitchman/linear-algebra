︠37ae3f8f-cb0b-47aa-8199-206a68a05175i︠
%md
# Sage and Matrices #

### Matrix Construction Commands ###

The command to construct a matrix is pretty straightforward
<code>A = matrix( r, c, [list of entries])</code>
where r is the number of rows and c is the number of columns.
︡a157db6c-5659-4885-9fa8-26bf030529b0︡{"html":"<h1>Sage and Matrices</h1>\n\n<h3>Matrix Construction Commands</h3>\n\n<p>The command to construct a matrix is pretty straightforward\n<code>A = matrix( r, c, [list of entries])</code>\nwhere r is the number of rows and c is the number of columns.</p>\n"}︡
︠97326152-bad7-4dd6-adfa-03682c6e024f︠
A = matrix(2,3, [1,2,3,5,8,13]); A
︡6e6d4eb1-3b9c-4edb-911e-034a497673d1︡{"stdout":"[ 1  2  3]\n[ 5  8 13]\n"}︡
︠cf6c1909-638c-4fbc-849b-b296e5f0112ai︠
%md
If you wish, you can structure that list of entries to be a list of lists, where each sublist is a row in your matrix.
︡9a816fd3-bb8f-41ef-a164-d99df34c8203︡{"html":"<p>If you wish, you can structure that list of entries to be a list of lists, where each sublist is a row in your matrix.</p>\n"}︡
︠823f21b2-f01f-430f-9913-a7b55fea7aa5︠
B = matrix(2,3, [[1,2,3], [5,8,13]]); B
︡9ae64677-b663-4f0a-aeba-04e2b6dc30d7︡{"stdout":"[ 1  2  3]\n[ 5  8 13]\n"}︡
︠b3c8efd1-402a-44df-830a-dc6e012c29efi︠
%md
Every once in a while, it might matter to you what kinds of numbers you put into the matrix. Sage will let you specify them by putting in an optional argument like this:
<code> C = matrix(number type, r, c, [list of entries])</code>
︡5ca4ca4c-2393-4be6-bbf8-78593802d183︡{"html":"<p>Every once in a while, it might matter to you what kinds of numbers you put into the matrix. Sage will let you specify them by putting in an optional argument like this:\n<code> C = matrix(number type, r, c, [list of entries])</code></p>\n"}︡
︠45a4c7e0-d9f0-4d2c-8a1a-649fb3a4535e︠
C = matrix(ZZ, 2, 2, [2,1,1,1]); C # Prof Hitchman's favorite matrix
︡3ab8f617-a1a6-4a67-87e1-acea80378980︡{"stdout":"[2 1]\n[1 1]\n"}︡
︠34602400-bc09-451e-889c-41e4e93b5ea9i︠
%md
The notation <code>ZZ</code> means "integers." There are other sets of numbers here:

+ <code>QQ</code> the rational numbers (with exact arithmetic)
+ <code>RR</code> the real numbers (with computer precision arithmetic)
+ <code>CC</code> the complex numbers
+ <code>AA</code> the set of all algebraic numbers, that is, all of the numbers that are roots of some polynomial.
︡63e6eb93-4fe4-4219-8a5e-3f2688071c71︡{"html":"<p>The notation <code>ZZ</code> means &#8220;integers.&#8221; There are other sets of numbers here:</p>\n\n<ul>\n<li><code>QQ</code> the rational numbers (with exact arithmetic)</li>\n<li><code>RR</code> the real numbers (with computer precision arithmetic)</li>\n<li><code>CC</code> the complex numbers</li>\n<li><code>AA</code> the set of all algebraic numbers, that is, all of the numbers that are roots of some polynomial.</li>\n</ul>\n"}︡
︠b203f24f-af19-4132-bbac-bd713b903a18i︠
%md
you can find out what kind of entries a matrix thinks it has by calling the <code>.parent()</code> method on it.
︡83a77652-a69f-4ffe-99ed-c017f0a92320︡{"html":"<p>you can find out what kind of entries a matrix thinks it has by calling the <code>.parent()</code> method on it.</p>\n"}︡
︠46ed8448-a616-4426-b454-a1366838e138︠
A.parent() # this should say something about the integers
︡10c83dc2-2290-438f-9f9b-9872b3e0796d︡{"stdout":"Full MatrixSpace of 2 by 3 dense matrices over Integer Ring\n"}︡
︠fd614dd7-8925-4a65-8ca7-85a8dd220531︠
D = matrix(QQ, 3,3, [[1,0,1],[2/3, 1, 0],[0,0,9/5]]) # this should say something about the rationals
D; D.parent()
︡227426e9-d87d-4b79-bbb0-13573493bdae︡{"stdout":"[  1   0   1]\n[2/3   1   0]\n[  0   0 9/5]\nFull MatrixSpace of 3 by 3 dense matrices over Rational Field\n"}︡
︠062127de-f659-4948-b17d-759cf89064a2i︠
%md
### Building a matrix from rows or columns ###
It is possible to build a matrix by bundling together a bunch of vectors, too. Let's start with an example made using rows.
︡8d4d0aa4-391e-4db6-aecf-50c54257dacf︡{"html":"<h3>Building a matrix from rows or columns</h3>\n\n<p>It is possible to build a matrix by bundling together a bunch of vectors, too. Let&#8217;s start with an example made using rows.</p>\n"}︡
︠c1b5a80d-7d89-4857-b379-af21a7f836dd︠
v1 = vector([2,1]); v2= vector([3,4])
E = matrix([ v1, v2]); E # construct E with rows v1 and v2, then display
︡3cd159d3-475c-41f8-a478-41fa1df75e46︡{"stdout":"[2 1]\n[3 4]\n"}︡
︠ab19f6fb-3b1c-467b-b3e4-9dda4ea376c5i︠
%md
Sage prefers rows. I wish it were the other way, but I am sure there is a good reason why it prefers rows.
If you want to make a matrix whose columns are the vectors v1 and v2, you can use the <code>transpose</code> method.
We'll talk more about the operation of transpose later, but it basically "switches columns and rows."
︡12b8ecbe-db5c-4771-98d1-e665ce16a04b︡{"html":"<p>Sage prefers rows. I wish it were the other way, but I am sure there is a good reason why it prefers rows.\nIf you want to make a matrix whose columns are the vectors v1 and v2, you can use the <code>transpose</code> method.\nWe&#8217;ll talk more about the operation of transpose later, but it basically &#8220;switches columns and rows.&#8221;</p>\n"}︡
︠db91fcdf-6eaf-4d25-b333-54f0301664d0︠
F = matrix([v1,v2]).transpose(); F
︡48476c62-ed92-4f8f-8a6c-f1edd5d51568︡{"stdout":"[2 3]\n[1 4]\n"}︡
︠9e863b4e-c83d-49e8-9165-0157b4d945fbi︠

%md
### Matrix action on vectors ###
Of course, Sage knows how to perform the action of a matrix on a vector.
︡250df5d9-6136-4f20-88e2-8e041a93260a︡{"html":"<h3>Matrix action on vectors</h3>\n\n<p>Of course, Sage knows how to perform the action of a matrix on a vector.</p>\n"}︡
︠3c84bf67-2b9b-483f-a795-537eb3b24e74︠
C; v1
︡2110bbf8-9112-4ae9-9cc3-a646459f8019︡{"stdout":"[2 1]\n[1 1]\n(2, 1)\n"}︡
︠29f9aa18-9b17-4195-b4b9-933f4071d66a︠
C*v1
︡0d2ff151-ddd6-4f34-9109-c0a3bfe37944︡{"stdout":"(5, 3)\n"}︡
︠45a1d93d-0ff0-4712-af6e-8c1300b9564bi︠
%md
and if you get the sizes wrong, it will return an error.
︡85c0810f-95c1-4e77-8c17-752cc5a1996d︡{"html":"<p>and if you get the sizes wrong, it will return an error.</p>\n"}︡
︠8e6ba9b7-ebe9-4357-9583-8e481106bbc7︠
A; v1
︡b1c5d1a3-000b-4e1c-aca8-492f0ed4386b︡{"stdout":"[ 1  2  3]\n[ 5  8 13]\n(2, 1)\n"}︡
︠4247e1d7-24d6-491d-b7cd-324cadfa0e77︠
A*v1
︡91e54a1f-facd-4e90-9a45-cbc3fc7ecac4︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sagemathcloud/sage_server.py\", line 680, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"element.pyx\", line 2751, in sage.structure.element.Matrix.__mul__ (sage/structure/element.c:19589)\n  File \"coerce.pyx\", line 856, in sage.structure.coerce.CoercionModel_cache_maps.bin_op (sage/structure/coerce.c:8169)\nTypeError: unsupported operand parent(s) for '*': 'Full MatrixSpace of 2 by 3 dense matrices over Integer Ring' and 'Ambient free module of rank 2 over the principal ideal domain Integer Ring'\n"}︡
︠3521e109-ae04-4209-94aa-364b2f4cc7dei︠
%md
And if you really need it, Sage can tell you about inverses.
︡f29609b2-85dd-47d1-90c2-862450d36c85︡{"html":"<p>And if you really need it, Sage can tell you about inverses.</p>\n"}︡
︠b6ea3c80-dbce-41b3-a8be-6a9a56525b4c︠
A.is_invertible()
︡30ac2680-d740-417c-bcbb-f304a4580f3c︡{"stdout":"False\n"}︡
︠e1b75a65-660a-4fe6-93ae-a17260719dab︠
C.is_invertible()
︡900a2801-eeca-4746-9212-029eb86eb4e6︡{"stdout":"True\n"}︡
︠d2285f52-3175-46ff-9f07-285365c649f8︠
C.inverse()
︡bf78d440-c503-410c-88b0-6fc4212286a1︡{"stdout":"[ 1 -1]\n[-1  2]\n"}︡
︠1cd829c3-2689-4b97-9d5c-233566a493f8︠









