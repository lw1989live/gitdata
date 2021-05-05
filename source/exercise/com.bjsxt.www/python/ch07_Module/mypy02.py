"""
导入自定义包中的模块
"""
#import myPackage.MyMath
from myPackage.MyMath import add

a=10
b = 20

#c = myPackage.MyMath.add(a,b)
c = add(a,b)

print(c)
