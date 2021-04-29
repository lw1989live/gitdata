import turtle

t = turtle.Pen()
po = 50
t.width(4)
t.speed(1)
colors = ("red","green","yellow","black")

for i in range(10):
    t.penup()
    t.goto(0, -i*10)
    t.pendown()
    t.color(colors[i%len(colors)])
    t.circle(po + i*10)


turtle.done()
