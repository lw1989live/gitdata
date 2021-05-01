# 测试私有属性

class Employee:

    __company = "百战程序员"

    def __init__(self,name,age):
        self.name = name
        self.__age = age
    
    def __work(self):
        print("work:")
        print("年龄：{0}".format(self.__age))
        print(Employee.__company)

e = Employee("李旺",18)
print(e.name)
print(e._Employee__age)

e._Employee__work()

print(Employee._Employee__company)

print(dir(e))

