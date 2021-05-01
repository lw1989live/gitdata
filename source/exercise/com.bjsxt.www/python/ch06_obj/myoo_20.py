import turtle
'''
实操作业
2. 设计一个名为 MyRectangle 的矩形类来表示矩形。这个类包含：
(1) 左上角顶点的坐标：x，y
(2) 宽度和高度：width、height
(3) 构造方法：传入 x，y，width，height。如果（x，y）不传则默认是 0，如果 width和 height 不传，则默认是 100. 
(4) 定义一个 getArea() 计算面积的方法
(5) 定义一个 getPerimeter()，计算周长的方法
(6) 定义一个 draw()方法，使用海龟绘图绘制出这个矩形
'''

class MyRectangle:
    
    def __init__(self,x = 0,y = 0,width = 100,height = 100):
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        print(x,y,width,height)

    def getArea(self):
        return self.width * self.height

    def getPerimeter(self):
        return (self.width + self.height) * 2
    
    def draw(self):
        t = turtle
        t.penup()
        t.goto(self.x,self.y)
        t.pendown()
        t.goto(self.x + self.width,self.y )
        t.goto(self.x + self.width,self.y - self.height)
        t.goto(self.x,self.y - self.height)
        t.goto(self.x,self.y)
        t.done()


r = MyRectangle(100,300,1000,500)

print(r.getArea())
print(r.getPerimeter())
r.draw()
