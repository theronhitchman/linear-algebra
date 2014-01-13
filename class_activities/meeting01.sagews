︠09f91ed0-ab18-4da4-815f-f661200d2ed6︠
@interact(layout = {'bottom': [['a','b','c','auto_update']]})
def _(
      a=input_box(1, label='$a=$', width=10),
      b=input_box(1, label='$b=$', width=10),
      c=input_box(1, label='$c=$', width=10),
      auto_update=False):
    var('x y')
    P = point([3,4],size=15)
    P+= implicit_plot(a*x+b*y == c, [x,-2,8],[y,-1,9], color='red')
    P+= text("$P = (3,4)$", (4.5,4.5), fontsize=20)
    P+= text("The line $ax+by=c$", (3,8), fontsize=20, color='red')
    P.show(axes=True)
︡4e7270c7-7e69-42c2-94c0-d35075dee3c0︡{"interact":{"style":"None","flicker":false,"layout":[[["a",3,null],["b",3,null],["c",3,null],["auto_update",3,null]],[["",12,null]]],"id":"0b0fed30-3016-4d2d-a340-47779f393e3a","controls":[{"control_type":"input-box","default":1,"label":"$a=$","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":1,"label":"$b=$","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":1,"label":"$c=$","nrows":1,"width":10,"readonly":false,"submit_button":null,"var":"c","type":null},{"default":false,"var":"auto_update","readonly":false,"control_type":"checkbox","label":"auto_update"}]}}︡
︠bf26536e-55b1-42c1-8e8b-079f442c94bf︠
%md
This interact is also at the sage cell server here:










