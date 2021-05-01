# 测试返回值的基本用法

def add(a,b):
    c = a + b
    print("计算两个数的和：{0},{2},{2}".format(a,b,c))
    return c

def test02():
    print("liwang")
    return
    print("sxt")

def test03(x,y,z):
    return [x*10,y*10,z*10]

c = add(30,40)
d = test02()
print(d)

e = test03(3,4,5)
print(e)
