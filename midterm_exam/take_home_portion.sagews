︠1cc06c74-8015-4a96-8ef3-8972906a44a6i︠
%md
# Midterm Exam: Take-home Questions #
There are six questions in this portion of this exam.

This is to be turned in by class time on Wednesday, March 12, 2014. The following methods are acceptable for turning this in:

+ Solutions written on paper and turned in at the start of class.
+ Solutions computed in a Sage worksheet (.sagews) file, downloaded, and emailed to Prof Hitchman at theron.hitchman@uni.edu
︡ea17d31c-34e9-4818-b84b-893581882c9e︡{"html":"<h1>Midterm Exam: Take-home Questions</h1>\n\n<p>There are six questions in this portion of this exam.</p>\n\n<p>This is to be turned in by class time on Wednesday, March 12, 2014. The following methods are acceptable for turning this in:</p>\n\n<ul>\n<li>Solutions written on paper and turned in at the start of class.</li>\n<li>Solutions computed in a Sage worksheet (.sagews) file, downloaded, and emailed to Prof Hitchman at theron.hitchman@uni.edu</li>\n</ul>\n"}︡
︠4dbd0683-efef-48ed-a5e6-4473c60bd58a︠
︡2b86e486-b4c5-4e95-8f02-3cce6fccf538︡
︠b72ceb98-8e75-4991-9240-734f906516dci︠
%md
## Question One ##

Consider the matrix $A$ given below. Find the PLDU decomposition of this matrix.
︡beac9bcb-8f7f-4dcf-801d-9196557da7bf︡{"html":"<h2>Question One</h2>\n\n<p>Consider the matrix $A$ given below. Find the PLDU decomposition of this matrix.</p>\n"}︡
︠9ede4074-95bc-4726-857a-3bd4ae56e9cb︠
A = matrix(QQ, 4,4, [0,1,3,3, 5,6,-1,2, 34,1,-2,1, 0,0,-5,12]); A
︡34139a3f-9742-4200-82d3-f94667ea382a︡{"stdout":"[ 0  1  3  3]\n[ 5  6 -1  2]\n[34  1 -2  1]\n[ 0  0 -5 12]\n"}︡
︠1253ee2b-21d5-4931-b410-f335153db2fb︠

︠964aa866-7397-4688-97da-95899eaa29b2︠

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
︡d56b4cf3-b2dd-4ab3-a321-a18d293080b8︡{"stdout":"[ 1  2  3  5  6]\n[-1  1  2  5  1]\n[ 0  2  1  2  3]\n[ 1  0 23  4 -2]\n[-2 -3  4  5  1]\n"}︡
︠06983463-4004-4321-b342-8b6679cc2ceb︠

︠f40d14a9-e121-412c-923b-eb19ee3d40f9︠

︠4508e4e0-0834-4c87-8ff7-89935424fff1︠

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

︠c7bea5c1-1155-4c14-8608-48d480b8f174︠

︠aecfcc8b-3880-46d0-b650-5d05ac8197dci︠
%md
## Question Four ##
Find a 3-vector $b$ so that the equation
\[\tag{*}
x \begin{pmatrix} 1 \\ 2 \\ -4 \end{pmatrix} + y \begin{pmatrix} 0 \\ 3 \\ 1 \end{pmatrix} + z \begin{pmatrix} 1 \\ 5 \\ -3 \end{pmatrix} = b
\]
has no solution.
︡2b42166c-298c-4304-9700-66ed520c9868︡{"html":"<h2>Question Four</h2>\n\n<p>Find a 3-vector $b$ so that the equation\n\\[\\tag{*}\nx \\begin{pmatrix} 1 \\\\ 2 \\\\ -4 \\end{pmatrix} + y \\begin{pmatrix} 0 \\\\ 3 \\\\ 1 \\end{pmatrix} + z \\begin{pmatrix} 1 \\\\ 5 \\\\ -3 \\end{pmatrix} = b\n\\]\nhas no solution.</p>\n"}︡
︠b8b8dfd6-9b21-4e28-b065-71bb59d04c3d︠

︠29904e7e-2231-4b81-aebe-b0c3d3a76902︠

︠a6ff187f-21f7-4fa8-9550-ec6fa0d03ca6i︠
%md
## Question Five ##
Continue with the setup from Question Four. It is also possible to find a vector $b$ so that the equation (\*) has more than one solution. In fact, there are lots of ways to choose such a vector $b$. Use the kinds of pictures we have been developing to discuss what all of the possible choices of $b$ are that make (\*) have more than one solution.
︡64a70f1b-1102-463e-9f97-d4e46a8c87d8︡{"html":"<h2>Question Five</h2>\n\n<p>Continue with the setup from Question Four. It is also possible to find a vector $b$ so that the equation (*) has more than one solution. In fact, there are lots of ways to choose such a vector $b$. Use the kinds of pictures we have been developing to discuss what all of the possible choices of $b$ are that make (*) have more than one solution.</p>\n"}︡
︠1998cad8-5e2b-4611-9d11-577e612db835︠

︠0e121618-b7ca-4aa8-9492-56f7adf5b0d4︠

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
︡e6d8492f-cfae-44c3-a67c-331a76dae93e︡{"stdout":"2*x + 3*y - z == 7\n4*x - y + 2*z == 0\n"}︡
︠359a0437-39f2-4d11-9c08-cd192d95be97︠









