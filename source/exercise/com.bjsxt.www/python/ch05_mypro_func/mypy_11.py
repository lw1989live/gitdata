#测试参数类型：位置参数，默认值参数、命名参数 

def test01(a,b,c=15,d=30):
    """
    docstring
    """
    print("{0}-{1}-{2}-{3}".format(a,b,c,d))

test01(10,20,30,40)
test01(d=20,b=40,c=80,a=10)
test01(2,3,4)
