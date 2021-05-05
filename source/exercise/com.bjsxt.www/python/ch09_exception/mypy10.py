# 自定义 异常

class AgeError(Exception):
    def __init__(self,errorInfo):
        Exception.__init__(self)
        self.errorInfo = errorInfo
    
    def __str__(self):
        return "{0},年龄错误".format(self.errorInfo)

if __name__ == "__main__" :
    age = int(input("输入一个年龄："))
    if age < 1 or age > 150 :
        raise AgeError(age)
    else:
        print("年龄",age)

