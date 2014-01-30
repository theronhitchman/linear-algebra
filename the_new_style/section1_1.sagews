︠3547f17c-5c9c-4eae-9ca9-1bf710271303i︠
%md
# Sage and Vectors #

### Basic Constructions ###

A vector in Sage is constructed by applying the <code>vector</code> command to a list. Lists are entered in square brackets with entries separated by commas, so the typical way to create a vector looks like this:

︡7566497c-1db1-4a01-b2c9-d4e60cef91ee︡{"html":"<h1>Sage and Vectors</h1>\n\n<h3>Basic Constructions</h3>\n\n<p>A vector in Sage is constructed by applying the <code>vector</code> command to a list. Lists are entered in square brackets with entries separated by commas, so the typical way to create a vector looks like this:</p>\n"}︡
︠467bc367-0202-433f-aff5-a88344f00068︠
u = vector([1,1,2])
︡ebedaa53-0651-4bf0-bf7c-68ba5473af86︡
︠9c8f0b32-bb98-45fe-970b-a9067707cea3i︠
%md
Notice that nothing was displayed. Sage just put the vector u into memory. We can ask for it by calling it.
︡3b2eebf3-35a1-4584-b09a-c212b1a19c36︡{"html":"<p>Notice that nothing was displayed. Sage just put the vector u into memory. We can ask for it by calling it.</p>\n"}︡
︠f44e7c68-f9e8-4839-a81c-6f6bd7926dd6︠
u
︡41e1de16-b2b5-4637-89d8-b630d283a0b3︡{"stdout":"(1, 1, 2)\n"}︡
︠80d35e5a-eca5-4749-8820-078febc815bbi︠
%md
Sage defaults to displaying vectors horizontally, which is different from how we normally write them by hand.
This is okay. You will get used to it quickly.

Sage knows how to add, multiply by scalars, and form linear combinations, and the notation for it is just as easy as you would expect.
︡ecad9217-90d0-4911-9e88-9ef9917802e8︡{"html":"<p>Sage defaults to displaying vectors horizontally, which is different from how we normally write them by hand.\nThis is okay. You will get used to it quickly.</p>\n\n<p>Sage knows how to add, multiply by scalars, and form linear combinations, and the notation for it is just as easy as you would expect.</p>\n"}︡
︠8958f1f2-c1f9-4d4e-a02f-3f21dbd76ee8︠
v = vector([-1,-1,2])
u + v
︡56f443f2-97e2-4630-a4d6-05cf2e988727︡{"stdout":"(0, 0, 4)\n"}︡
︠547ccabf-5aad-419e-a72b-a8d7c8d669f8︠
pi * u
︡2ed669d3-809a-4606-aa25-917ae7990d9d︡{"stdout":"(pi, pi, 2*pi)\n"}︡
︠07e2b3c2-73f5-4118-89de-9a2e5913b87b︠
3*u + 4 * v
︡a6bb0d2d-e16c-48e5-adaa-0ebcff709037︡{"stdout":"(-1, -1, 14)\n"}︡
︠1f74e490-ab6a-444f-94af-cd21dcb7c4e0i︠
%md
If you ask Sage to plot a vector, you get this kind of thing:
︡8d64af3e-dcb8-4104-bf39-222ee23e519f︡{"html":"<p>If you ask Sage to plot a vector, you get this kind of thing:</p>\n"}︡
︠48f9ebc4-5efd-4ee9-a7e7-b20d1861f18b︠
plot(v)
︡ea03c54d-20dc-401c-85e8-eaa191a6c8c9︡{"html":"<div id=09d8dc8f-c140-4b45-977d-5406eed6b1f7 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 4.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#09d8dc8f-c140-4b45-977d-5406eed6b1f7').salvus_threejs(obj)"},"once":false}︡
︠b4ee80ce-6292-4e31-925e-e77544da6e9bi︠
%md
And in two dimensions something simliar...
︡1f0867bf-f5e0-499e-b119-e7f3a5c65267︡{"html":"<p>And in two dimensions something simliar&#8230;</p>\n"}︡
︠efbd4938-24ac-4cef-89e5-e54cd7f3f8b7︠
a = vector([-1,1])
plot(a)
︡9115a13c-bb57-4712-aeb7-d67fa9043402︡{"once":false,"file":{"show":true,"uuid":"2d6884d5-b26b-425d-bdf2-a8ca7a93e352","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/24107/tmp_Xm9V_W.png"}}︡
︠f5eb782f-7cd3-4146-8f89-d26271ff86b8i︠
%md
If you find that you want a vector to have its tail some place beside the origin, use the <code>arrow</code> command
︡657e092c-ed87-4ae9-8206-8fa1009ca803︡{"html":"<p>If you find that you want a vector to have its tail some place beside the origin, use the <code>arrow</code> command</p>\n"}︡
︠ab118b9d-7018-4865-9f5c-102b943c58f3︠
plot(arrow([1,1],[2,3], color='red', arrowsize=2, width=2))
︡ca686ff5-6359-4f84-82d2-84d995a376bc︡{"once":false,"file":{"show":true,"uuid":"9b25f4a7-98f6-4331-8b69-54a53f268a51","filename":"/projects/d115ee6d-f378-4f70-b400-0f2aba16f10c/.sage/temp/compute3dc2/24107/tmp_VORpgS.png"}}︡
︠d05a7a5b-950d-43c3-8fc2-44679e1660a0i︠
%md
Note that Sage cut off some of the plot here. Also, I used some options just to show them off.
The arrow command works in three dimensions, too.
︡ee2b7046-438c-4b12-a160-0122c54f945e︡{"html":"<p>Note that Sage cut off some of the plot here. Also, I used some options just to show them off.\nThe arrow command works in three dimensions, too.</p>\n"}︡
︠1da74454-7445-4ef9-bf64-d4d534d50b21︠

︠1c3bbf06-8477-4617-b540-754e671ecb26i︠
%md
## Interactive Demonstrations ##
︡2e0847fd-e9a0-469d-b173-ded4e62ae810︡{"html":"<h2>Interactive Demonstrations</h2>\n"}︡
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
︠6f36c92b-0d13-4ac2-b219-080d334ed160︠









