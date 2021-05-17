'''
Created on 2021年5月13日

@author: liwang
'''
import numpy as np

# 【示例】创建一维
a = np.array([1,3,5,7])
print(a)
print(type(a))

b = np.array([[1,2,3], [4,5,6],[7,8,9]])
print(b)
print(type(b))

# 【示例】ndmin 参数的使用

c = np.array([1,3,5,7], ndmin=3)
print(c)
print(type(c))


# 【示例】dtype 参数的使用

d = np.array([[1,2,3], [4,5,6],[7,8,9]], dtype = float)
print(d)
print(type(d))

