# 重写 object的__str__()
class Person:
    def __init__(self,name,age):
        self.name = name
        self.__age = age
    
    def __str__(self):
        return "名字是：{0}".format(self.name)
    

p1 = Person("李旺",33)

print(p1)
