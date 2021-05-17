'''
Created on 2021年5月13日

@author: liwang
'''
import numpy as np

#【示例】arange 生成 0 到 5 的数组
a = np.random.random(size=(2,3,4))

print(a)
print(type(a))


a = np.random.randint(5,10, size=(4,3,5))

print(a)
print(type(a))
# 【示例】numpy.random. randn ()的使用
a = np.random.randn(2,3,5)

print(a)
print(type(a))
#【示例】np.random.normal 指定期望和方差的正太分布
a = np.random.normal(loc= 4,scale=3,size=(2,3,5))

print(a)
print(type(a))