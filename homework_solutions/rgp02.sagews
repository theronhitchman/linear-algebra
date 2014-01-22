︠d1e5541b-eac2-4048-adb3-2aa010ab177bi︠
%md
# Reading and Guided Practice Assignment \# 2 #

Strang, section 1.2 \# 1, 6, 7, 8, 12, 13
︡0be0748c-30cd-49a1-850a-1089316c97b9︡{"html":"<h1>Reading and Guided Practice Assignment # 2</h1>\n\n<p>Strang, section 1.2 # 1, 6, 7, 8, 12, 13</p>\n"}︡
︠85f346b3-e3db-44b5-baac-f3262a983222i︠
 %md
### Exercise 1 ###
Calculate the dot products $u \cdot v$ and $u \cdot w$ and $u \cdot (v + w)$ and $w \cdot v$.
\[
u = \begin{bmatrix} -.6 \\ .8 \end{bmatrix} \qquad v = \begin{bmatrix} 3 \\ 4 \end{bmatrix} \qquad w = \begin{bmatrix} 8 \\ 6 \end{bmatrix}
\]
︡bc63273c-de59-4e9c-b68b-23f1f50f55c6︡{"html":"<h3>Exercise 1</h3>\n\n<p>Calculate the dot products $u \\cdot v$ and $u \\cdot w$ and $u \\cdot (v + w)$ and $w \\cdot v$.\n\\[\nu = \\begin{bmatrix} -.6 \\\\ .8 \\end{bmatrix} \\qquad v = \\begin{bmatrix} 3 \\\\ 4 \\end{bmatrix} \\qquad w = \\begin{bmatrix} 8 \\\\ 6 \\end{bmatrix}\n\\]</p>\n"}︡
︠da92d306-c80a-4c31-a465-aa4ea6b18826︠
# I'll let Sage do the work here:
u = vector([-.6, .8]); v = vector([3, 4]); w = vector([8, 6])

u.dot_product(v)
︡bb2e1f4f-ec70-4700-87a3-706f5cf41f4a︡{"stdout":"1.40000000000000\n"}︡
︠554fadfd-c78d-47bb-bd68-e73aa67eaf94︠
u.dot_product(w)
︡b9835f29-2202-41c7-a0da-5df4ca830425︡{"stdout":"8.88178419700125e-16\n"}︡
︠3beb657c-d01e-46a8-81c9-0c18e3c98da5︠
# Ha! sage is a little confused. that is really zero. Computers are fast, but dumb.
# let's convert those decimals to fractions. then sage will use exact arithmetic instead of "floating point numbers."
u1 = vector([-6/10, 8/10])
u1.dot_product(w)
︡4cc00377-0265-4454-ad61-b7c74a732657︡{"stdout":"0\n"}︡
︠77b7c903-b0af-458a-9609-220283e48109︠
u.dot_product(v+w)
︡00e26d96-64b0-403b-960c-8a584f68b0d6︡{"stdout":"1.40000000000000\n"}︡
︠51754003-f8b4-45ab-99c1-7efeeea953be︠
w.dot_product(v)
︡5c0eaf43-41c1-40c9-91ec-b10b96329d5f︡{"stdout":"48\n"}︡
︠741aef8c-6728-4fd2-aa5c-00b5c1e53dd4︠
# Note that Sage can figure out that you mean  dot_product if you just "multiply" vectors.
u*v
︡c5bff581-6056-421a-80ad-acc861090e50︡{"stdout":"1.40000000000000\n"}︡
︠31219c2b-ccf1-435a-aca4-82d9f3edcc66i︠

%md
### Exercise 6 ###
(a) Describe every vector $(w_1, w_2)$ that is perpendicular to $(2,-1)$.
︡0a8b59dd-e7bd-462f-b9fd-1629c7ba09d6︡{"html":"<h3>Exercise 6</h3>\n\n<p>(a) Describe every vector $(w_1, w_2)$ that is perpendicular to $(2,-1)$.</p>\n"}︡
︠5269a67e-abc8-4ece-b868-ff936ca21f29︠
# Perpendicular means that the dot product is zero. So...
w1, w2 = var('w1 w2')
w = vector([w1,w2])
expr = w.dot_product(vector([2,-1]))==0
expr
︡1f44ed57-1523-4d5a-850c-4e75fb8dcee8︡{"stdout":"2*w1 - w2 == 0\n"}︡
︠64a94f9e-310d-4944-82eb-5a50d5f15cd3︠
# that is the equation of a line in (w1,w2) -space
line_plot = implicit_plot(expr, (w1, -3,3), (w2, -3,3))
line_plot += arrow([0,0],[2,-1], color='red')
line_plot.show(axes=True)
︡715f8dbc-68ce-4729-b392-98ea689e98b7︡{"once":false,"file":{"show":true,"uuid":"6fa01bca-d014-4eff-aec4-0e9ffa343267","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/30392/tmp__6bHPf.png"}}︡
︠98e032b2-1a19-445c-8ded-05aaaaf491cbi︠
%md
(b) The vectors that are perpendicular to $V = (1,1,1)$ lie on a [[blank]].
︡1df82b77-7859-4d60-8542-0d1dd8d72779︡{"html":"<p>(b) The vectors that are perpendicular to $V = (1,1,1)$ lie on a [[blank]].</p>\n"}︡
︠03bab666-2882-4fac-b581-40741fdf0e85︠
# This is a lot like the last one, just one dimension higher. The answer is "a plane." Let's plot it to be sure.
x,y,z = var('x y z')
expr2 = vector([1,1,1]).dot_product(vector([x,y,z])) == 0
new_plot = implicit_plot3d(expr2, [x,-3,3],[y,-3,3], [z,-3,3], color='purple', opacity=.7, axes=True, frame=True)
show(new_plot)
︡0da109d3-ba95-4519-a905-dc3ed26685cd︡{"html":"<div id=83c9c464-5bb7-41df-a58b-b41ed0061c40 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 6.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#83c9c464-5bb7-41df-a58b-b41ed0061c40').salvus_threejs(obj)"},"once":false}︡
︠a24f228b-effa-4e36-9405-0decc0d8a566i︠
%md
(c) The vectors that are perpendicular to (1,1,1) and (1,2,3) lie on a [[blank]].
︡4f50775b-ef7b-4d30-907f-4d82ee236cd7︡{"html":"<p>(c) The vectors that are perpendicular to (1,1,1) and (1,2,3) lie on a [[blank]].</p>\n"}︡
︠b1f9744d-f4fb-4bac-b583-cdf9a637149c︠
# The answer is "a line." Being perpendicular to (1,1,1) puts you on a plane (the purple one above). Being perpendicular to (1,2,3) puts you in a different plane. In this case, the two planes intersect along a line. To see this, let's plot them both at the same time.
second_plane = implicit_plot3d( x + 2*y + 3*z ==0, [x,-4,4],[y,-3,3],[z,-3,3], color='blue')
show(new_plot + second_plane)
︡5129a0da-b41b-46fc-8541-e59cd51cb3ee︡{"html":"<div id=cf7b3480-2177-4113-9f45-e025ba68e951 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 8.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#cf7b3480-2177-4113-9f45-e025ba68e951').salvus_threejs(obj)"},"once":false}︡
︠9ca68c8e-d349-49e5-92c7-50c0ca997de2i︠
%md
### Exercise 7 ###
Find angles between pairs of vectors...
︡ecb71bc8-ded5-4168-81ea-33324afa16d5︡{"html":"<h3>Exercise 7</h3>\n\n<p>Find angles between pairs of vectors&#8230;</p>\n"}︡
︠ba4c33ca-f682-4fee-a367-a5fc9cb93de1︠
# We shall use the cosine formula. I have chosen to encode that in a python function. Note that this will return things in radians, not degrees.
def angle(vec1, vec2):
    frac = (vec1.dot_product(vec2))/ ( vec1.norm() * vec2.norm() )
    return arccos(frac)
︡686813c3-3bc7-499e-b9f4-9b2bb00e6d87︡
︠09a3c4a4-842e-45e5-99c8-25eed946081a︠
angle(vector([1, sqrt(3)]), vector([1, 0]))
︡651644f7-05c2-4bbc-a7e6-d89b801492f6︡{"stdout":"1/3*pi\n"}︡
︠195d6719-cfb0-4388-874a-ba4e33399fbf︠
angle(vector([2,2,-1]),vector([2,-1,2]))
︡7177c32f-d77a-4b41-8793-f6a2ca6c0e48︡{"stdout":"1/2*pi\n"}︡
︠f55c432f-4f41-4913-b0ce-58b56f5e19d6︠
angle(vector([1,sqrt(3)]), vector([-1, sqrt(3)]))
︡b0a04839-c06b-4160-8dd2-b2168c7ee8ee︡{"stdout":"1/3*pi\n"}︡
︠3e4c97d1-fcec-4030-82fd-05d2c16487d6︠
angle(vector([3,1]),vector([-1,-2]))
︡bdd9033f-c069-4540-862a-9fa4baa60528︡{"stdout":"arccos(-1/10*sqrt(10)*sqrt(5))\n"}︡
︠0e7d0b9a-1adc-4433-8753-8dde770ce0fa︠
# If you did it by hand, you would not write it that way. Is it the same?
︠64e928b1-0c8e-46fd-bdb4-a70cf5fada38i︠

%md
### Exercise 8 ###
True or False questions.

  +(a) is false. Use the three coordinate vectors, (1,0,0), (0,1,0) and (0,0,1).

  +(b) This is true. the reason is that the dot product is "linear".
    $u\cdot (v + 2w) = u \cdot v + 2 (u \cdot v) = 0 + 2(0) = 0$

  +(c) True! In this case, $u-v$ is a diagonal of a square with side length 1.


︡d1e51496-92a4-4b6a-9454-83a5a563c51e︡{"html":"<h3>Exercise 8</h3>\n\n<p>True or False questions.</p>\n\n<p>+(a) is false. Use the three coordinate vectors, (1,0,0), (0,1,0) and (0,0,1).</p>\n\n<p>+(b) This is true. the reason is that the dot product is &#8220;linear&#8221;.\n    $u\\cdot (v + 2w) = u \\cdot v + 2 (u \\cdot v) = 0 + 2(0) = 0$</p>\n\n<p>+(c) True! In this case, $u-v$ is a diagonal of a square with side length 1.</p>\n"}︡
︠feb48843-6ca2-47e6-bc56-30917750993di︠
︡dcd689ba-0be9-4221-b828-ca051ddd4969︡
︠d17f6751-c728-44e3-8dcb-376875e989e8i︠
%md
### Exercise 12 ###
With $v = (1,1)$ and $w = (1,5)$ choose a number $c$ so that $w-cv$ is perpendicular to $v$. Then find the formula that gives this number $c$ for any nonzero $v$ and $w$.
︡2ac30ba7-741f-44b7-b437-cc97f5f8792b︡{"html":"<h3>Exercise 12</h3>\n\n<p>With $v = (1,1)$ and $w = (1,5)$ choose a number $c$ so that $w-cv$ is perpendicular to $v$. Then find the formula that gives this number $c$ for any nonzero $v$ and $w$.</p>\n"}︡
︠2f9f5c79-0eaa-47c2-b4ed-e87ed64a2f45︠
# To be perpendicular means that the dot product is zero. Let's set things up to find this equation.
c = var('c')
v = vector([1,1]); w = vector([1,5])
expr = (v - c*w).dot_product(v) == 0
expr
︡f6c68dc7-91fe-421a-8f4c-a8b4701623c0︡{"stdout":"-6*c + 2 == 0\n"}︡
︠c6997c0e-9156-459b-b866-0d5c145aca16i︠
%md
So clearly $c = 1/3$.

In general, the equation for $c$ is
\( c = \dfrac{w\cdot v}{v \cdot v} \)
︡30afacfd-22d9-47fb-8e5c-43f705dacc67︡{"html":"<p>So clearly $c = 1/3$.</p>\n\n<p>In general, the equation for $c$ is \n\\( c = \\dfrac{w\\cdot v}{v \\cdot v} \\)</p>\n"}︡
︠b793d456-e24e-41b0-8de1-5ec6211b95dai︠
%md
### Exercise 13 ###
Find two vectors $v$ and $w$ which are perpendicular to $(1,0,1)$ and to each other.
︡84bd7057-97e4-4caf-8593-333b0339b006︡{"html":"<h3>Exercise 13</h3>\n\n<p>Find two vectors $v$ and $w$ which are perpendicular to $(1,0,1)$ and to each other.</p>\n"}︡
︠5f88e814-707b-409a-87a3-e6fa2836814f︠
# We need to get vectors with zero dot product...
soln1 = vector([0,1,0]) # this works
soln2 = vector([-1,0,1]) # this should too.
# let's check:
vector([1,0,1]).dot_product(soln1); vector([1,0,1]).dot_product(soln2); soln1.dot_product(soln2)
︡9bde4da5-1de4-48f2-ab22-bb95a1e162c1︡{"stdout":"0\n0\n0\n"}︡
︠ea1c49bc-0108-4abc-b9cd-989503b17494︠









