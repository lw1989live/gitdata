# 测试类方法、静态方法
class Student:
    company = "LIWANG"

    @classmethod
    def print(cls):
        print(Student.company)

    @staticmethod
    def add(a,b):
        c = a + b
        print("{0}+{b}={c}".format(a,b,c))
        return c
    
    def __del__(self):
        print("销毁对象{}".format(self))

s1 = Student()
s2 = Student()
del s2
Student.print()

