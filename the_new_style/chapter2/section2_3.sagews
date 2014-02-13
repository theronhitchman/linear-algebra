︠07946fba-fe2e-442d-92df-4b6cc0dbb7f3i︠
%md
# Section 2.3: Matrices and Multiplication #

Sage has built-in matrix multiplication. You do the obvious thing and it works
︡f78841b9-95f4-4f0d-becb-f7bc310f7fa0︡{"html":"<h1>Section 2.3: Matrices and Multiplication</h1>\n\n<p>Sage has built-in matrix multiplication. You do the obvious thing and it works</p>\n"}︡
︠fa0bddc0-26ef-44be-a017-9332453f360f︠
A = matrix(QQ, 2,2, [[2,1],[1,1]])
B = matrix(QQ, 2,2, [[0,3],[1,1]])
A, B
︡fe78b77f-e393-4cf9-b8b6-8b9803c478c6︡{"stdout":"(\n[2 1]  [0 3]\n[1 1], [1 1]\n)\n"}︡
︠e9aaf569-6385-4706-863f-cf60e23f405e︠
A*B
︡4c731324-2399-4245-af36-698771357c07︡{"stdout":"[1 7]\n[1 4]\n"}︡
︠2d2faa8d-b70a-4298-ad26-4eb27ab4bfddi︠
%md
You can check that it works with the way we defined matrix multiplication as a linear combination of vectors, too.
︡2c7dd189-88f7-47ba-976b-77c9b417c913︡{"html":"<p>You can check that it works with the way we defined matrix multiplication as a linear combination of vectors, too.</p>\n"}︡
︠0a59f7cf-a3ae-4129-8be4-017b0e97d03b︠
b1 = vector([B[0,0], B[1,0]])  # first we define the column vectors by pulling
b2 = vector([B[0,1], B[1,1]])  # out the entries from B and arranging them
b1.column(), b2.column()       # let's have Sage display them as columns
︡3632805d-003a-4741-93c2-9934e2f31995︡{"stdout":"(\n[0]  [3]\n[1], [1]\n)\n"}︡
︠a10bcc42-0d77-4c36-b59a-717006bc2198︠
A*b1.column(), A*b2.column()
︡4d9d0df5-3798-476a-b1e2-736d1fc028e9︡{"stdout":"(\n[1]  [7]\n[1], [4]\n)\n"}︡
︠306b16c5-5906-418c-94f3-df90dfc13d98︠
C = matrix([A*b1, A*b2]).transpose() # let's pile those rows into a matrix and then take transpose to put them in columns
C
︡a26d7738-f462-4312-9e6a-0899eb3bedf9︡{"stdout":"[1 7]\n[1 4]\n"}︡
︠a0d5931b-b8e8-4c5e-bf70-88de001e033d︠
C == A*B # double check
︡fab41304-cfc0-479b-a77f-bd46c9e4d101︡{"stdout":"True\n"}︡
︠78ee303b-9061-436f-9fe0-4598d494bc5ei︠
%md
This kind of thing can be useful for checking our work. The little bit I wrote for section 2.3 had this relevant matrix multiplication:
︡1fd19986-fec5-4d10-b4dc-4a660683b09b︡{"html":"<p>This kind of thing can be useful for checking our work. The little bit I wrote for section 2.3 had this relevant matrix multiplication:</p>\n"}︡
︠6deb7f39-87b5-46a1-8cbf-fc7a44073e00︠
D = matrix(QQ,3,4, [0,3,2,8,1,-1,1,-1,3,2,3,1]); D
︡0e1c3e13-b87e-4542-b3ee-afd58ccb221e︡{"stdout":"[ 0  3  2  8]\n[ 1 -1  1 -1]\n[ 3  2  3  1]\n"}︡
︠d35e5a76-18f3-4a50-b4c5-463e4c1b65db︠
E = matrix.identity(3)
E[2,1] = -3
E
︡1cdaa9fe-b5f8-4b10-9db2-acbe7fed0e72︡{"stdout":"[ 1  0  0]\n[ 0  1  0]\n[ 0 -3  1]\n"}︡
︠e943b96f-fe2b-4294-86b5-3ba433a53ade︠
E*D
︡14700f7b-cd62-4071-948d-7942351566c9︡{"stdout":"[ 0  3  2  8]\n[ 1 -1  1 -1]\n[ 0  5  0  4]\n"}︡
︠61c1b67c-598c-4008-9653-66451bb0919b︠
%md

Ta-da!!!!











