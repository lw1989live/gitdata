"""
package
    包中的__init__.py用初始化模块
    __init__.py可以存放和普通模块一样的代码
    一般会写一些辅助代码：
        方便导入使用模块
"""
#import myPackage
from myPackage import MyMath

c = MyMath.add(1,3)
print(c)
