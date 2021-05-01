# 测试浅拷贝和深拷贝
import copy

def testCopy():
    '''测试浅拷贝'''
    a = [10,20,[5,6]]
    b = copy.copy(a)    
    b.append(30)
    b[2].append(7)
    print("测试浅拷贝")
    print("a:",a)
    print("b:",b)


def testDeepCopy():
    '''测试深拷贝'''
    a = [10,20,[5,6]]
    b = copy.deepcopy(a)    
    b.append(30)
    b[2].append(7)
    print("测试深拷贝")
    print("a:",a)
    print("b:",b)

testCopy()
testDeepCopy()
