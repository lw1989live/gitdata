# 测试全局变量、局部变量

a = 100   # 全局变量

def test01(x,y,z):
    b = 4   # 局部变量
    global a
    print(b*10)
    print(a)
    a = 300
    print(a)
    print(locals())
    print(globals())

test01(3,4,5)

print(a)

