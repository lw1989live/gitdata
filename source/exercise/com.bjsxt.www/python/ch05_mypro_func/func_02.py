# 测试形参、实参的基本用法

def printMax(a,b):
    '''实现两个数的比较，并返回较大的值'''
    if a > b :
        maxNum = a
    else:
        maxNum = b
    print(maxNum,'较大值')
    return maxNum

printMax(10,20)
printMax(300,200)

help(printMax.__doc__)
