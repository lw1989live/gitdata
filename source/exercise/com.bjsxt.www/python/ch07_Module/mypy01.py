"""
导入自定义模块
"""
##import MyMath
import Salary
import sys
import math as m
from a.MyMath import add,sub

a=10
b = 20

#c = MyMath.add(a,b)
c = add(a,b)

print(c)


print(Salary.__doc__)
print(Salary.yearSalary.__doc__)

print(sys.path)
