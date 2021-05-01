# 测试@property的用法
class Employee:
    @property
    def salary(self):
        print("salary run...")
        return 10000

emp1 = Employee()

print(emp1.salary)
