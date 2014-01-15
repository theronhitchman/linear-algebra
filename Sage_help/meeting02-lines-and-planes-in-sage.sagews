︠d5be0dab-cfa6-4534-9ee2-dd1be17c9be3i︠
%html
<h1 style="text-align: center;">Some Basic Sage Commands</h1>
<p>Sage is built on the popular scripting language Python, and supports writing code directly into a worksheet to perform calculuations. But a lot of the convenience of Sage comes from the large number of prebuilt object types and the kinds of prebuilt computational methods associated to them. I prefer to think of Sage as an <em>object oriented mathematics environment</em>. The idea is to call into existence instances of the things you want to work with and then apply the computational methods to those things. [ That sounds confusing at first. After a while, it feels natural. ]</p>
<p>&nbsp;</p>
<p>In linear algebra we shall often have need of some pictures to help guide our thinking and to train our intuition. This means we need to learn to construct and plot some geometric objects: vectors, lines, planes, directed segments, ponts, etc.</p>
<p>&nbsp;</p>
<p>Let's get to it!</p>

︡efd760a2-60c0-4e5b-a1ab-0b5a4981469f︡{"html": "<h1 style=\"text-align: center;\">Some Basic Sage Commands</h1>\n<p>Sage is built on the popular scripting language Python, and supports writing code directly into a worksheet to perform calculuations. But a lot of the convenience of Sage comes from the large number of prebuilt object types and the kinds of prebuilt computational methods associated to them. I prefer to think of Sage as an <em>object oriented mathematics environment</em>. The idea is to call into existence instances of the things you want to work with and then apply the computational methods to those things. [ That sounds confusing at first. After a while, it feels natural. ]</p>\n<p>&nbsp;</p>\n<p>In linear algebra we shall often have need of some pictures to help guide our thinking and to train our intuition. This means we need to learn to construct and plot some geometric objects: vectors, lines, planes, directed segments, ponts, etc.</p>\n<p>&nbsp;</p>\n<p>Let's get to it!</p>"}︡
︠2e08a5c8-fe5f-4abc-9a00-f4c9925758c0︠
print("Woo-hoo! I am so ready for this.")
︡dd88ce8f-479e-45f2-a18b-fdd24ee7ab9a︡{"stdout":"Woo-hoo! I am so ready for this.\n"}︡
︠f14de81b-4160-4038-a82a-fa096f5ef284i︠
%html
<h2>Points</h2>
<p>In Sage a point is determined by a list of its coordinates. You call a point into existence by using the "Point" command. Sage is clever enough to figure out if your point belongs in the plane or in 3-space by checking the length of the list.</p>

︡10286503-55cf-4f47-86b4-9fc6125f0957︡{"html": "<h2>Points</h2>\n<p>In Sage a point is determined by a list of its coordinates. You call a point into existence by using the \"Point\" command. Sage is clever enough to figure out if your point belongs in the plane or in 3-space by checking the length of the list.</p>"}︡
︠9781969e-9270-470f-a331-0a4f015f4992︠
p = point([1,2]) # point in the Cartesian plane.
q = point([1,-1,3]) # point in three dimensional space.
︡69b684fa-c741-4999-8b4b-cc1237e54f79︡
︠2f34e860-3a83-4c7e-abc2-f0248a0bd7da︠
p # sage will plot a point when it is called, point is really a plotting command.
︡397460f5-d4cf-474b-80e2-5ed80085d8e2︡{"once":false,"file":{"show":true,"uuid":"c07581b7-7471-4ba1-ac14-7dfb5aad707c","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_zHtxap.png"}}︡
︠248579c1-c68a-4e69-b66b-f573be6a547e︠
q
︡98f30bc1-4271-4bac-b4b5-4490a73bcd3e︡{"html":"<div id=1d6b1f7b-873d-4603-a209-dcb02550cfda style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 6.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#1d6b1f7b-873d-4603-a209-dcb02550cfda').salvus_threejs(obj)"},"once":false}︡
︠17f2a507-b57e-4717-8266-8d39b7edc87ci︠
%html
<h2>Vectors</h2>
<p>A vector is also defined by a list of the coordinates. Here are several methods associated to vectors displayed by example.</p>

︡08a08f2f-709a-4e9a-aec5-d801f0cc81d6︡{"html": "<h2>Vectors</h2>\n<p>A vector is also defined by a list of the coordinates. Here are several methods associated to vectors displayed by example.</p>"}︡
︠e4a433d3-a963-4b9c-bc4d-9be9e14a310a︠
v = vector([2,4]); u = vector([-1,1]); u+v # addition, note that the display for a vector is as a "row" instead of a "column."
︡bfb03c96-3a13-4fc3-9321-30f793558f0f︡{"stdout":"(1, 5)\n"}︡
︠7fa72a31-6d76-4d47-a3a7-7a2d410f1810︠
2 * v # scalar multiplication
︡a30bd6c3-637a-473b-9554-33fddcba7b3c︡{"stdout":"(4, 8)\n"}︡
︠45c2b2ba-ffda-4075-a485-c1e30686833c︠
w = 2 * v + -3 * u # a linear combination
w
︡be6d9655-751f-4d02-9000-374dbe148bee︡{"stdout":"(7, 5)\n"}︡
︠d0f2539f-9975-4acf-a1f1-665e79d696dc︠
P = plot(v, color='red') + plot(u, color='green') + plot(w, color='blue') # you can add plots to create a more complex object
P.show() # and then show the object
︡0bc3f87d-22f6-4b4c-b44b-d18d11015daf︡{"once":false,"file":{"show":true,"uuid":"1860b7ae-c250-4a7a-9f29-bd95f701b6ba","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_De8gMR.png"}}︡
︠1e4ae9a3-0107-4fed-b59a-6ee9cfa0fb46i︠
%html
<p>Of course, you can do all of that with vectors in $\mathbb{R}^3$, too.</p>
<p>Sometimes, one wants the option to change the footpoint of the vector. This effects the change in place allowed by considering your vectors as "free vectors" -- a physics interpretation. To get that kind of display, use the arrow command.</p>

︡5591be7b-b416-4c2f-aae5-0c91ad24b3ac︡{"html": "<p>Of course, you can do all of that with vectors in $\\mathbb{R}^3$, too.</p>\n<p>Sometimes, one wants the option to change the footpoint of the vector. This effects the change in place allowed by considering your vectors as \"free vectors\" -- a physics interpretation. To get that kind of display, use the arrow command.</p>"}︡
︠fc1ced72-e1b6-4855-a497-3f7187cd19f8︠
U = arrow((0,0),(2,4), color = 'red')
V = arrow((0,0),(1,-1))

UU = arrow((1,-1), (3,3), color = 'red', linestyle='dashed')
VV = arrow((2,4), (3,3), linestyle='dashed')
SS = arrow((0,0), (3,3), color = 'black')
plot(U) + plot(V) + plot(UU) + plot(VV) + plot(SS) # this should show a picture of parallelogram addition
︡162de4ee-bcaf-49c2-a59b-bb8b526dbde4︡{"once":false,"file":{"show":true,"uuid":"c28fdebe-7fc6-47e3-b19e-a883daeb6bf0","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_f7Z5hh.png"}}︡
︠768c1ff8-b345-49ea-968f-b88eef95ee61︠
arrow?
︡58f07a38-d8d9-4fb0-8a72-40b5b00469d0︡{"stdout":"   File: /usr/local/sage/sage-5.13.rc0/local/lib/python2.7/site-packages/sage/plot/arrow.py\n   Docstring:\n      Returns either a 2-dimensional or 3-dimensional arrow depending on\n   value of points.\n\n   For information regarding additional arguments, see either arrow2d?\n   or arrow3d?.\n\n   EXAMPLES:\n\n      sage: arrow((0,0), (1,1))\n      sage: arrow((0,0,1), (1,1,1))\n"}︡{"stdout":"\n"}︡
︠76cf7aaa-445f-4256-9590-ef7723080868i︠
%html
<h2>Lines</h2>
<p>We have discussed several ways to represent lines. Let's take a look at examples of making Sage display them.</p>
<h3>Parametric Form--vectors</h3>

︡23293441-4db3-4e69-84fe-f70067dcaa24︡{"html": "<h2>Lines</h2>\n<p>We have discussed several ways to represent lines. Let's take a look at examples of making Sage display them.</p>\n<h3>Parametric Form--vectors</h3>"}︡
︠87f17963-ee7d-45ee-8d0c-f3f3bbbacb05︠
var('t')
X = vector([1,-1])
Y = vector([1,2])
P = parametric_plot(X + t * Y, [t,-2,2])
P.show(axes=True, aspect_ratio=1)
︡cdb814e8-545c-413c-a922-f4d728020d59︡{"stdout":"t\n"}︡{"once":false,"file":{"show":true,"uuid":"f5d8e343-8b2c-466d-acf8-da2c2d8584f6","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_ZUnwpZ.png"}}︡
︠1112f227-05c0-4e0c-a6c8-806e0130114bi︠
%html
<h3>Parametric Form -- "no vectors"</h3>
<p>I put that in quotes because the Sage takes the arguments as the elements of a list, which is essentially a vector, right?</p>

︡be8f9b22-307d-4087-9b3a-d372e5b0afca︡{"html": "<h3>Parametric Form -- \"no vectors\"</h3>\n<p>I put that in quotes because the Sage takes the arguments as the elements of a list, which is essentially a vector, right?</p>"}︡
︠a1103d37-1367-417e-8259-7426d198cadf︠
var('t')
parametric_plot([1+t, -1 + 2*t], [t,-2,2])
︡512570af-e05f-4fa9-80ca-0c1e0cce6268︡{"stdout":"t\n"}︡{"once":false,"file":{"show":true,"uuid":"f5d8e343-8b2c-466d-acf8-da2c2d8584f6","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_y3PUV7.png"}}︡
︠cf9bd298-1e1e-41fb-b65e-cfeaac5bb0f0i︠
%html
<h3>Implicit Form -- i.e. standard form</h3>
<p>This is the form we shall use the most when doing actual algebra.</p>

︡69d9f47a-ebfd-4c0c-9e92-4f2f6ff0bcff︡{"html": "<h3>Implicit Form -- i.e. standard form</h3>\n<p>This is the form we shall use the most when doing actual algebra.</p>"}︡
︠8f5cb303-a4b9-4325-bd22-40857918c07e︠
var('x y')
lin_eq = y - 2 * x == -3  # sage uses = for assignment, but == for "equals"
R = implicit_plot(lin_eq, [x,-1,3], [y,-5,3]) # this time you have to specify the window. I chose it to match the one above.
R.show(axes=True, frame=False) # play with the axes and frame keywords. see what changes in the display.
︡6cf9b190-9a74-44ef-ac64-42d75de6ce49︡{"stdout":"(x, y)\n"}︡{"once":false,"file":{"show":true,"uuid":"fb93ee06-ac84-47a2-93f4-143c3381ceec","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_8G6DDE.png"}}︡
︠b1377ff0-2803-4753-8071-0c9164f7bbb2i︠
%html
<h3>The Line object type</h3>
<p>Sage has a built-in "line" class.</p>

︡b4744334-8ce7-4985-a1af-6b85c6cb498b︡{"html": "<h3>The Line object type</h3>\n<p>Sage has a built-in \"line\" class.</p>"}︡
︠0d664322-1f38-44f5-aff8-e253643aa2f9︠
l = line([[1,-1], [2,1]]); l # the argument for the "line" function is a list consisting
                             # of two points on the line.
                             # note the display window has not been adjusted.
︡a9660f7d-31b0-4235-b534-01a75480d014︡{"once":false,"file":{"show":true,"uuid":"2bccbaf5-4bf8-4a92-8762-da5784bccaac","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/22415/tmp_ya7DR4.png"}}︡
︠33b7f1f3-5fb3-476f-8cb1-1d24c298cddei︠
%html
<p>All of the same stuff can be done with vectors of size three, your lists just get longer.</p>

︡5e6cab6f-57e3-4751-b4ba-099705247109︡{"html": "<p>All of the same stuff can be done with vectors of size three, your lists just get longer.</p>"}︡
︠269db86f-2fd0-46b7-a853-628151563b44i︠
%html
<h2>Planes in $\mathbb{R}^3$</h2>
<p>There is no plane command. You have to bulid them in the ways specified for lines. I'll show you one way...</p>
<h3>Parametrically with vectors:</h3>

︡dcc7a33a-96d4-49c2-b144-3988e1fa3ae4︡{"html": "<h2>Planes in $\\mathbb{R}^3$</h2>\n<p>There is no plane command. You have to bulid them in the ways specified for lines. I'll show you one way...</p>\n<h3>Parametrically with vectors:</h3>"}︡
︠d73c64b4-0ccc-4fda-87c5-45d4ede0e200︠
var('s t')
A = vector([1,2,-1]); B = vector([1/2, 3, 0]); C = vector([-1,-1,-1])
plane_plot = parametric_plot3d(A + s * B + t * C, [s,-2,2], [t,-2,2], color = 'green', opacity = .3, axes=True)
show(plane_plot)
︡b40139b5-71cb-4656-a8ac-afef39533e21︡{"stdout":"(s, t)\n"}︡{"html":"<div id=ee68ee52-85b3-4c8a-b441-9c3aac75ab19 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 20.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#ee68ee52-85b3-4c8a-b441-9c3aac75ab19').salvus_threejs(obj)"},"once":false}︡
︠aab51128-3196-43b5-bc97-674458c0f290i︠
%html
<p>Can you make sage plot the same plane in the other styles I describe above?</p>
<ul>
<li>parametric -- not vector form : still use parametric_plot3d</li>
<li>standard "implicit" form : try using implicit_plot3d</li>
</ul>
<p>Don't forget to use the question mark and double question mark routines to access Sage documentation and help.</p>

︡00e1a101-e9c4-4f38-b8a3-35c978da762d︡{"html": "<p>Can you make sage plot the same plane in the other styles I describe above?</p>\n<ul>\n<li>parametric -- not vector form : still use parametric_plot3d</li>\n<li>standard \"implicit\" form : try using implicit_plot3d</li>\n</ul>\n<p>Don't forget to use the question mark and double question mark routines to access Sage documentation and help.</p>"}︡
︠82a3b867-65f9-411a-8540-8219ac5aa938i︠
%html
<h1 style="text-align: center;">Some Thinking Exercises</h1>
<p>Now it is time to get to work. Here are a bunch of exercises that get at the kind of understanding you will need. You now know enough Sage to use it to help you investigate these.</p>
<ol>
<li style="text-align: left;">Consider a line in the plane described in parametric vector form as $X(t) = P + t*(Q-P)$. Can you trace the line as the "time" $t$ changes? Choose a bunch of different values of $t$ and figure out where $X(t)$ should be relative to $P$ and $Q$.</li>
<li style="text-align: left;">Can you make a picture of vector addition in $\mathbb{R}^3$ using the arrow command?</li>
<li style="text-align: left;">How many different ways can a pair of lines in the Cartesian plane meet?</li>
<li style="text-align: left;">How many different ways can a triple of lines in the Cartesian plane meet?</li>
<li style="text-align: left;">How many different ways can a pair of planes in space meet?</li>
<li style="text-align: left;">How many different ways can a triple of planes in space meet?</li>
<li style="text-align: left;">Suppose you are given two points in $\mathbb{R}^3$. Can you follow the process of choosing similar triangles to find the symmetric form of the equation of the line through those points?</li>
<li style="text-align: left;">Can you then find a parametric form of equation of the line? (vector or not, no difference really)</li>
<li style="text-align: left;">Suppose you are given three points in $\mathbb{R}^3$, written as $P_1 = \begin{pmatrix} a_1 \\ b_1 \\ c_1\end{pmatrix}$, $P_2 = \begin{pmatrix} a_2 \\ b_2 \\ c_2\end{pmatrix}$&nbsp;and $P_3 = \begin{pmatrix} a_3 \\ b_3 \\ c_3\end{pmatrix}$. What is the form of the standard equation of the plane in terms of all of the $a$'s, $b$'s and $c$'s?&nbsp;</li>
<li style="text-align: left;">In the last problem, what happens with the "constant term" on the right hand side?&nbsp;</li>
<li style="text-align: left;">Do you understand how to pass back and forth between the standard form of an equation for a plane and a parametric form?</li>
</ol>
<p>&nbsp;</p>
<p>Note that many of these are stated very generally. If you are having trouble, try making specific examples and working out those special cases. Then try to abstract and generalize your way to answering the whole question.</p>

︡95beaf7d-91ef-4fe3-a814-6bbb44b0cb0d︡{"html":"<h1 style=\"text-align: center;\">Some Thinking Exercises</h1>\n<p>Now it is time to get to work. Here are a bunch of exercises that get at the kind of understanding you will need. You now know enough Sage to use it to help you investigate these.</p>\n<ol>\n<li style=\"text-align: left;\">Consider a line in the plane described in parametric vector form as $X(t) = P + t*(Q-P)$. Can you trace the line as the \"time\" $t$ changes? Choose a bunch of different values of $t$ and figure out where $X(t)$ should be relative to $P$ and $Q$.</li>\n<li style=\"text-align: left;\">Can you make a picture of vector addition in $\\mathbb{R}^3$ using the arrow command?</li>\n<li style=\"text-align: left;\">How many different ways can a pair of lines in the Cartesian plane meet?</li>\n<li style=\"text-align: left;\">How many different ways can a triple of lines in the Cartesian plane meet?</li>\n<li style=\"text-align: left;\">How many different ways can a pair of planes in space meet?</li>\n<li style=\"text-align: left;\">How many different ways can a triple of planes in space meet?</li>\n<li style=\"text-align: left;\">Suppose you are given two points in $\\mathbb{R}^3$. Can you follow the process of choosing similar triangles to find the symmetric form of the equation of the line through those points?</li>\n<li style=\"text-align: left;\">Can you then find a parametric form of equation of the line? (vector or not, no difference really)</li>\n<li style=\"text-align: left;\">Suppose you are given three points in $\\mathbb{R}^3$, written as $P_1 = \\begin{pmatrix} a_1 \\\\ b_1 \\\\ c_1\\end{pmatrix}$, $P_2 = \\begin{pmatrix} a_2 \\\\ b_2 \\\\ c_2\\end{pmatrix}$&nbsp;and $P_3 = \\begin{pmatrix} a_3 \\\\ b_3 \\\\ c_3\\end{pmatrix}$. What is the form of the standard equation of the plane in terms of all of the $a$'s, $b$'s and $c$'s?&nbsp;</li>\n<li style=\"text-align: left;\">In the last problem, what happens with the \"constant term\" on the right hand side?&nbsp;</li>\n<li style=\"text-align: left;\">Do you understand how to pass back and forth between the standard form of an equation for a plane and a parametric form?</li>\n</ol>\n<p>&nbsp;</p>\n<p>Note that many of these are stated very generally. If you are having trouble, try making specific examples and working out those special cases. Then try to abstract and generalize your way to answering the whole question.</p>"}︡
︠eeef6c51-38aa-4189-b2d7-789feee8fd15︠









