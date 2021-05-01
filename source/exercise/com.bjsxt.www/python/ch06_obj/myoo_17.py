#测试运算符的重载

class Person:
    def __init__(self,name,age):
        self.name = name
        self.__age = age
    
    def __add__(self, other):
        if isinstance(other,Person):
            return "{0}--{1}".format(self.name,other.name)
        else:
            return "不能相加"

    def __mul__(self,other):
        if isinstance(other,int):
            return self.name * other
        else:
            return "不能相乘"

p1 = Person("李旺",33)
p2 = Person("高湛",44)

x = p1 + p2
print(x)
print(x * 3)

