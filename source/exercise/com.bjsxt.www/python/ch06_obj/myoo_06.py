
class SalaryAccount:
    """
    docstring
    """
    
    def __call__(self,salary):
        print("test")
        yearSalary = salary * 12
        daySalary = salary // 22.5
        hourSalary = daySalary // 8
        return dict(yearSalary=yearSalary,monthSalary=salary,daySalary=daySalary,hourSalary=hourSalary)
    
s = SalaryAccount()
print(s(5000))
