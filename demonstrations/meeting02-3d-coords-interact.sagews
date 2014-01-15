︠6dccae5d-4412-43c1-8f04-cc0f7db04b61i︠
%html
<h1>This is a quick demonstration of how coordinates work in three dimensional Euclidean space.</h1>
<p>The inputs $a$, $b$ and $c$ are the coordinates of a given point. The diagram shows the lengths that those numbers really represent.</p>

︡44d83846-a2ec-43cb-bf9c-3d900209f574︡{"html": "<h1>This is a quick demonstration of how coordinates work in three dimensional Euclidean space.</h1>\n<p>The inputs $a$, $b$ and $c$ are the coordinates of a given point. The diagram shows the lengths that those numbers really represent.</p>"}︡
︠f01efffb-75fc-44c2-9a8a-0dfc8ddfef65︠
x,y,z = var('x y z')
@interact
def f(a=slider(-2,6,1/10,2), b=slider(-2,6,1/10,3), c=slider(-2,6,1/10,5), show_proj=checkbox(False, label="Show Coordinate Axis Projections")):
    my_list = [a,b,c]
    Q = point(my_list, size = 10, color='green')
    Q+= implicit_plot3d(z == 0, [x,-2,6], [y,-2,6], [z,-2,6], opacity=0.2)
    Q+= implicit_plot3d(y == 0, [x,-2,6], [y,-2,6], [z,-2,6], opacity=0.2, color='red')
    Q+= implicit_plot3d(x == 0, [x,-2,6], [y,-2,6], [z,-2,6], opacity=0.2, color='yellow')
    v = vector(my_list)
    Q+= plot(v)
    Q+= point([0,0,0], size=10, color='black')
    Q+= line([my_list,[a,b,0]]) + line([my_list,[a,0,c]]) + line([my_list,[0,b,c]])
    Q+= point([a,b,0], size=10) + point([a,0,c], size=10) + point([0,b,c], size=10)
    if show_proj:
        v1 = vector([0,0,c])
        v2 = vector([0,b,0])
        v3 = vector([a,0,0])
        Q += plot(v1,size=10)+ plot(v2)+ plot(v3)

    show(Q)
︡c732e26b-8feb-41a6-9de7-6ea72ad5e478︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["b",12,null]],[["c",12,null]],[["show_proj",12,null]],[["",12,null]]],"id":"6d4f7caf-dd0d-4772-bce5-3501714e9947","controls":[{"control_type":"slider","default":40,"var":"a","width":null,"vals":["-2","-19/10","-9/5","-17/10","-8/5","-3/2","-7/5","-13/10","-6/5","-11/10","-1","-9/10","-4/5","-7/10","-3/5","-1/2","-2/5","-3/10","-1/5","-1/10","0","1/10","1/5","3/10","2/5","1/2","3/5","7/10","4/5","9/10","1","11/10","6/5","13/10","7/5","3/2","8/5","17/10","9/5","19/10","2","21/10","11/5","23/10","12/5","5/2","13/5","27/10","14/5","29/10","3","31/10","16/5","33/10","17/5","7/2","18/5","37/10","19/5","39/10","4","41/10","21/5","43/10","22/5","9/2","23/5","47/10","24/5","49/10","5","51/10","26/5","53/10","27/5","11/2","28/5","57/10","29/5","59/10","6"],"animate":true,"label":"a","display_value":true},{"control_type":"slider","default":50,"var":"b","width":null,"vals":["-2","-19/10","-9/5","-17/10","-8/5","-3/2","-7/5","-13/10","-6/5","-11/10","-1","-9/10","-4/5","-7/10","-3/5","-1/2","-2/5","-3/10","-1/5","-1/10","0","1/10","1/5","3/10","2/5","1/2","3/5","7/10","4/5","9/10","1","11/10","6/5","13/10","7/5","3/2","8/5","17/10","9/5","19/10","2","21/10","11/5","23/10","12/5","5/2","13/5","27/10","14/5","29/10","3","31/10","16/5","33/10","17/5","7/2","18/5","37/10","19/5","39/10","4","41/10","21/5","43/10","22/5","9/2","23/5","47/10","24/5","49/10","5","51/10","26/5","53/10","27/5","11/2","28/5","57/10","29/5","59/10","6"],"animate":true,"label":"b","display_value":true},{"control_type":"slider","default":70,"var":"c","width":null,"vals":["-2","-19/10","-9/5","-17/10","-8/5","-3/2","-7/5","-13/10","-6/5","-11/10","-1","-9/10","-4/5","-7/10","-3/5","-1/2","-2/5","-3/10","-1/5","-1/10","0","1/10","1/5","3/10","2/5","1/2","3/5","7/10","4/5","9/10","1","11/10","6/5","13/10","7/5","3/2","8/5","17/10","9/5","19/10","2","21/10","11/5","23/10","12/5","5/2","13/5","27/10","14/5","29/10","3","31/10","16/5","33/10","17/5","7/2","18/5","37/10","19/5","39/10","4","41/10","21/5","43/10","22/5","9/2","23/5","47/10","24/5","49/10","5","51/10","26/5","53/10","27/5","11/2","28/5","57/10","29/5","59/10","6"],"animate":true,"label":"c","display_value":true},{"default":false,"var":"show_proj","readonly":false,"control_type":"checkbox","label":"Show Coordinate Axis Projections"}]}}︡
︠514a85e6-43ad-4f43-9fe2-fb39fa15300f︠









