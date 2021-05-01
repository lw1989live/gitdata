# @property

class Employee:

    def __init__(self,name,salary):
        self.name=name
        self.__salary=salary

    @property
    def salary(self):
        return self.__salary
    
    @salary.setter
    def salary(self,salary):
        if 1000<salary<500000:
            self.__salary = salary
        else:
            print("错误，不在范围")
'''
    def get_sqlary(self):
        return self.__salary
    
    def set_salary(self,salary):
        if 1000<salary<500000:
            self.__salary = salary
        else:
            print("错误，不在范围")
'''

emp1 = Employee("李旺",300000)
print(emp1.salary)
emp1.salary = 500
print(emp1.salary)
