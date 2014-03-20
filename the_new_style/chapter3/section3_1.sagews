︠1be418b6-5908-47e5-9629-42e1f1a9a3c3i︠
%md
# Chapter 3.1: Vector Spaces & Subspaces #

Sage allows you to construct different kinds of vector spaces. The most important is the standard vector space $\mathbb{R}^n$.

︡18ef3eae-a632-4c7c-8b3a-3f8abf680d99︡{"html":"<h1>Chapter 3.1: Vector Spaces &amp; Subspaces</h1>\n\n<p>Sage allows you to construct different kinds of vector spaces. The most important is the standard vector space $\\mathbb{R}^n$.</p>\n"}︡
︠5f9337ae-7e9e-4754-a353-e212a356a965︠
V = VectorSpace(QQ, 3)
V
︡6274bf51-89b4-47ad-851c-cd49c0fa8d3a︡{"stdout":"Vector space of dimension 3 over Rational Field\n"}︡
︠3f137d11-e96b-4073-8119-4b0dad38bc0fi︠
%md
This is like the MatrixSpace construction we have seen before. $V$ now is the collection of all vectors of size 3 with rational numbers as entries.


But more important for us is the fact that Sage knows how to find the subspaces associated to matrices.
︡1de8845d-a1c6-4fa8-b9b0-e695e2f62b2c︡{"html":"<p>This is like the MatrixSpace construction we have seen before. $V$ now is the collection of all vectors of size 3 with rational numbers as entries.</p>\n\n<p>But more important for us is the fact that Sage knows how to find the subspaces associated to matrices.</p>\n"}︡
︠404f78b1-bcdf-4bd4-9d10-3360fcd31165︠
A = matrix(QQ, 2, 3, [4,5,3,0,1,1])
A
︡394f009b-bf8c-42c0-8168-44cea5c903bd︡{"stdout":"[4 5 3]\n[0 1 1]\n"}︡
︠97a42328-1faf-4d50-accb-17fa9269fdf9︠
A.column_space()
︡cc472fb3-d2f0-4173-a85c-22c7567ab821︡{"stdout":"Vector space of degree 2 and dimension 2 over Rational Field\nBasis matrix:\n[1 0]\n[0 1]"}︡{"stdout":"\n"}︡
︠3c66ba1d-774f-4e60-ab37-a308f31a7fa6i︠
%md
Note that Sage gives information in terms of a basis. We will talk about this concept soon.
︡e58a0740-caa2-4dda-9bd3-44508d059a9f︡{"html":"<p>Note that Sage gives information in terms of a basis. We will talk about this concept soon.</p>\n"}︡
︠7722f327-caaf-4aeb-8e7a-5650075b406a︠
B = matrix(QQ, 3,3 , [1,2,3,4,5,6,7,8,9]); B
︡7b04ba81-65c3-4ad1-af93-ee38811cb53d︡{"stdout":"[1 2 3]\n[4 5 6]\n[7 8 9]\n"}︡
︠689bcb16-beb2-44d8-aa1c-e2660c71b50c︠
B.column_space()
︡e5070e94-f977-44d8-81a1-3f8e102a2583︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]\n"}︡
︠e94d89c9-680b-4783-a285-eb66a725d123i︠
%md
This last bit here is interesting: Sage prefers to display vectors as rows!

To access the basis vectors we will use the following:
︡de6d2eeb-2ed7-4413-a374-53ced791260f︡{"html":"<p>This last bit here is interesting: Sage prefers to display vectors as rows!</p>\n\n<p>To access the basis vectors we will use the following:</p>\n"}︡
︠75717b87-439b-4718-8a71-1ae768171b77︠
B.column_space().basis()[0]; B.column_space().basis()[1]
︡85a9abb6-a241-46bc-be02-a497954ae9d6︡{"stdout":"(1, 0, -1)\n(0, 1, 2)\n"}︡
︠120433bc-88b7-485e-be7b-c31d055b7461︠









