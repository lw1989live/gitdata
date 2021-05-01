'''
4. 定义一个 Employee 雇员类，要求如下：
(1) 属性有：id、name、salary
(2) 运算符重载+：实现两个对象相加时，默认返回他们的薪水和
(3) 构造方法要求：输入 name、salary，不输入 id。id 采用自增的方式，从 1000 开始自增，第一个新增对象是 1001，第二个新增对象是 1002。
(4) 根据 salary 属性，使用@property 设置属性的 get 和 set 方法。set 方法要求输入：1000-50000 范围的数字。
'''

class Employee:

    id = 1000
     
    def __init__(self,name,salary):
        self.name = name
        self.__salary = salary
        Employee.id += 1

    @property
    def salary(self):
        return self.__salary
    
    @salary.setter
    def setsalary(self,salary):
        if 1000<salary<50000 :
            self.__salary = salary
        else:
            print("salary输入不正确，必须1000-50000 范围的数字")
    
    def __add__(self,other):
        if isinstance(other,Employee):
            return self.salary + other.salary

e1 = Employee("李旺",5000)
e2 = Employee("高湛",10000)

e1.setsalary = 20000
e1.setsalary = 2000000
print(e1.salary)

print(e1 + e2)
