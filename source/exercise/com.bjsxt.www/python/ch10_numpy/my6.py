'''
Created on 2021年5月13日

@author: liwang
'''
import numpy as np

x1=np.random.randint(10,size=6)
print(x1)
x2=np.random.randint(10,size=(3,4))
print(x2)
x3=np.random.randn(3,4,5)
print('ndim 属性'.center(20,'*'))
print('ndim:',x1.ndim,x2.ndim,x3.ndim)
print('shape 属性'.center(20,'*'))
print('shape:',x1.shape,x2.shape,x3.shape)
print('dtype 属性'.center(20,'*'))
print('dtype:',x1.dtype,x2.dtype,x3.dtype)
print('size 属性'.center(20,'*'))
print('size:',x1.size,x2.size,x3.size)
print('itemsize 属性'.center(20,'*'))#一个字节是 8 位
print('itemsize:',x1.itemsize,x2.itemsize,x3.itemsize)