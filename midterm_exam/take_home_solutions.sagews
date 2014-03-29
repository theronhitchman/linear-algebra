︠1cc06c74-8015-4a96-8ef3-8972906a44a6i︠
%md
# Midterm Exam: Take-home Questions #
There are six questions in this portion of this exam.

This is to be turned in by class time on Wednesday, March 12, 2014. The following methods are acceptable for turning this in:

+ Solutions written on paper and turned in at the start of class.
+ Solutions computed in a Sage worksheet (.sagews) file, downloaded, and emailed to Prof Hitchman at theron.hitchman@uni.edu
︡080dadb6-f732-43e2-a0a2-5d039e49d917︡{"html":"<h1>Midterm Exam: Take-home Questions</h1>\n\n<p>There are six questions in this portion of this exam.</p>\n\n<p>This is to be turned in by class time on Wednesday, March 12, 2014. The following methods are acceptable for turning this in:</p>\n\n<ul>\n<li>Solutions written on paper and turned in at the start of class.</li>\n<li>Solutions computed in a Sage worksheet (.sagews) file, downloaded, and emailed to Prof Hitchman at theron.hitchman@uni.edu</li>\n</ul>\n"}︡
︠4dbd0683-efef-48ed-a5e6-4473c60bd58a︠
︡2b86e486-b4c5-4e95-8f02-3cce6fccf538︡
︠b72ceb98-8e75-4991-9240-734f906516dci︠
%md
## Question One ##

Consider the matrix $A$ given below. Find the PLDU decomposition of this matrix.
︡beac9bcb-8f7f-4dcf-801d-9196557da7bf︡{"html":"<h2>Question One</h2>\n\n<p>Consider the matrix $A$ given below. Find the PLDU decomposition of this matrix.</p>\n"}︡
︠9ede4074-95bc-4726-857a-3bd4ae56e9cb︠
A = matrix(QQ, 4,4, [0,1,3,3, 5,6,-1,2, 34,1,-2,1, 0,0,-5,12]); A
︡7dfcf052-e988-4e6a-9c7b-810ba35ee71d︡{"stdout":"[ 0  1  3  3]\n[ 5  6 -1  2]\n[34  1 -2  1]\n[ 0  0 -5 12]\n"}︡
︠1253ee2b-21d5-4931-b410-f335153db2fb︠
P, L, Uprime = A.LU(pivot='nonzero')
︡b8a3b424-ee10-4616-a43f-d9357d6c8d76︡
︠964aa866-7397-4688-97da-95899eaa29b2︠
Uprime
︡52f6a98c-35ac-462d-8882-f5c3c9bac291︡{"stdout":"[       5        6       -1        2]\n[       0        1        3        3]\n[       0        0    621/5    534/5]\n[       0        0        0 3374/207]\n"}︡
︠0aa338ab-00c0-4ac1-b6f6-d2c4422323a1︠
D = matrix.diagonal([5,1,621/5,3374/207])
︡31de5df1-6a4e-41af-8643-d4925abe0d93︡
︠9575402c-8e29-44cf-9132-e13beb74b621︠
U = D.inverse()*Uprime
︡9ff0b652-ae31-472d-90f8-6e767740ec65︡
︠3181acc2-cb58-4966-a6fb-1210f8a91014︠
P; L; D; U
︡ae5dfb19-a29d-4594-859e-854756dad8e3︡{"stdout":"[0 1 0 0]\n[1 0 0 0]\n[0 0 1 0]\n[0 0 0 1]\n[      1       0       0       0]\n[      0       1       0       0]\n[   34/5  -199/5       1       0]\n[      0       0 -25/621       1]\n[       5        0        0        0]\n[       0        1        0        0]\n[       0        0    621/5        0]\n[       0        0        0 3374/207]\n[      1     6/5    -1/5     2/5]\n[      0       1       3       3]\n[      0       0       1 178/207]\n[      0       0       0       1]\n"}︡
︠77ba82e4-8f46-443e-8935-c15d7dea03c1︠
P*L*D*U == A
︡2e4e1892-a4d5-4d6d-9037-af6bcf316918︡{"stdout":"True\n"}︡
︠8c1f046e-18dc-40ea-b4a5-2ac99adc0aaci︠
%md
## Question Two ##

Consider the matrix $B$ given below. Find matrices $L$ and $S$ so that the following are true:

+ $L$ is lower triangular with 1s on the diagonal,
+ $S$ is symmetric, and
+ $B = LS$.
︡31547670-855d-4b4b-8795-3382f03d9929︡{"html":"<h2>Question Two</h2>\n\n<p>Consider the matrix $B$ given below. Find matrices $L$ and $S$ so that the following are true:</p>\n\n<ul>\n<li>$L$ is lower triangular with 1s on the diagonal, </li>\n<li>$S$ is symmetric, and</li>\n<li>$B = LS$.</li>\n</ul>\n"}︡
︠0857556d-626e-4ca6-949c-741028ef3b63︠
B = matrix(QQ, 5,5, [[1,2,3,5,6], [-1,1,2,5,1], [0,2,1,2,3], [1,0,23,4,-2], [-2,-3,4,5,1]]); B
︡744df87c-4da7-4081-bd2b-68f1816ecc67︡{"stdout":"[ 1  2  3  5  6]\n[-1  1  2  5  1]\n[ 0  2  1  2  3]\n[ 1  0 23  4 -2]\n[-2 -3  4  5  1]\n"}︡
︠06983463-4004-4321-b342-8b6679cc2ceb︠
P, Lprime, Uprime = B.LU(pivot='nonzero') # we follow exercise 77
︡2eb0c95f-f561-4ca5-a1cb-8731864a42f0︡
︠f40d14a9-e121-412c-923b-eb19ee3d40f9︠
P; Lprime; Uprime
︡931e348e-d465-4fc2-a6b7-8c1ee76e362a︡{"stdout":"[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\n[    1     0     0     0     0]\n[   -1     1     0     0     0]\n[    0   2/3     1     0     0]\n[    1  -2/3   -10     1     0]\n[   -2   1/3 -25/7  5/41     1]\n[       1        2        3        5        6]\n[       0        3        5       10        7]\n[       0        0     -7/3    -14/3     -5/3]\n[       0        0        0      -41      -20]\n[       0        0        0        0 2053/287]\n"}︡
︠87a15f9c-134b-4551-be46-da13970531b7︠
D = matrix.diagonal([1,3,-7/3,-41,2053/287])
U = D.inverse()*Uprime
L = Lprime*U.transpose().inverse(); S = U.transpose()*D*U
L; S
︡8ca1260d-b117-47c7-88c5-53a5fc68e0dd︡{"stdout":"[        1         0         0         0         0]\n[       -3         1         0         0         0]\n[       -1        -1         1         0         0]\n[        0        16       -12         1         0]\n[-1663/287      36/7 -1020/287    -15/41         1]\n[        1         2         3         5         6]\n[        2         7        11        20        19]\n[        3        11        15        27        28]\n[        5        20        27         8        30]\n[        6        19        28        30 13931/287]\n"}︡
︠50e56b32-b8e9-49e0-968d-078bef6d5da3︠
L*S == B
︡ef904f4d-516e-4bb9-b929-4784bf7bec43︡{"stdout":"True\n"}︡
︠5eaa3876-8958-40f5-b2d3-98f1eb86fceei︠
%md
## Question Three ##
Let $B$ be the matrix from the last question. Consider the matrix vector equation given below. This has a unique solution! Find it. Describe clearly how you find it. If you use software, describe how you use the software.
\[
B \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5  \end{pmatrix} =
\begin{pmatrix}
1 \\ 1 \\ 2 \\ -1 \\ 3
\end{pmatrix}
\]
︡88b31cb4-ad8c-4c5f-9966-1fe14d72f4f2︡{"html":"<h2>Question Three</h2>\n\n<p>Let $B$ be the matrix from the last question. Consider the matrix vector equation given below. This has a unique solution! Find it. Describe clearly how you find it. If you use software, describe how you use the software.\n\\[\nB \\begin{pmatrix} x_1 \\\\ x_2 \\\\ x_3 \\\\ x_4 \\\\ x_5  \\end{pmatrix} =\n\\begin{pmatrix}\n1 \\\\ 1 \\\\ 2 \\\\ -1 \\\\ 3\n\\end{pmatrix}\n\\]</p>\n"}︡
︠603e118e-a4c8-463f-b3e1-e6c3d13987f8︠
b = vector([1,1,2,-1,3])
Sol = B.augment(b).rref(); Sol
︡a3ed25b8-647a-4026-a2c6-53cc56dc2645︡{"stdout":"[         1          0          0          0          0 -4716/2053]\n[         0          1          0          0          0   384/2053]\n[         0          0          1          0          0   463/2053]\n[         0          0          0          1          0 -1138/2053]\n[         0          0          0          0          1  1717/2053]\n"}︡
︠c7bea5c1-1155-4c14-8608-48d480b8f174︠
xx = Sol.column(5); xx
︡bde5493e-61cb-43ab-8bd7-e2892fbab179︡{"stdout":"(-4716/2053, 384/2053, 463/2053, -1138/2053, 1717/2053)\n"}︡
︠ddf66197-9234-462e-b876-48d1c7c4bcc3︠
B*xx == b
︡06d30774-b3d5-4c87-9797-9e48d74e261a︡{"stdout":"True\n"}︡
︠aecfcc8b-3880-46d0-b650-5d05ac8197dci︠
%md
## Question Four ##
Find a 3-vector $b$ so that the equation
\[\tag{*}
x \begin{pmatrix} 1 \\ 2 \\ -4 \end{pmatrix} + y \begin{pmatrix} 0 \\ 3 \\ 1 \end{pmatrix} + z \begin{pmatrix} 1 \\ 5 \\ -3 \end{pmatrix}= b
\]
has no solution.
︡6e94e1cc-5612-41a7-a268-b601f25daca1︡{"html":"<h2>Question Four</h2>\n\n<p>Find a 3-vector $b$ so that the equation\n\\[\\tag{*}\nx \\begin{pmatrix} 1 \\\\ 2 \\\\ -4 \\end{pmatrix} + y \\begin{pmatrix} 0 \\\\ 3 \\\\ 1 \\end{pmatrix} + z \\begin{pmatrix} 1 \\\\ 5 \\\\ -3 \\end{pmatrix}= b\n\\]\nhas no solution.</p>\n"}︡
︠b8b8dfd6-9b21-4e28-b065-71bb59d04c3d︠
# this will work if we pick any vector b not in the plane spanned by these two vectors.
# let's look a a picture to get a sense of what is going on.
x,y,z  = var('x y z')
u = vector([1,2,-4]); v = vector([0,3,1]); w = vector([1,5,-3])
P = parametric_plot3d(x*u + y*v , [x,-3,3],[y,-3,3], opacity=.7) + plot(u,color='black') + plot(v, color='green') + plot(w, color='red')
P # this plots all the scalar multiples of u and v, and then the three vectors, too.
︡1b78c2d8-1599-4517-8846-ccd57788eaf4︡{"html":"<div id=134502f4-e53f-4f5f-8ee6-ed39fcb32a5c style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 30.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#134502f4-e53f-4f5f-8ee6-ed39fcb32a5c').salvus_threejs(obj)"},"once":false}︡
︠29904e7e-2231-4b81-aebe-b0c3d3a76902︠
# all of the vectors lie in a common plane! We just need to pick b so that it doesn't lie in that plane
# it looks like anything pointing in just the x direction would do it.
new = vector([10,0,0])
P + plot(new, color='red', axes=True)
︡03e898a4-bbb9-4122-a221-5399c0468f75︡{"html":"<div id=69c8fdb4-5fb0-4aa8-a056-31523cf5642e style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 30.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#69c8fdb4-5fb0-4aa8-a056-31523cf5642e').salvus_threejs(obj)"},"once":false}︡
︠bda56004-f4b9-483c-a8e0-acef5827ce27︠
# it is also possible to do this algebraically.
M = matrix(SR, 3,3, [1,2,-4, 0,3,1, 1,5,-3]).transpose(); M

︡b7130b6e-cdb5-4537-95da-ae8f0c8b8a40︡{"stdout":"[ 1  0  1]\n[ 2  3  5]\n[-4  1 -3]\n"}︡
︠a89661db-2c84-4494-984a-b26cc14e2148︠
r,s,t = var('r s t')
N = M.augment(vector([r,s,t])); N
︡d6d627f9-de69-46c7-9cfd-ccc962e650f7︡{"stdout":"[ 1  0  1  r]\n[ 2  3  5  s]\n[-4  1 -3  t]\n"}︡
︠299d5824-3a56-417c-be7b-72aad51b68a9︠
N.add_multiple_of_row(1,0,-2); N
︡7aabe575-f594-472f-b96a-cca17d33ee7d︡{"stdout":"[       1        0        1        r]\n[       0        3        3 -2*r + s]\n[      -4        1       -3        t]\n"}︡
︠3e26466f-8020-4f7d-9cbb-73f108577ffb︠
N.add_multiple_of_row(2,0,4); N
︡d8b70f65-96c8-4edc-8794-5af9c5948578︡{"stdout":"[       1        0        1        r]\n[       0        3        3 -2*r + s]\n[       0        1        1  4*r + t]\n"}︡
︠43a62d50-0854-4ff7-bcd5-1b8355a1d8eb︠
N.add_multiple_of_row(2,1,-1/3); N
︡3cd3ca81-4d87-4e2e-8b9c-a9016fc5362e︡{"stdout":"[                 1                  0                  1                  r]\n[                 0                  3                  3           -2*r + s]\n[                 0                  0                  0 14/3*r - 1/3*s + t]\n"}︡
︠b522d30d-2260-4f7e-942e-f4adb77db321︠
# that makes it clear that the system will break if we choose (r,s,t) so that the last entry there is not zero. (10,0,0) as above certainly does the trick.
︠a1ac9b06-b41d-4434-be9b-e7d5b4dc634a︠
︠a6ff187f-21f7-4fa8-9550-ec6fa0d03ca6i︠
%md
## Question Five ##
Continue with the setup from Question Four. It is also possible to find a vector $b$ so that the equation (\*) has more than one solution. In fact, there are lots of ways to choose such a vector $b$. Use the kinds of pictures we have been developing to discuss what all of the possible choices of $b$ are that make (\*) have more than one solution.
︡64a70f1b-1102-463e-9f97-d4e46a8c87d8︡{"html":"<h2>Question Five</h2>\n\n<p>Continue with the setup from Question Four. It is also possible to find a vector $b$ so that the equation (*) has more than one solution. In fact, there are lots of ways to choose such a vector $b$. Use the kinds of pictures we have been developing to discuss what all of the possible choices of $b$ are that make (*) have more than one solution.</p>\n"}︡
︠1998cad8-5e2b-4611-9d11-577e612db835︠
# In this case, we need only pick some vector b which lies in the plane. To do this, choose any linear combination of the first two vectors.
︡4966e21e-5909-4536-b037-e281b4a7a982︡
︠0e121618-b7ca-4aa8-9492-56f7adf5b0d4︠
# alternatively, you can pick any vector (r,s,t) which makes the number 14/3*r - 1/3 * s + t = 0. That is the equation that defines the plane spanned by our three vectors.
︠c572923f-10cb-4437-bb37-3984e0813573︠

︠989e1bcd-7d0c-4921-b0f7-fb128e08790bi︠
%md
## Question Six ##
In task 12 of the in-class part of this exam, we considered the following system of equations:
\begin{equation*}
\left\{\begin{array}{rrrrrrr}
2x & + & 3y & - & z & = & 7\\
4x & - & y & + & 2z & = & 0
\end{array}\right.
\end{equation*}
In particular, you gave two other equivalent algebraic forms of this system involving matrices and/or vectors. That means we have a total of *three* different ways to express the same information.
Each of the three forms above has a picture associated with it. Make the three pictures and describe what a _solution_ to the equations means in each one.
︡2e61b93f-ed98-40f6-a5ae-3e3583b0d68c︡{"html":"<h2>Question Six</h2>\n\n<p>In task 12 of the in-class part of this exam, we considered the following system of equations:\n\\begin{equation*}\n\\left\\{\\begin{array}{rrrrrrr}\n2x & + & 3y & - & z & = & 7\\\\\n4x & - & y & + & 2z & = & 0\n\\end{array}\\right.\n\\end{equation*}\nIn particular, you gave two other equivalent algebraic forms of this system involving matrices and/or vectors. That means we have a total of <em>three</em> different ways to express the same information.\nEach of the three forms above has a picture associated with it. Make the three pictures and describe what a _solution_ to the equations means in each one.</p>\n"}︡
︠d3a660cb-e6bb-4978-9a61-3bad31ba54ea︠
x, y, z = var('x y z')
eq1 = 2*x + 3*y - z == 7
eq2 = 4*x - y + 2*z == 0
eq1; eq2
︡eaa1aac1-6e8b-4597-af27-e472fc68e38e︡{"stdout":"2*x + 3*y - z == 7\n4*x - y + 2*z == 0\n"}︡
︠359a0437-39f2-4d11-9c08-cd192d95be97i︠
%md
Part One: the row picture

The system represents two planes in space, and we want to find their intersection. In this case, it is a line.
︡666c9a6a-2d8a-44e1-94ec-789cc3a5a8cf︡{"html":"<p>Part One: the row picture</p>\n\n<p>The system represents two planes in space, and we want to find their intersection. In this case, it is a line.</p>\n"}︡
︠285f7f91-593a-497a-a691-a5fe08b39548︠
RowPic = implicit_plot3d(eq1, [x,-5,5],[y,-5,5],[z,-5,5], color='red')
RowPic+= implicit_plot3d(eq2, [x,-5,5],[y,-5,5],[z,-5,5], color='blue')
RowPic
︡85f2c5cc-cacb-4172-85fe-a029f312912c︡{"html":"<div id=609d9cfa-ed22-48c7-84a0-068b102a99f1 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 10.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#609d9cfa-ed22-48c7-84a0-068b102a99f1').salvus_threejs(obj)"},"once":false}︡
︠9011328f-c2f2-4c17-bdd5-6c106855a6c0i︠
%md
Part Two: the column picture

Here we are taking a linear combination of three vectors in the plane, and trying to hit a third, specified vector. A solution is a choice of coefficients for the linear combination.
︡6c06299d-a3e1-40af-8d4b-4bd2b89c63b7︡{"html":"<p>Part Two: the column picture</p>\n\n<p>Here we are taking a linear combination of three vectors in the plane, and trying to hit a third, specified vector. A solution is a choice of coefficients for the linear combination.</p>\n"}︡
︠d105df4b-4b94-4a33-a7f8-134aee3441e6︠
ColPic = plot(vector([2,4]), color='blue') + plot(vector([3,-1]), color='blue') + plot(vector([-1,2]),color='blue') + plot(vector([7,0]), color='red')
ColPic
︡959aad37-96bc-4780-882d-fd4f1bbb3963︡{"once":false,"file":{"show":true,"uuid":"ece8786a-ada6-44da-9fcc-8846e301b981","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute17a/12720/tmp_MjfUZM.png"}}︡
︠532b9009-99cd-4259-bd8c-c545adc0d819i︠
%md
Part Three: the transformational view

Here we have a matrix acting as a kind of function which takes as inputs vectors in 3-space, and has as outputs vectors in the plane (2-space).
A solution is the choice of some point in 3-space which gets mapped on to the point $(7,0)$
︡4d54d869-9e6b-4889-a845-df9e388a67cc︡{"html":"<p>Part Three: the transformational view</p>\n\n<p>Here we have a matrix acting as a kind of function which takes as inputs vectors in 3-space, and has as outputs vectors in the plane (2-space).\nA solution is the choice of some point in 3-space which gets mapped on to the point $(7,0)$</p>\n"}︡
︠ab9d57e3-42ed-45f2-9341-c380c849d670︠
# Here I will plot the inputs and outputs as two pictures, but they go together.
InputPic = plot(vector([1,0,0]), color='purple') + plot(vector([0,1,0]), color='blue') + plot(vector([0,0,1]),color='green')
InputPic
︡05c048d9-79de-41d2-abee-29a429c3278e︡{"html":"<div id=e4492ad4-36ef-4dcb-bbd5-cd719b4c79c2 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 2.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#e4492ad4-36ef-4dcb-bbd5-cd719b4c79c2').salvus_threejs(obj)"},"once":false}︡
︠bc12d2a7-2ef3-4a86-8a5e-cc945d61ba14︠
# now, the big realization is that the output picture _is the column picture_. Let me recolor it, though.
OutPic = plot(vector([2,4]), color='purple') + plot(vector([3,-1]), color='blue') + plot(vector([-1,2]),color='green') + point([7,0], color='red', size=20)
OutPic

︡9952d5ce-4332-41fc-a2b6-f6a2b4e69e75︡{"once":false,"file":{"show":true,"uuid":"21b1993e-af93-493c-86db-35d8051b3284","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute17a/12720/tmp_ePSd9z.png"}}︡
︠01691088-9d6c-435d-b6a7-bc571d60a8b3︠
# solving the system of equations means finding all of those points in 3-space which get mapped onto the red dot.
# The matrix takes all of 3 dimensional space and folds it down onto the plane somehow so that the blue, green and
#    purple vectors go as indicated.  What we are looking for is the "pre-image" of the red dot.









