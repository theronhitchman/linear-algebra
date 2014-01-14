︠02ee36e8-90b5-497f-86b8-5a8c5025cf6ci︠
%md
# Reading and Guided Practice \#1
Strang, section 1.1, exercises 1,3,5,6,16,20
︡e41cb17b-cb29-4330-9bf4-b5b48b53c445︡{"html":"<h1>Reading and Guided Practice #1</h1>\n\n<p>Strang, section 1.1, exercises 1,3,5,6,16,20</p>\n"}︡
︠7fe5aac3-a78d-4ec4-b29d-c9ff6a4c5ca8i︠
%md
### Exercise 1 ###
Describe geometrically all linear combinations of

(a) $\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} 3 \\ 6 \\ 9 \end{bmatrix}$

(b) $\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$ and $\begin{bmatrix} 0 \\ 2 \\ 3 \end{bmatrix}$

(c) $\begin{bmatrix} 2 \\ 0 \\ 0 \end{bmatrix}$ and $\begin{bmatrix} 0 \\ 2 \\ 2 \end{bmatrix}$ and $\begin{bmatrix} 2 \\ 2 \\ 3 \end{bmatrix}$
︡dec7fe7f-8fec-436b-920c-0cd98652ea02︡{"html":"<h3>Exercise 1</h3>\n\n<p>Describe geometrically all linear combinations of</p>\n\n<p>(a) $\\begin{bmatrix} 1 \\\\ 2 \\\\ 3 \\end{bmatrix}$ and $\\begin{bmatrix} 3 \\\\ 6 \\\\ 9 \\end{bmatrix}$</p>\n\n<p>(b) $\\begin{bmatrix} 1 \\\\ 0 \\\\ 0 \\end{bmatrix}$ and $\\begin{bmatrix} 0 \\\\ 2 \\\\ 3 \\end{bmatrix}$</p>\n\n<p>(c) $\\begin{bmatrix} 2 \\\\ 0 \\\\ 0 \\end{bmatrix}$ and $\\begin{bmatrix} 0 \\\\ 2 \\\\ 2 \\end{bmatrix}$ and $\\begin{bmatrix} 2 \\\\ 2 \\\\ 3 \\end{bmatrix}$</p>\n"}︡
︠7c4d33ef-d591-468e-9553-f7988b4d1836︠
## Solution (a)

v = vector([1,2,3]); w = vector([3,6,9])

# note that w = 3 * v
w == 3 * v
# Thus the collection of linear combinations of v and w is the same as the set of scalar multiples of v. This is a LINE.
︡7509fb56-90a0-4c63-b762-80645ec6854e︡{"stdout":"True\n"}︡
︠243c9600-5322-4ae6-a7e8-ff086974e8dc︠
## Solution (b)
v = vector([1,0,0]); w = vector([0,2,3])

# this time the vectors point in genuinely different directions! There are only two of them, so the most we can get is a PLANE.
# to verify this, let's plot a small part of this plane. This is a parametric plot, because we use two 'parameters' s and t as
# the coeffs in our linear combination.
var('s t')
P = parametric_plot3d(s*v + t*w, [s,-2,2], [t,-2,2], color='yellow', opacity=.6, frame=True)
P+= parametric_plot3d([t,0,0], [t,-3,3], color='black')  # The command to show the axes isn't working, so I added the axes this way
P+= parametric_plot3d([0,t,0], [t,-3,3], color='black')
P+= parametric_plot3d([0,0,t], [t,-3,3], color='black')
P
︡1204e2f1-a325-4f3f-afd7-e1ac1b72af1c︡{"stdout":"(s, t)\n"}︡{"html":"<div id=7ff25bc3-2f64-4cbd-9a99-cae4e8e3d83e style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 12.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#7ff25bc3-2f64-4cbd-9a99-cae4e8e3d83e').salvus_threejs(obj)"},"once":false}︡
︠674ef046-da62-4f51-b0f2-f2272f536638︠


## Solution (c)
v = vector([2,0,0]); w = vector([0,2,2]); z = vector([0,2,3])
zero = vector([0,0,0])
# These three vectors point in three "different" directions. To see this, we will plot some of the linear combinations of these vectors
var('a b c')
c=1
Q = parametric_plot3d(a*v + b*w, [a,-1,1], [b,-1,1], color='purple', opacity=.6, frame=True) # (part of) the plane spanned by v and w
Q += arrow(zero,z, color='red', size=30, frame=True)
Q
# Since the red arrow does not lie in the purple plane, adding multiples of z will let us get _anywhere_. The answer is ALL OF R^3.
︡b337a22c-e3db-4fde-ac1a-381a98de4a06︡{"stdout":"(a, b, c)\n"}︡{"html":"<div id=27091beb-29f0-4cf7-abbc-2ad39faf66f7 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 6.0538514262635195, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#27091beb-29f0-4cf7-abbc-2ad39faf66f7').salvus_threejs(obj)"},"once":false}︡
︠e5e589af-4452-48cc-97ab-0cedc4c720b9i︠
%md
## Exercise 3 ##
If $v+w = \begin{bmatrix}5 \\ 1\end{bmatrix}$ and $v-w = \begin{bmatrix}1\\ 5\end{bmatrix}$. Compute and draw $v$ and $w$.
︡5a139242-92ac-4938-809c-cc9de8081367︡{"html":"<h2>Exercise 3</h2>\n\n<p>If $v+w = \\begin{bmatrix}5 \\\\ 1\\end{bmatrix}$ and $v-w = \\begin{bmatrix}1\\\\ 5\\end{bmatrix}$. Compute and draw $v$ and $w$.</p>\n"}︡
︠2a83d6b0-3342-4266-9ff1-06be275b04f5︠
# Solution: Let's let Sage do all the work
X = vector([5,1]); Y = vector([1,5])

v = 1/2 * (X+Y); w = 1/2 * (X-Y)
print 'v = %s' % v ; print 'w = %s' % w

plot(v,color='red',aspect_ratio=1) + plot(w)
︡d1344064-cc1a-4749-8063-a4a1f4b87ccd︡{"stdout":"v = (3, 3)\nw = (2, -2)\n"}︡{"once":false,"file":{"show":true,"uuid":"ba309f75-10aa-4088-818d-7cdfb9177626","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/3343/tmp_vQyS_a.png"}}︡
︠b6fcd606-9b42-4740-bbb8-607c5c04355ei︠
%md
## Exercise 5 ##
Compute $u + v + w$ and $2u + 2v + w$. How do you know $u$, $v$, and $w$ lie in a plane?

\[ u = \begin{bmatrix} 1\\ 2\\ 3\end{bmatrix},\qquad v = \begin{bmatrix} -3 \\ 1 \\ -2\end{bmatrix},\qquad w = \begin{bmatrix} 2\\ -3 \\ -1 \end{bmatrix} \]
︡09c5f30f-47bb-4419-af15-d65d2bb7d96c︡{"html":"<h2>Exercise 5</h2>\n\n<p>Compute $u + v + w$ and $2u + 2v + w$. How do you know $u$, $v$, and $w$ lie in a plane?</p>\n\n<p>\\[ u = \\begin{bmatrix} 1\\\\ 2\\\\ 3\\end{bmatrix},\\qquad v = \\begin{bmatrix} -3 \\\\ 1 \\\\ -2\\end{bmatrix},\\qquad w = \\begin{bmatrix} 2\\\\ -3 \\\\ -1 \\end{bmatrix} \\]</p>\n"}︡
︠de5226d1-4553-4a9d-8a57-9ab130f5669b︠
# solution. Again, we'll let Sage do the algebra.
u = vector([1,2,3])
v = vector([-3,1,-2])
w = vector([2,-3,-1])
res1 = u + v + w
res2 = 2*u + 2*v + w


print 'u + v + w = %s' % res1; print '2u + 2v + w = %s' % res2
︡d34b7ea3-d3ec-4d4a-b692-bc6441fb390c︡{"stdout":"u + v + w = (0, 0, 0)\n2u + 2v + w = (-2, 3, 1)\n"}︡
︠61e75136-a0e4-476a-8f60-56c3ba25c1fb︠
# we can tell that these three vectors lie in a plane because of the first computation.
# it implies that w = (-u) + (-v), so w is a linear combination of u and v.

# to check that:
w == (-u) + (-v)
︡d6f9350c-ef38-47fe-9675-2151448c05d1︡{"stdout":"True\n"}︡
︠1c975161-7858-41cf-853d-76978979ef32i︠
%md
## Exercise 6
Every combination of $v = (1,-2,1)$ and $w = (0,1,-1)$ has components which add to $\underline{\hspace{.5in}}$. Find $c$ and $d$ so that $c*v + d*w = (3,3,-6)$.
︡da03be4a-e984-4c75-a5ee-0ea429f6187e︡{"html":"<h2>Exercise 6</h2>\n\n<p>Every combination of $v = (1,-2,1)$ and $w = (0,1,-1)$ has components which add to $\\underline{\\hspace{.5in}}$. Find $c$ and $d$ so that $c*v + d*w = (3,3,-6)$.</p>\n"}︡
︠732ba878-3ba7-428d-a4fd-32c3ef4e33da︠
# solution: let us allow ourselves lots of combinations of v and w.
c, d = var('c d')
v = vector([1,-2,1]); w = vector([0,1,-1])
X = c*v + d*w
X
︡56d2d2cb-b1f8-40b9-8cc5-99a3e645aafd︡{"stdout":"(c, -2*c + d, c - d)\n"}︡
︠8693a1de-9c9a-4ea9-a61b-d29aac8a5945︠
our_sum = sum(X); our_sum
︡178fd878-3399-48d3-9482-f8e3cdd48bab︡{"stdout":"0\n"}︡
︠4c701b9a-a7b1-4dde-9859-1aa174852085︠
# Notice there is no longer a c or a d. The sum of the components of any linear combination of v and w is always ZERO.
# For the second part, we need to solve X = (3,3,-6)
print '%s = (3,3,-6)' % X
︡2c7b39a4-1360-498f-8ff7-8d67c693a854︡{"stdout":"(c, -2*c + d, c - d) = (3,3,-6)\n"}︡
︠a9e5bc2c-77a9-4817-ac65-8f8d57f76361︠
# comparing coeeficients, we can see that c has to be 3, and then d has to be 9.
# let's check.
X.subs(c=3,d=9)
︡82850367-b0b6-47df-8b91-4d61156a813f︡{"stdout":"(3, 3, -6)\n"}︡
︠9c26eaf0-ffc5-4c48-9582-6baced808d4ai︠

%md
## Exercise 16
This one is really hard to do with the computer, unless you pick specific values for the vectors $v$ and $w$. But the set of all combinations with $c+d = 1$ forms the line through $v$ and $w$.
︡0244b41a-cd7f-4865-8d5d-922d58178db8︡{"html":"<h2>Exercise 16</h2>\n\n<p>This one is really hard to do with the computer, unless you pick specific values for the vectors $v$ and $w$. But the set of all combinations with $c+d = 1$ forms the line through $v$ and $w$.</p>\n"}︡
︠d7b65ff6-eeac-4c61-b036-48a102a23954i︠
%md
## Exercise 20
The first linear combination is the centroid (center of mass) of the triangle determined by the three vectors. The second linear combination is the midpoint of the side joining $u$ and $w$.

The challenge problem:  require that $c + d + e = 1$, and $c$, $d$, $e$ are all non-negative.
︡3bc5f42c-153c-48c8-b23c-d6bc756b88dc︡{"html":"<h2>Exercise 20</h2>\n\n<p>The first linear combination is the centroid (center of mass) of the triangle determined by the three vectors. The second linear combination is the midpoint of the side joining $u$ and $w$.</p>\n\n<p>The challenge problem:  require that $c + d + e = 1$, and $c$, $d$, $e$ are all non-negative.</p>\n"}︡
︠e15f952a-1639-4d15-8e94-20404acd6cd0︠

















