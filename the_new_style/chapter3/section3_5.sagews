︠482eb8a4-0c42-4a99-820a-94d299528412i︠
%md
# Section 3.5: Independence, Spanning Sets, Bases, & Dimension #

Sage has several commands which we might find useful in dealing with the concepts of this section.

Let's start with the idea of a span.
︡2661ec57-82ec-4ca1-bc7c-b14775101d1b︡{"html":"<h1>Section 3.5: Independence, Spanning Sets, Bases, &amp; Dimension</h1>\n\n<p>Sage has several commands which we might find useful in dealing with the concepts of this section.</p>\n\n<p>Let&#8217;s start with the idea of a span.</p>\n"}︡
︠4cbee65c-f81e-4cf6-9dc2-8b1e10ad2441︠
v1 = vector([1,0,2])
v2 = vector([1,1,3])

V = span([v1,v2], QQ) # will construct a vector subspace of R^3 which is spanned by these two vectors
V
︡afc15ed3-69eb-42e9-9286-2a75377c6214︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[1 0 2]\n[0 1 1]\n"}︡
︠f0a13ead-2b7c-438f-afb3-e4e4784b0484i︠
%md
Note that Sage already gives us some information:

* dimension
* a basis

Sage has chosen its perferred basis, as usual.
︡cc02b5d2-4866-42a1-b765-745916a69556︡{"html":"<p>Note that Sage already gives us some information:</p>\n\n<ul>\n<li>dimension</li>\n<li>a basis</li>\n</ul>\n\n<p>Sage has chosen its perferred basis, as usual.</p>\n"}︡
︠0bc3edf6-b824-4288-bcb8-4a40f1ffc766︠
V.dimension() #This will give the dimension of a vector space.
︡3408b8e6-b920-4659-a473-5707d7148edf︡{"stdout":"2\n"}︡
︠33c8c42e-9c24-4934-8dfe-09562491c790︠
V.basis()
︡da569907-595a-47b3-ae37-d46df9ed2477︡{"stdout":"[\n(1, 0, 2),\n(0, 1, 1)\n]\n"}︡
︠f1fcaa53-8fa8-4876-b318-870430e4a8ddi︠
%md
Sage doesn't have built-in commands with names for checking linear independence or linear dependence. Instead, you have to just use the algorithms.

**The Row Space Algorithm**
︡e6221e95-c5bc-4e26-acc0-29d0bce4167d︡{"html":"<p>Sage doesn&#8217;t have built-in commands with names for checking linear independence or linear dependence. Instead, you have to just use the algorithms.</p>\n\n<p><strong>The Row Space Algorithm</strong></p>\n"}︡
︠e092e39b-50ec-4b2b-aa3b-e951d12778ce︠
row_matrix = matrix(QQ, 2,3, [v1, v2]); row_matrix
︡6efe9c76-c879-4014-8535-8428680c0033︡{"stdout":"[1 0 2]\n[1 1 3]\n"}︡
︠4071da63-0a24-46a1-b609-11f26bf7df53︠
R = row_matrix.rref(); R
︡9243a76b-db9e-456f-8c4c-3fb687b380bd︡{"stdout":"[1 0 2]\n[0 1 1]\n"}︡
︠8dbca60d-6a5e-47ae-b82e-758c6f5543b5i︠
%md
(Where have we seen that before?)

From this it is clear that the set $\{v_1, v_2\}$ is linearly independent because both rows have pivots.

**The Column Space Algorithm**
︡ebda677e-1076-4505-b4f5-8aec2f60c6e5︡{"html":"<p>(Where have we seen that before?)</p>\n\n<p>From this it is clear that the set $\\{v_1, v_2\\}$ is linearly independent because both rows have pivots.</p>\n\n<p><strong>The Column Space Algorithm</strong></p>\n"}︡
︠b365dd3d-c9f9-417d-ab98-5a21ff47b47f︠
col_matrix = matrix(2,3, [v1,v2]).transpose()
col_matrix
︡cd6a2584-8721-4186-a834-84dc830ec154︡{"stdout":"[1 1]\n[0 1]\n[2 3]\n"}︡
︠297941b1-3706-499b-a44c-fa774883d2fe︠
col_matrix.rref()
︡23b779a8-48da-4518-a3f5-775b642d9513︡{"stdout":"[1 0]\n[0 1]\n[0 0]\n"}︡
︠35841162-4782-4389-9e86-e2291fb3d88di︠
%md
This tells us that our first two columns are pivot columns, so we should keep those as part of our basis for $\mathrm{span}(v_1,v_2)$.
︡94ea7a3f-694c-4915-8711-aca59d464798︡{"html":"<p>This tells us that our first two columns are pivot columns, so we should keep those as part of our basis for $\\mathrm{span}(v_1,v_2)$.</p>\n"}︡
︠c40188bc-528e-43fb-9170-5696ddaec2bai︠

%md
## Spaces associated to Matrices ##
︡840a407c-a594-43fa-9159-9b9fbe54f67e︡{"html":"<h2>Spaces associated to Matrices</h2>\n"}︡
︠2443a274-3caf-40ad-8186-8ddf5ed377e5︠
A = matrix(AA, 3,4, [453, 1/3, 34, 2.sqrt(), 9, 11/9, -3, 8, 98, 10, 21, -4]); A # I have used the ring AA of algebraic numbers so that I can include sqrt(2)
︡9d87ca00-3aea-4c5b-a167-cf4c6b0c48d5︡{"stdout":"[               453                1/3                 34 1.414213562373095?]\n[                 9               11/9                 -3                  8]\n[                98                 10                 21                 -4]\n"}︡
︠2168c0c1-7062-4c0c-81b4-c87fcea2ab9c︠
A.column_space()
︡eb23d808-98ad-414f-b2cb-158f48994784︡{"stdout":"Vector space of degree 3 and dimension 3 over Algebraic Real Field\nBasis matrix:\n[1 0 0]\n[0 1 0]\n[0 0 1]\n"}︡
︠071e3c50-9482-47de-baf1-6c410bf88974︠
A.column_space().dimension()
︡b3d7b5cc-99f3-4d3e-a8ed-d9ccd0c90082︡{"stdout":"3\n"}︡
︠11a104af-03c5-4513-922e-69afdf2b35e6︠
A.column_space().basis()
︡5b7d8967-3542-430d-962d-b72d8a59174a︡{"stdout":"[\n(1, 0, 0),\n(0, 1, 0),\n(0, 0, 1)\n]\n"}︡
︠b3f7c746-76c7-4336-a30b-522b9ec45a40︠
A.row_space()
︡a03c8d0c-f7f1-418d-8c64-4c9d96691dc5︡{"stdout":"Vector space of degree 4 and dimension 3 over Algebraic Real Field\nBasis matrix:\n[                   1                    0                    0 0.12115291228302765?]\n[                   0                    1                    0   1.751194192226904?]\n[                   0                    0                    1  -1.589758444095512?]\n"}︡
︠fb8e616c-20ba-4e61-ba5c-cc91342ff2a2︠
A.row_space().dimension()
︡7e8d71aa-a75d-47c5-82a6-e77eda164d7c︡{"stdout":"3\n"}︡
︠755c95e5-4c53-40ba-bce8-5958d7c9066fi︠
%md
Or, we could do this other ways...
︡ebcc58d9-30df-448d-a269-3850bb3f102e︡{"html":"<p>Or, we could do this other ways&#8230;</p>\n"}︡
︠92361b0b-b1c7-4399-899c-61096b556aae︠
span(A.columns()).dimension()
︡ecf5e697-df07-46f8-9804-3790dda5758b︡{"stdout":"3\n"}︡
︠746b8aa3-cda9-4896-8fa6-f545fa3b66ca︠
span(A.rows()).dimension()
︡b0fcb33f-7078-4ed0-8abd-c0fd5ba64bde︡{"stdout":"3\n"}︡
︠e32e4fd5-6683-417d-bfd3-b8dbbf0f2557︠
A.right_kernel().dimension()
︡5fa19a55-fdd8-4fe1-847c-e2601492799e︡{"stdout":"1\n"}︡
︠ee4b2bab-8baa-4a54-a6b5-8e3fa6381778︠









