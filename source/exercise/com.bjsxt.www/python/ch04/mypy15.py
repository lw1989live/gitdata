import turtle

width = 20
num = 18
half = width * num / 2
x1 = [(-half,half),(half,half)]
y1 = [(-half,half),(-half,-half)]

t = turtle.Pen()

for i in range(num + 1):
    t.penup()
    t.goto(x1[0][0],x1[0][1] - i * width)
    t.pendown()
    t.goto(x1[1][0],x1[1][1] - i * width)
# for i in range(num):
    t.penup()
    t.goto(y1[0][0] + i * width,y1[0][1])
    t.pendown()
    t.goto(y1[1][0] + i * width,y1[1][1])

turtle.hideturtle()
turtle.done()
