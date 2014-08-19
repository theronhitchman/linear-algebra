︠3547f17c-5c9c-4eae-9ca9-1bf710271303︠
%md
# Sage and Vectors #

### Basic Constructions ###

A vector in Sage is constructed by applying the <code>vector</code> command to a list. Lists are entered in square brackets with entries separated by commas, so the typical way to create a vector looks like this:

︡7566497c-1db1-4a01-b2c9-d4e60cef91ee︡{"html":"<h1>Sage and Vectors</h1>\n\n<h3>Basic Constructions</h3>\n\n<p>A vector in Sage is constructed by applying the <code>vector</code> command to a list. Lists are entered in square brackets with entries separated by commas, so the typical way to create a vector looks like this:</p>\n"}︡
︠467bc367-0202-433f-aff5-a88344f00068︠
u = vector([1,1,2])
︡05bb9ee5-2015-4b1e-8b3c-87f7d0984a42︡
︠9c8f0b32-bb98-45fe-970b-a9067707cea3︠
%md
Notice that nothing was displayed. Sage just put the vector u into memory. We can ask for it by calling it.
︡3b2eebf3-35a1-4584-b09a-c212b1a19c36︡{"html":"<p>Notice that nothing was displayed. Sage just put the vector u into memory. We can ask for it by calling it.</p>\n"}︡
︠f44e7c68-f9e8-4839-a81c-6f6bd7926dd6︠
u
︡e0cb69f8-4020-4360-af93-119ea21a81c6︡{"stdout":"(1, 1, 2)\n"}︡
︠80d35e5a-eca5-4749-8820-078febc815bb︠
%md
Sage defaults to displaying vectors horizontally, which is different from how we normally write them by hand.
This is okay. You will get used to it quickly.

Sage knows how to add, multiply by scalars, and form linear combinations, and the notation for it is just as easy as you would expect.
︡c7068bfe-369f-497f-876a-18daf8195d1d︡{"html":"<p>Sage defaults to displaying vectors horizontally, which is different from how we normally write them by hand.\nThis is okay. You will get used to it quickly.</p>\n\n<p>Sage knows how to add, multiply by scalars, and form linear combinations, and the notation for it is just as easy as you would expect.</p>\n"}︡
︠8958f1f2-c1f9-4d4e-a02f-3f21dbd76ee8︠
v = vector([-1,-1,2])
u + v
︡d9645cdf-e5f0-409a-86aa-9773ed3ef281︡{"stdout":"(0, 0, 4)\n"}︡
︠547ccabf-5aad-419e-a72b-a8d7c8d669f8︠
pi * u
︡f5de8195-6696-4b90-bfa3-24305087f61a︡{"stdout":"(pi, pi, 2*pi)\n"}︡
︠07e2b3c2-73f5-4118-89de-9a2e5913b87b︠
3*u + 4 * v
︡e33256ff-d647-4b59-8447-0fb75ba1f219︡{"stdout":"(-1, -1, 14)\n"}︡
︠1f74e490-ab6a-444f-94af-cd21dcb7c4e0i︠
%md
If you ask Sage to plot a vector, you get this kind of thing:
︡84905139-58e3-4820-9ad6-8361bb83cadc︡{"html":"<p>If you ask Sage to plot a vector, you get this kind of thing:</p>\n"}︡
︠48f9ebc4-5efd-4ee9-a7e7-b20d1861f18b︠
plot(v)
︡7eafad43-2640-412c-afc2-bbff4277d695︡{"html":"<div id=d7f25f90-58ce-48f4-b764-462fd1c733db style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 4.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#d7f25f90-58ce-48f4-b764-462fd1c733db').salvus_threejs(obj)"},"once":false}︡
︠b4ee80ce-6292-4e31-925e-e77544da6e9bi︠
%md
And in two dimensions something simliar...
︡17029402-6550-442e-b399-49021259775e︡{"html":"<p>And in two dimensions something simliar&#8230;</p>\n"}︡
︠efbd4938-24ac-4cef-89e5-e54cd7f3f8b7︠
a = vector([-1,1])
plot(a)
︡a2331033-38f4-403d-ab45-d7b421e2a4c7︡{"once":false,"file":{"show":true,"uuid":"2d6884d5-b26b-425d-bdf2-a8ca7a93e352","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/31476/tmp_Dv50GF.png"}}︡
︠f5eb782f-7cd3-4146-8f89-d26271ff86b8i︠
%md
If you find that you want a vector to have its tail some place beside the origin, use the <code>arrow</code> command
︡26298998-8296-45e8-b6d1-4b64d433cb0c︡{"html":"<p>If you find that you want a vector to have its tail some place beside the origin, use the <code>arrow</code> command</p>\n"}︡
︠ab118b9d-7018-4865-9f5c-102b943c58f3︠
plot(arrow([1,1],[2,3], color='red', arrowsize=2, width=2))
︡fb0c26f7-baea-46a9-a8fe-a40df473e811︡{"once":false,"file":{"show":true,"uuid":"9b25f4a7-98f6-4331-8b69-54a53f268a51","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/31476/tmp_U4AE7m.png"}}︡
︠d05a7a5b-950d-43c3-8fc2-44679e1660a0i︠
%md
Note that Sage cut off some of the plot here. Also, I used some options just to show them off.
The arrow command works in three dimensions, too.
︡941e4f95-014b-4ea5-8cdc-ee41ff6b6f63︡{"html":"<p>Note that Sage cut off some of the plot here. Also, I used some options just to show them off.\nThe arrow command works in three dimensions, too.</p>\n"}︡
︠1da74454-7445-4ef9-bf64-d4d534d50b21︠

︡72f32bc0-5ed5-46a3-a03c-a0d67f871271︡
︠1c3bbf06-8477-4617-b540-754e671ecb26i︠
%md
## Interactive Demonstrations ##
︡7efa4e00-7419-4b4b-9c21-94a457e83bde︡{"html":"<h2>Interactive Demonstrations</h2>\n"}︡
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

︡ae5815ce-0d08-4ba0-91af-1a5b45958d97︡{"interact":{"style":"None","flicker":false,"layout":[[["a",4,null],["c",4,null],["e",4,null]],[["b",4,null],["d",4,null],["f",4,null]],[["l",6,null],["m",6,null]],[["",12,null]]],"id":"4bcb6010-733a-438f-a9a9-b4105135a1f3","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":2,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":2,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":1,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null},{"control_type":"input-box","default":1,"label":"l","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"l","type":null},{"control_type":"input-box","default":1,"label":"m","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"m","type":null},{"control_type":"input-box","default":2,"label":"e","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"e","type":null},{"control_type":"input-box","default":2,"label":"f","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"f","type":null}]}}︡
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

︡060bf85c-67bc-4a49-b6ad-4069ae8b0426︡{"interact":{"style":"None","flicker":false,"layout":[[["a",4,null],["d",4,null],["g",4,null]],[["b",4,null],["e",4,null],["h",4,null]],[["c",4,null],["f",4,null],["i",4,null]],[["l",6,null],["m",6,null]],[["",12,null]]],"id":"d697e132-3365-4667-9634-5b818d667bc9","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":2,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":0,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":1,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null},{"control_type":"input-box","default":1,"label":"l","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"l","type":null},{"control_type":"input-box","default":1,"label":"m","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"m","type":null},{"control_type":"input-box","default":2,"label":"e","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"e","type":null},{"control_type":"input-box","default":2,"label":"f","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"f","type":null},{"control_type":"input-box","default":0,"label":"g","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"g","type":null},{"control_type":"input-box","default":2,"label":"h","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"h","type":null},{"control_type":"input-box","default":2,"label":"i","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"i","type":null}]}}︡
︠6f36c92b-0d13-4ac2-b219-080d334ed160︠









