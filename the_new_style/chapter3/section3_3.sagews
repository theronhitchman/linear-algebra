︠f79dcc80-5c12-4313-80eb-3946c77a9e51i︠
%md
# Chapter Three, Section Three: Rank #

Sage has a built-in command for rank.
︡0df6cd9d-1eab-4f03-9fb1-b47e7967ab97︡{"html":"<h1>Chapter Three, Section Three: Rank</h1>\n\n<p>Sage has a built-in command for rank.</p>\n"}︡
︠971744ae-c867-4fcc-8fba-c165c6e89222︠
A = matrix(QQ, 3,4, [1,2,3,4,5,6,7,8,9,10,11,12]); A
︡ad065c6f-6317-4411-9a62-40daa1e5fe56︡{"stdout":"[ 1  2  3  4]\n[ 5  6  7  8]\n[ 9 10 11 12]\n"}︡
︠eb155ddf-5f23-4115-9460-94581508bda5︠
A.rank()
︡c0430b91-1d80-4b61-809b-2b9208d7e985︡{"stdout":"2\n"}︡
︠d253ee53-22df-4988-8909-ae4225164cdei︠
%md
Sage knows how to do the underlying computations, too. Let's let it compute the reduced row echelon form of $A$:
︡b96f67ba-7db0-4885-accd-6e87d1352ac1︡{"html":"<p>Sage knows how to do the underlying computations, too. Let&#8217;s let it compute the reduced row echelon form of $A$:</p>\n"}︡
︠899bac7c-c7d8-4eb2-a017-184355ad93a4︠
A.rref()
︡1f529a4c-c821-4289-8d07-3cc742db66c7︡{"stdout":"[ 1  0 -1 -2]\n[ 0  1  2  3]\n[ 0  0  0  0]\n"}︡
︠8e3dc02c-9520-4002-b0c5-146264568919i︠
%md
Nice! Note that this fits the "special case" form that Strang uses on page 147. Let's see what else we can do.
︡52f160d4-6633-4997-87bb-5196c612dc79︡{"html":"<p>Nice! Note that this fits the &#8220;special case&#8221; form that Strang uses on page 147. Let&#8217;s see what else we can do.</p>\n"}︡
︠6a37ad29-20ae-4b97-addc-0ec2546164ce︠
A.right_kernel()
︡61695783-ff3e-408b-a368-b92c170425d8︡{"stdout":"Vector space of degree 4 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -3  2]\n[ 0  1 -2  1]"}︡{"stdout":"\n"}︡
︠40eb61a9-f844-4977-9334-d2feceb4490a︠
A.right_kernel().basis_matrix() # this should give back just the matrix part of that last response:
︡f9921f67-324d-4c80-9e6f-80b096f033b5︡{"stdout":"[ 1  0 -3  2]\n[ 0  1 -2  1]\n"}︡
︠ab622e0f-1a5b-4f22-a71a-15af664a925bi︠
%md
That is _almost_ Strang's version of a nullspace matrix in this case. what we need is to make the rows into columns. We know a way to do that:
︡10b379af-c6e0-4d32-acc2-4c4a32a0f118︡{"html":"<p>That is _almost_ Strang&#8217;s version of a nullspace matrix in this case. what we need is to make the rows into columns. We know a way to do that:</p>\n"}︡
︠028c6910-6b67-4286-aa57-e1f1b993732e︠
N = A.right_kernel().basis_matrix().transpose(); N # not strang's nullspace matrix, but does the right thing...
︡ee39d06b-7a80-4d1f-920d-e8d2c10ebde8︡{"stdout":"[ 1  0]\n[ 0  1]\n[-3 -2]\n[ 2  1]\n"}︡
︠cf49dedc-14cd-4733-9f32-aee9cf34e675︠
A*N # huh. still has this property.
︡49f33312-3754-4e55-9f47-27e95d8747c2︡{"stdout":"[0 0]\n[0 0]\n[0 0]\n"}︡
︠4ef12bd3-8ba1-4875-9a7a-6a7586405268i︠
%md
Sage constructs a _different_ version of the nullspace matrix than Strang does. Strang's version is easier to find by hand.

The two matrices are related, of course. Here, I'll show you how:
︡a198d85f-1cac-4f44-9c5a-7ff662efe537︡{"html":"<p>Sage constructs a _different_ version of the nullspace matrix than Strang does. Strang&#8217;s version is easier to find by hand.</p>\n\n<p>The two matrices are related, of course. Here, I&#8217;ll show you how:</p>\n"}︡
︠23dd7dc7-f4c5-4b80-a568-08cd72c97574︠
E = N.matrix_from_rows([2,3]); E
︡caa0fe95-52a1-4ef9-9969-8c4cc396071e︡{"stdout":"[-3 -2]\n[ 2  1]\n"}︡
︠e02c0e0f-897a-426e-a87c-9c2f228d0b25︠
F = N*E.inverse(); F
︡aad39433-3fe3-49a4-81ad-18b6a5859c8d︡{"stdout":"[ 1  2]\n[-2 -3]\n[ 1  0]\n[ 0  1]\n"}︡
︠4dc1ea9d-0299-4d55-8075-7842da81f3cbi︠
%md
*That* is Strang's nullspace matrix.
︡d9a55fde-a652-4696-86bb-9e03279d775f︡{"html":"<p><em>That</em> is Strang&#8217;s nullspace matrix.</p>\n"}︡
︠fbf5a9ef-896d-42cb-8ad8-f815ec70644f︠
A*F
︡ab656ed2-af51-4849-ac95-208de35cbf2b︡{"stdout":"[0 0]\n[0 0]\n[0 0]\n"}︡
︠4027058e-233b-4584-bb0b-dd36653e8e06︠
%md
Where does this relationship come from? Hint, hint: column operations.

Another thing to think about: where did I pick that E from? Look at the rref of A and look at N. Notice anything?
remember that to follow Strang's special case pattern, we wanted our nullspace matrix to look like the identity matrix at the bottom, not the top.









