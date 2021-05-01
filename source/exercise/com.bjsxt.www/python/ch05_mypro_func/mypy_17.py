# 测试 nonlocal、global关键字用法
a = 100
def outer():
    b = 10

    def inner():
        nonlocal b
        print("inner:",b)
        b = 20
        global a
        a = 1000
    inner()
    print("outer b:",b)

outer()
print("a:",a)
