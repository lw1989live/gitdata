import time
import turtle
# 1. 定义一个函数实现反响输出一个整数。比如：输入 3245，输出 5432
def reverseOutInt(num):
    return int(str(num)[::-1])
print(reverseOutInt(1324))
# 2. 编写一个函数，计算下面的数列：
def m(n):
    if n==1:return 1/2
    return n/(n+1) + m(n-1)
print(m(10))
# 3. 输入三角形三个顶点的坐标，若有效则计算三角形的面积；如坐标无效，则给出提示
def triangle(a,b,c):

	# res = 1/2*(x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2))
    #面积S=    (x1y2-x1y3+x2y3-x2y1+x3y1-x2y2)。
    # S=(1/2)*(x1y2+x2y3+x3y1-x1y3-x2y1-x3y2)。
    # S△ABC=|a1b2+b1c2+c1a2-a1c2-c1b2-b1a2|/2。
    # S=(x1y2+x2y3+x3y1-x1y3-x2y1-x3y2) /2;
    return 0

#4. 输入一个毫秒数，将该数字换算成小时数，分钟数、秒数。
def timeOf(millisecond):
    second = millisecond // 1
    minute = second // 60
    tTime = minute // 60
    return (tTime,minute,second)
now = time.time()
print(timeOf(now))
#5. 使用海龟绘图。输入多个点，将这些点都两两相连。
def outer(*po):
    t = turtle
    def inner(a,b):
        nonlocal t
        #t.penup()
        t.goto(a[0],a[1])
        #t.pendown()
        t.goto(b[0],b[1])

    pere = False
    for x in po:
        if not pere : 
            pere = x
            continue
        pere = x
        inner(pere,x)
    t.done()

outer((30,50),(40,50),(90,90))
