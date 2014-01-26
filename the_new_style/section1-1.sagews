︠3547f17c-5c9c-4eae-9ca9-1bf710271303i︠
%md
# Vectors and Linear Combinations #

Algebraically, a *vector* is a stack of numbers in a set of parentheses or brackets, like this
\[
\begin{pmatrix} 2 \\ 7 \\ 9 \end{pmatrix}, \text{ or } \begin{bmatrix}2 \\ 7 \\ 9 \end{bmatrix},
\text{ or } \begin{pmatrix} 2 & 7 & 9 \end{pmatrix} .
\]
The individual numbers are called the *components* or *entries* or *coordinates* of the vector.
For example, $7$ is the second component of the vectors above.

The first two vectors above are called *column* vectors because they are stacked vertically.
The third is called a *row* vector because it is arranged horizontally.
For this class, we will always use column vectors, but to save space, we might sometimes write them as row vectors.
It is up to you to make the switch.
(We will see later how this matters!)

Vectors can take lots of different sizes. The vectors above are all $3$-vectors.
Here is a $2$-vector: $\left(\begin{smallmatrix} 71 \\ -12 \end{smallmatrix}\right)$.
Here is a $4$-vector: $\left(\begin{smallmatrix} \pi \\ 0 \\ -\pi \\ 1\end{smallmatrix}\right)$.

The main value in using vectors lies in their standard interpretations. Let's focus on $3$-vectors for now.
The vector $\left(\begin{smallmatrix} x \\ y \\ z\end{smallmatrix}\right)$ can represent

* A point in space described in the standard three-dimensional rectangular coordinate system with $x$ coordinate equal to $a$, $y$-coordinate equal to $b$ and $z$ coordinate equal to $c$.
* An arrow in space which points from the *origin* $(0,0,0)$ to the point $(a,b,c)$.
* An arrow in space which points from some point $(x,y,z)$ to the point $(x+a, y+b, z+c)$.

#### Operations on Vectors ####

There are two operations on vectors which are of utmost importance for linear algebra.
(In fact, if your problem has these operations in it, there is a chance you are doing linear algebra already.)

* *Scalar Multiplication*

    Given a number $\lambda \in \mathbb{R}$ and a vector $v = \left(\begin{smallmatrix} a \\ b \\ c \end{smallmatrix}\right)$, we form the new vector
    \[ \lambda v = \left(\begin{smallmatrix} \lambda a \\ \lambda b \\ \lambda c \end{smallmatrix}\right).\]

* *Addition*

    Given a vector $v = \left(\begin{smallmatrix} a \\ b \\ c \end{smallmatrix}\right)$ and a vector $w = \left(\begin{smallmatrix} d \\ e \\ f \end{smallmatrix}\right)$ of the same size, we form their *sum*
    \[ v+w = \left(\begin{smallmatrix} a+d \\ b+e \\ c+f \end{smallmatrix}\right) \]

These operations have "obvious" generalizations to vectors of different sizes. Because things go entry-by-entry, these are often called _coordinate-wise_ operations.

Combining these two operations gives us the notion of a *linear combination*. If $\lambda$ and $\mu$ arenumbers and $v$ and $w$ are vectors of a common size, then the vector
\[ \lambda v + \mu w \]
is a linear combination of $v$ and $w$.


︡b1dfa953-d128-481f-8ba3-a8a8da71aaf4︡{"html":"<h1>Vectors and Linear Combinations</h1>\n\n<p>Algebraically, a <em>vector</em> is a stack of numbers in a set of parentheses or brackets, like this\n\\[\n\\begin{pmatrix} 2 \\\\ 7 \\\\ 9 \\end{pmatrix}, \\text{ or } \\begin{bmatrix}2 \\\\ 7 \\\\ 9 \\end{bmatrix},\n\\text{ or } \\begin{pmatrix} 2 & 7 & 9 \\end{pmatrix} .\n\\]\nThe individual numbers are called the <em>components</em> or <em>entries</em> or <em>coordinates</em> of the vector.\nFor example, $7$ is the second component of the vectors above.</p>\n\n<p>The first two vectors above are called <em>column</em> vectors because they are stacked vertically.\nThe third is called a <em>row</em> vector because it is arranged horizontally.\nFor this class, we will always use column vectors, but to save space, we might sometimes write them as row vectors.\nIt is up to you to make the switch.\n(We will see later how this matters!)</p>\n\n<p>Vectors can take lots of different sizes. The vectors above are all $3$-vectors.\nHere is a $2$-vector: $\\left(\\begin{smallmatrix} 71 \\\\ -12 \\end{smallmatrix}\\right)$.\nHere is a $4$-vector: $\\left(\\begin{smallmatrix} \\pi \\\\ 0 \\\\ -\\pi \\\\ 1\\end{smallmatrix}\\right)$.</p>\n\n<p>The main value in using vectors lies in their standard interpretations. Let&#8217;s focus on $3$-vectors for now.\nThe vector $\\left(\\begin{smallmatrix} x \\\\ y \\\\ z\\end{smallmatrix}\\right)$ can represent</p>\n\n<ul>\n<li>A point in space described in the standard three-dimensional rectangular coordinate system with $x$ coordinate equal to $a$, $y$-coordinate equal to $b$ and $z$ coordinate equal to $c$.</li>\n<li>An arrow in space which points from the <em>origin</em> $(0,0,0)$ to the point $(a,b,c)$.</li>\n<li>An arrow in space which points from some point $(x,y,z)$ to the point $(x+a, y+b, z+c)$.</li>\n</ul>\n\n<h4>Operations on Vectors</h4>\n\n<p>There are two operations on vectors which are of utmost importance for linear algebra.\n(In fact, if your problem has these operations in it, there is a chance you are doing linear algebra already.)</p>\n\n<ul>\n<li><p><em>Scalar Multiplication</em></p>\n\n<p>Given a number $\\lambda \\in \\mathbb{R}$ and a vector $v = \\left(\\begin{smallmatrix} a \\\\ b \\\\ c \\end{smallmatrix}\\right)$, we form the new vector\n\\[ \\lambda v = \\left(\\begin{smallmatrix} \\lambda a \\\\ \\lambda b \\\\ \\lambda c \\end{smallmatrix}\\right).\\]</p></li>\n<li><p><em>Addition</em></p>\n\n<p>Given a vector $v = \\left(\\begin{smallmatrix} a \\\\ b \\\\ c \\end{smallmatrix}\\right)$ and a vector $w = \\left(\\begin{smallmatrix} d \\\\ e \\\\ f \\end{smallmatrix}\\right)$ of the same size, we form their <em>sum</em>\n\\[ v+w = \\left(\\begin{smallmatrix} a+d \\\\ b+e \\\\ c+f \\end{smallmatrix}\\right) \\]</p></li>\n</ul>\n\n<p>These operations have &#8220;obvious&#8221; generalizations to vectors of different sizes. Because things go entry-by-entry, these are often called _coordinate-wise_ operations.</p>\n\n<p>Combining these two operations gives us the notion of a <em>linear combination</em>. If $\\lambda$ and $\\mu$ arenumbers and $v$ and $w$ are vectors of a common size, then the vector\n\\[ \\lambda v + \\mu w \\]\nis a linear combination of $v$ and $w$.</p>\n"}︡
︠4d59dbcc-284e-4cd8-88cc-bd526e9d830d︠

︠e0aa1711-6836-4f27-8364-682a069b3030︠
## This is a Sage ``interact''. you can use it to explore linear combinations of 2-vectors.

@interact(layout= {'top':[['a','c','e'],['b','d','f'],['l','m']]})
def two_dim_plot(a=input_box(1,width=10), b=input_box(2,width=10),c=input_box(2,width=10), d=input_box(1,width=10),
                 l=input_box(1,width=10), m=input_box(1,width=10), e=input_box(2,width=10),f=input_box(2,width=10)):
    two_dim = arrow([0,0], [a,b], color ='red') + arrow([0,0],[c,d],color='blue')
    two_dim+= arrow([0,0], [l*a,l*b], color='red') + arrow([m*c,m*d],[l*a+m*c,l*b+m*d],color='red')
    two_dim+= arrow([0,0], [m*c,m*d], color='blue') + arrow([l*a,l*b],[l*a+m*c,l*b+m*d],color='blue')
    two_dim+= point([e,f],size=20,color='black',zorder=2)+ arrow([l*a,l*b],[l*a+m*c,l*b+m*d],color='blue')
    two_dim+= text('v = (a,b)', [a-.1,b+.1], color='red') + text('w=(c,d)', [c+.1,d-.1],color='purple')
    two_dim+= text('l*v + m*w', [l*a+m*c+.1, l*b+m*d+.1],color='purple') + text('P=(e,f)', [e+.1,f+.1],color='black')
    two_dim+= arrow([0,0],[l*a+m*c,l*b+m*d],color='purple', arrowsize=1, width=1)
    two_dim.show(axes=True)

︡0e0ccf24-0c62-4606-b6ed-abd373d83dc2︡{"interact":{"style":"None","flicker":false,"layout":[[["a",4,null],["c",4,null],["e",4,null]],[["b",4,null],["d",4,null],["f",4,null]],[["l",6,null],["m",6,null]],[["",12,null]]],"id":"f517da19-11e2-4b7f-a176-31c63de47764","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":2,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":2,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":1,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null},{"control_type":"input-box","default":1,"label":"l","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"l","type":null},{"control_type":"input-box","default":1,"label":"m","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"m","type":null},{"control_type":"input-box","default":2,"label":"e","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"e","type":null},{"control_type":"input-box","default":2,"label":"f","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"f","type":null}]}}︡
︠261010fc-0299-4e21-af50-780c13460df7i︠
︡58580608-b196-4668-a5f0-602d5b9a633c︡
︠9fbc8741-c9c1-4dea-9844-995861d05ba6︠
## This is a different sage ``interact''. you can use this one to explore linear combinations of 3-vectors.

@interact(layout= {'top':[['a','d','g'],['b','e','h'],['c','f','i'],['l','m']]})
def three_dim_plot(a=input_box(1,width=10), b=input_box(2,width=10),c=input_box(0,width=10), d=input_box(1,width=10),
                 l=input_box(1,width=10), m=input_box(1,width=10), e=input_box(2,width=10),f=input_box(2,width=10),
                 g=input_box(0,width=10), h=input_box(2,width=10), i=input_box(2,width=10)):
    thr_dim = arrow([0,0,0], [a,b,c], color ='red') + arrow([0,0,0],[d,e,f],color='blue')
    thr_dim+= arrow([0,0,0], [l*a,l*b,l*c], color='red') + arrow([m*d,m*e,m*f],[l*a+m*d,l*b+m*e,l*c+m*f],color='red')
    thr_dim+= arrow([0,0,0], [m*d,m*e,m*f], color='blue') + arrow([l*a,l*b,l*c],[l*a+m*d,l*b+m*e,l*c+m*f],color='blue')
    thr_dim+= point([g,h,i], size=10,color='black',zorder=2)+ arrow([l*a,l*b,l*c],[l*a+m*d,l*b+m*e,l*c+m*f],color='blue')
    thr_dim+= text3d('v = (a,b,c)', [a-.1,b+.1,c], color='red') + text3d('w=(d,e,f)', [d+.1,e-.1,f],color='purple')
    thr_dim+= text3d('l*v + m*w', [l*a+m*d+.1, l*b+m*e+.1,l*c+m*f],color='purple')
    thr_dim+= text3d('P=(g,h,i)', [g+.1,h+.1,i],color='black')
    thr_dim+= arrow([0,0,0],[l*a+m*d,l*b+m*e,l*c+m*f],color='purple', arrowsize=1, width=1)
    show(thr_dim, axes=True)

︡911639db-c89e-49b8-b722-b22bddffda7c︡{"interact":{"style":"None","flicker":false,"layout":[[["a",4,null],["d",4,null],["g",4,null]],[["b",4,null],["e",4,null],["h",4,null]],[["c",4,null],["f",4,null],["i",4,null]],[["l",6,null],["m",6,null]],[["",12,null]]],"id":"f52783a0-05d5-4375-b79c-5cae2bff0ae7","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":2,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":0,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":1,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null},{"control_type":"input-box","default":1,"label":"l","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"l","type":null},{"control_type":"input-box","default":1,"label":"m","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"m","type":null},{"control_type":"input-box","default":2,"label":"e","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"e","type":null},{"control_type":"input-box","default":2,"label":"f","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"f","type":null},{"control_type":"input-box","default":0,"label":"g","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"g","type":null},{"control_type":"input-box","default":2,"label":"h","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"h","type":null},{"control_type":"input-box","default":2,"label":"i","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"i","type":null}]}}︡
︠6f36c92b-0d13-4ac2-b219-080d334ed160i︠
%md
## Questions for Section 1.1 ##

### Exercise 1 ###
Find an example of numbers $\lambda$ and $\mu$ so that
\[ \lambda \begin{pmatrix} 1 \\ 2 \end{pmatrix} = \mu \begin{pmatrix} 2 \\ -1 \end{pmatrix}\]
or describe why no such example can exist.

︡f14dcaa5-ca55-42e6-ad13-1380e6ff9abd︡{"html":"<h2>Questions for Section 1.1</h2>\n\n<h3>Exercise 1</h3>\n\n<p>Find an example of numbers $\\lambda$ and $\\mu$ so that\n\\[ \\lambda \\begin{pmatrix} 1 \\\\ 2 \\end{pmatrix} = \\mu \\begin{pmatrix} 2 \\\\ -1 \\end{pmatrix}\\]\nor describe why no such example can exist.</p>\n"}︡
︠2a2ae970-09ae-4af4-82da-a7910466b19ei︠
%md
#### Exercise 2 ####
Find a vector $b = \left( \begin{smallmatrix} b_1 \\ b_2 \end{smallmatrix} \right)$ so that
\[
\begin{pmatrix} 2 \\ 7 \end{pmatrix} + \begin{pmatrix} b_1 \\ b_2 \end{pmatrix} = \begin{pmatrix} 10 \\ -3 \end{pmatrix}
\]
or describe why no such example can exist.

︡05cf8837-75b8-4d84-8ce1-fa18568c8763︡{"html":"<h4>Exercise 2</h4>\n\n<p>Find a vector $b = \\left( \\begin{smallmatrix} b_1 \\\\ b_2 \\end{smallmatrix} \\right)$ so that\n\\[\n\\begin{pmatrix} 2 \\\\ 7 \\end{pmatrix} + \\begin{pmatrix} b_1 \\\\ b_2 \\end{pmatrix} = \\begin{pmatrix} 10 \\\\ -3 \\end{pmatrix}\n\\]\nor describe why no such example can exist.</p>\n"}︡
︠a492ce5a-9b9d-4158-afc5-3ddc2b6967e8i︠
%md
#### Exercise 3 ####
Find a vector $b = \left( \begin{smallmatrix} b_1 \\ b_2 \end{smallmatrix} \right)$ so that this equation has at least one solution $\lambda$
\[
\begin{pmatrix} 1 \\ -2 \end{pmatrix} + \lambda \begin{pmatrix} b_1 \\ b_2 \end{pmatrix} = \begin{pmatrix} 2 \\ 3 \end{pmatrix}
\]
or describe why no such example can exist.

︡fa4e52c8-bf0b-4dba-9906-db85007e9a82︡{"html":"<h4>Exercise 3</h4>\n\n<p>Find a vector $b = \\left( \\begin{smallmatrix} b_1 \\\\ b_2 \\end{smallmatrix} \\right)$ so that this equation has at least one solution $\\lambda$\n\\[\n\\begin{pmatrix} 1 \\\\ -2 \\end{pmatrix} + \\lambda \\begin{pmatrix} b_1 \\\\ b_2 \\end{pmatrix} = \\begin{pmatrix} 2 \\\\ 3 \\end{pmatrix}\n\\]\nor describe why no such example can exist.</p>\n"}︡
︠88270bc7-da85-4907-88e8-d742c17f802fi︠
%md
#### Exercise 4 ####
Give examples of numbers $a$ and $b$ such that
\[ a \begin{pmatrix} 2 \\ 1 \end{pmatrix} + b \begin{pmatrix} 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 7 \\ 5 \end{pmatrix}
\]
or explain why no such numbers exist.

︡e9a7cadb-7263-4bbf-86dd-9891d30c5dff︡{"html":"<h4>Exercise 4</h4>\n\n<p>Give examples of numbers $a$ and $b$ such that\n\\[ a \\begin{pmatrix} 2 \\\\ 1 \\end{pmatrix} + b \\begin{pmatrix} 1 \\\\ 1 \\end{pmatrix} = \\begin{pmatrix} 7 \\\\ 5 \\end{pmatrix}\n\\]\nor explain why no such numbers exist.</p>\n"}︡
︠da9b831a-4236-4e2c-8dab-29e32eaea85ei︠
%md
In the situations like the last exercise, the pair of numbers $a, b$ is called a *solution* to the equation.
︡4c3f2b94-010e-4768-992d-e81497a55fa8︡{"html":"<p>In the situations like the last exercise, the pair of numbers $a, b$ is called a <em>solution</em> to the equation.</p>\n"}︡
︠b7175bfa-e70f-4fa6-8391-22b4682807a3i︠
%md
#### Exercise 5 ####
Give an example of a vector $X = \left( \begin{smallmatrix} x \\ y \end{smallmatrix} \right)$ so that the equation
\[
a \begin{pmatrix} 2 \\ 1 \end{pmatrix} + b X = \begin{pmatrix}7 \\ 5 \end{pmatrix}
\]
has no solution $(a,b)$, or explain why no such example exists.

︡d911b82c-8cf0-43e0-9ef5-87d36631e744︡{"html":"<h4>Exercise 5</h4>\n\n<p>Give an example of a vector $X = \\left( \\begin{smallmatrix} x \\\\ y \\end{smallmatrix} \\right)$ so that the equation\n\\[\na \\begin{pmatrix} 2 \\\\ 1 \\end{pmatrix} + b X = \\begin{pmatrix}7 \\\\ 5 \\end{pmatrix}\n\\]\nhas no solution $(a,b)$, or explain why no such example exists.</p>\n"}︡
︠165affdd-7631-4817-b9f1-c9de4630d94bi︠
%md
#### Exercise 6 ####
Give an example of a number $\lambda$ so that
\[
\lambda \begin{pmatrix} 7 \\ -1 \\ 2 \end{pmatrix} + 3 \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 49 \\ -7 \\ 20 \end{pmatrix}
\]
or explain why no such number exists.
︡eb658512-fc21-47cd-ac02-e6a070658895︡{"html":"<h4>Exercise 6</h4>\n\n<p>Give an example of a number $\\lambda$ so that\n\\[\n\\lambda \\begin{pmatrix} 7 \\\\ -1 \\\\ 2 \\end{pmatrix} + 3 \\begin{pmatrix} 0 \\\\ 0 \\\\ 1 \\end{pmatrix} = \\begin{pmatrix} 49 \\\\ -7 \\\\ 20 \\end{pmatrix}\n\\]\nor explain why no such number exists.</p>\n"}︡
︠cb11deef-cc9f-40e4-bd2a-c9facf90709ei︠
%md
#### Exercise 7 ####
Give an example of numbers $\lambda$ and $\mu$ which are a solution to the equation
\[
\lambda \begin{pmatrix} 7 \\ -1 \\ 2 \end{pmatrix} + \mu \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 49 \\ -7 \\ 20 \end{pmatrix}
\]
or explain why no such solution exists.
︡044d354d-9c2d-4178-967a-f0e19bb9460c︡{"html":"<h4>Exercise 7</h4>\n\n<p>Give an example of numbers $\\lambda$ and $\\mu$ which are a solution to the equation\n\\[\n\\lambda \\begin{pmatrix} 7 \\\\ -1 \\\\ 2 \\end{pmatrix} + \\mu \\begin{pmatrix} 0 \\\\ 0 \\\\ 1 \\end{pmatrix} = \\begin{pmatrix} 49 \\\\ -7 \\\\ 20 \\end{pmatrix}\n\\]\nor explain why no such solution exists.</p>\n"}︡
︠665f77a1-dace-4e84-8475-590d5f1bef3ci︠
%md
#### Exercise 8 ####
Give an example of a vector $w = \begin{pmatrix} x \\ y \\ z \end{pmatrix}$ so that the equation
\[
a \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + b \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix}
\]
has no solution $(a,b)$, or explain why no such vector exists.
︡dda796dc-f8c0-41e0-aaf3-9b31d9fadc79︡{"html":"<h4>Exercise 8</h4>\n\n<p>Give an example of a vector $w = \\begin{pmatrix} x \\\\ y \\\\ z \\end{pmatrix}$ so that the equation\n\\[\na \\begin{pmatrix} 1 \\\\ 1 \\\\ 0 \\end{pmatrix} + b \\begin{pmatrix} 0 \\\\ 0 \\\\ 1 \\end{pmatrix} = \\begin{pmatrix} x \\\\ y \\\\ z \\end{pmatrix}\n\\]\nhas no solution $(a,b)$, or explain why no such vector exists.</p>\n"}︡
︠db4365b6-b28c-4fed-b497-9f02cdfa6b69i︠
%md
#### Exercise 9 ####
Give an example of a vector $w = \begin{pmatrix} x \\ y \\ z \end{pmatrix}$ so that the equation
\[
a \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + b \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix}
\]
has exactly one solution $(a,b)$, or explain why no such vector exists.
︡05bba03b-9387-4de7-b856-86d3c967ddf8︡{"html":"<h4>Exercise 9</h4>\n\n<p>Give an example of a vector $w = \\begin{pmatrix} x \\\\ y \\\\ z \\end{pmatrix}$ so that the equation\n\\[\na \\begin{pmatrix} 1 \\\\ 1 \\\\ 0 \\end{pmatrix} + b \\begin{pmatrix} 0 \\\\ 0 \\\\ 1 \\end{pmatrix} = \\begin{pmatrix} x \\\\ y \\\\ z \\end{pmatrix}\n\\]\nhas exactly one solution $(a,b)$, or explain why no such vector exists.</p>\n"}︡
︠3ee4dfa7-85b5-4d5f-8b4f-77a6549686fci︠
%md
#### Exercise 10 ####
Give an example of a vector $X = \begin{pmatrix} x \\ y \\ z\end{pmatrix}$ such that the equation
\[
a \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + b \begin{pmatrix} 0 \\ 0 \\ 1\end{pmatrix} + c \begin{pmatrix} 1 \\ 1 \\ 1\end{pmatrix} = \begin{pmatrix}x \\ y \\ z \end{pmatrix}
\]
has no solutions $(a,b,c)$, or explain why no such vector exists.
︡1df01702-cfce-40e3-9ddd-a397916ae4e2︡{"html":"<h4>Exercise 10</h4>\n\n<p>Give an example of a vector $X = \\begin{pmatrix} x \\\\ y \\\\ z\\end{pmatrix}$ such that the equation\n\\[\na \\begin{pmatrix} 1 \\\\ 1 \\\\ 0 \\end{pmatrix} + b \\begin{pmatrix} 0 \\\\ 0 \\\\ 1\\end{pmatrix} + c \\begin{pmatrix} 1 \\\\ 1 \\\\ 1\\end{pmatrix} = \\begin{pmatrix}x \\\\ y \\\\ z \\end{pmatrix}\n\\]\nhas no solutions $(a,b,c)$, or explain why no such vector exists.</p>\n"}︡
︠d7813a55-dd88-448b-b2dc-1bb67162ddf1i︠
%md
#### Exercise 11 ####
Give an example of a vector $X = \begin{pmatrix} x \\ y \\ z\end{pmatrix}$ such that the equation
\[
a \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + b \begin{pmatrix} 0 \\ 0 \\ 1\end{pmatrix} + c \begin{pmatrix} 1 \\ 1 \\ 1\end{pmatrix} = \begin{pmatrix}x \\ y \\ z \end{pmatrix}
\]
has exactly one solution, or explain why no such vector exists.
︡e784af24-ffcb-4a7a-8f03-e059c8c3d053︡{"html":"<h4>Exercise 11</h4>\n\n<p>Give an example of a vector $X = \\begin{pmatrix} x \\\\ y \\\\ z\\end{pmatrix}$ such that the equation\n\\[\na \\begin{pmatrix} 1 \\\\ 1 \\\\ 0 \\end{pmatrix} + b \\begin{pmatrix} 0 \\\\ 0 \\\\ 1\\end{pmatrix} + c \\begin{pmatrix} 1 \\\\ 1 \\\\ 1\\end{pmatrix} = \\begin{pmatrix}x \\\\ y \\\\ z \\end{pmatrix}\n\\]\nhas exactly one solution, or explain why no such vector exists.</p>\n"}︡
︠d1729041-076f-4a99-93ff-9ff16c778b48i︠
%md
#### Exercise 12 ####
Give an example of a vector $X = \begin{pmatrix} x \\ y \\ z\end{pmatrix}$ such that the equation
\[
a \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} + b \begin{pmatrix} 0 \\ -1 \\ 0\end{pmatrix} + c \begin{pmatrix} x \\ y \\ z\end{pmatrix} = \begin{pmatrix}3 \\ 7 \\ 7 \end{pmatrix}
\]
has no solutions, or explain why no such vector exists.
︡4efff26b-6c29-44e6-beee-37d57c97db5e︡{"html":"<h4>Exercise 12</h4>\n\n<p>Give an example of a vector $X = \\begin{pmatrix} x \\\\ y \\\\ z\\end{pmatrix}$ such that the equation\n\\[\na \\begin{pmatrix} 1 \\\\ 0 \\\\ 2 \\end{pmatrix} + b \\begin{pmatrix} 0 \\\\ -1 \\\\ 0\\end{pmatrix} + c \\begin{pmatrix} x \\\\ y \\\\ z\\end{pmatrix} = \\begin{pmatrix}3 \\\\ 7 \\\\ 7 \\end{pmatrix}\n\\]\nhas no solutions, or explain why no such vector exists.</p>\n"}︡
︠2aa3a5a9-4e96-46bd-bf77-a0a6acf29a4f︠









