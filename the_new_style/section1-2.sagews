︠0b876bd7-267f-43ca-a5da-d3bb94dbe941i︠
%md
# Section 1-2 Sage Tutorial #

### Computing Dot Products and related things with Sage###

Sage has a built-in dot product command:
    <code>
        u.dot_product(v)
    </code>

This will return the dot product of the vectors $u$ and $v$.
︡83eb57ee-5f31-45e9-bc0c-4b0dc20ce4d3︡{"html":"<h1>Section 1-2 Sage Tutorial</h1>\n\n<h3>Computing Dot Products and related things with Sage</h3>\n\n<p>Sage has a built-in dot product command:\n    <code>\n        u.dot_product(v)\n    </code></p>\n\n<p>This will return the dot product of the vectors $u$ and $v$.</p>\n"}︡
︠c8b1876f-493c-41a5-9639-5d5ea05b60f1︠
u = vector([1,1,1]); v = vector([-1,0,1])
u.dot_product(v)
︡42317c00-3576-4299-8dd2-086e6512e297︡{"stdout":"0\n"}︡
︠2edcd08c-37e8-4787-bc51-190a7626f313i︠
%md
It also has a built-in command for computing lengths. Here Sage uses the synonym "norm."
    <code>
        u.norm()
    </code>

Of course, you can also call it like a function instead of as a method:
    <code>
        norm(u)
    </code>

Both of these commands will return the length of a vector.
︡6f574256-549d-4614-b28b-14ba44ea4adf︡{"html":"<p>It also has a built-in command for computing lengths. Here Sage uses the synonym &#8220;norm.&#8221;\n    <code>\n        u.norm()\n    </code></p>\n\n<p>Of course, you can also call it like a function instead of as a method:\n    <code>\n        norm(u)\n    </code></p>\n\n<p>Both of these commands will return the length of a vector.</p>\n"}︡
︠f70e8aaf-319b-4fd1-abad-1b37c3d2cf1b︠
u.norm(); norm(v)
︡1e58f256-8205-4c7a-8d63-3489004b743e︡{"stdout":"sqrt(3)\nsqrt(2)\n"}︡
︠68e6c0e9-1288-4756-8e44-41053972601di︠
%md
There is no built-in command for angles. You just have to compute them like so:
︡ece5f1bf-c0c2-4b93-a9ff-92688086a23c︡{"html":"<p>There is no built-in command for angles. You just have to compute them like so:</p>\n"}︡
︠733acbfe-1d67-4b50-8361-4fb9ad3ed0b3︠
angle = arccos( ( u.dot_product(v) ) / (u.norm()*v.norm()) )
angle
︡68d87c50-7cbe-4fdd-b1c5-496a879766b1︡{"stdout":"1/2*pi\n"}︡
︠611228eb-6c3c-4172-8d12-bebb754a1988i︠
%md
Of course, Sage's <code>arccos</code> command returns a result in radians.
To switch to degrees, you must convert.
︡cc8bf34a-7758-464a-a6f6-73d7f562f3f6︡{"html":"<p>Of course, Sage&#8217;s <code>arccos</code> command returns a result in radians.\nTo switch to degrees, you must convert.</p>\n"}︡
︠18860d52-0653-493b-b252-ded877b79d7a︠
angle*180/pi
︡5c0c1b35-a5c2-4bb3-9c5b-fbca282268d2︡{"stdout":"90\n"}︡
︠103800b5-96fc-4264-915d-352d6cefe4e6︠
%md
Often it is helpful to normalize a vector. You can do this with the <code>normalized</code> method like this:
︡ce3312ee-0afc-4558-906e-75835a66fcad︡{"html":"<p>Often it is helpful to normalize a vector. You can do this in place like this:</p>\n"}︡
︠383064c4-daf1-4ed8-a1f5-b35c55aed841︠
u.normalized()
︡ec15c073-e4f0-4e33-be02-7e851d4e6166︡{"stdout":"(1/3*sqrt(3), 1/3*sqrt(3), 1/3*sqrt(3))\n"}︡
︠cde1ac79-f9a4-4871-84c2-8976e94f802bi︠
%md
## Sage Interacts ##
Here is a Sage interact which will allow you to try explore the relationship between the geometry of two vectors in the plane and their dot product.
︡a2e7a025-bcd2-4eb8-9a36-579cb13d2c78︡{"html":"<h2>Sage Interacts</h2>\n\n<p>Here is a Sage interact which will allow you to try explore the relationship between the geometry of two vectors in the plane and their dot product.</p>\n"}︡
︠aa87bc24-27e3-45c0-bfaa-e51a0b32a619︠
@interact(layout = {'top':[['a','b','c','d']]})
def _(a = input_box(1,width=10), b = input_box(1,width=10), c = input_box(1,width=10),
      d = input_box(0,width=10)):
    u = vector([a,b]); v = vector([c,d])
    myplot = arrow([0,0],[a,b], color='blue') + text('u = (a, b)', (a+.1, b+.1), color='blue')
    myplot+= arrow([0,0],[c,d], color='red') + text('u = (c, d)', (c+.1, d+.1), color='red')
    myplot+= text('%s = %s' % ('$u \cdot v$', u.dot_product(v)), ( (b+d)/2, -.2), color='black')
    show(myplot, aspect_ratio=1, axes=True)
︡cfb5fa5e-70a3-4e7c-8975-2463d6b112cf︡{"interact":{"style":"None","flicker":false,"layout":[[["a",3,null],["b",3,null],["c",3,null],["d",3,null]],[["",12,null]]],"id":"1e236960-0edb-416d-8cf4-9fdebc9a4207","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":1,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":1,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":0,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null}]}}︡
︠1bd9a7e2-9807-427f-9c9b-d0f0b1dcd5c3︠
%md
And here is another one in three dimensions.
︠62de8d68-44e1-4e9c-b446-5712c11bd086︠
@interact(layout = {'top':[['a','b','c','d','e','f']]})
def _(a = input_box(1,width=10), b = input_box(1,width=10), c = input_box(1,width=10),
      d = input_box(0,width=10), e = input_box(1,width=10), f = input_box(0,width=10)):
    u = vector([a,b,c]); v = vector([d,e,f])
    myplot = arrow([0,0,0],[a,b,c], color='blue') + text3d('u = (a, b, c)', (a+.1, b+.1, c), color='blue')
    myplot+= arrow([0,0,0],[d,e,f], color='red') + text3d('u = (d, e, f)', (d+.1, e+.1, f), color='red')
    show(myplot, aspect_ratio=1, axes=True)
    print('%s = %s' % ('$u \cdot v$', u.dot_product(v)))
︡599d12e2-7817-470c-adbd-7d6442940fe3︡{"interact":{"style":"None","flicker":false,"layout":[[["a",2,null],["b",2,null],["c",2,null],["d",2,null],["e",2,null],["f",2,null]],[["",12,null]]],"id":"1a1e6a0b-505c-4d60-abd0-178eca95bd8c","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":1,"label":"b","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":1,"label":"c","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"control_type":"input-box","default":0,"label":"d","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"d","type":null},{"control_type":"input-box","default":1,"label":"e","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"e","type":null},{"control_type":"input-box","default":0,"label":"f","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"f","type":null}]}}︡
︠249b2f35-0749-4c25-bf5d-100c4a2b5180︠










