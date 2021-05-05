"""
自定义一个包中的模块
    实现数学四则运算
    两个数的加减乘除运算
"""
# 手动添加全局变量__all__后，from 模块 import * 将不再是默认导入所有功能，
# 而是导入__all__列表中所包含的功能（python3中不提倡使用）
__all__ = ['add','sub','mul','div']

def add(a,b):
    """
    加法运算
    :return:两个数的和
    """
    print("自定义一个包中的模块")
    return a + b

def sub(a,b):
    """
    减法运算
    :return:两个数的差
    """
    return a - b
    
def mul(a,b):
    """
    乘法运算
    :return:两个数的乘积
    """
    return a * b
    
def div(a,b):
    """
    除法运算
    :return:两个数的商
    """
    return a / b

