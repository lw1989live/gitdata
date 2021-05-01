class Student:
    company = "LIWANG"
    count = 0
    def __init__(self,name,score):  # self必须位于第一个参数
        self.name = name
        self.score  = score
        Student.count = Student.count + 1
    def say_score(self):
        print(":",Student.company)
        print("{0}的分数是：{1}".format(self.name,self.score))

stu2 = Student

s1 = stu2("李旺",100)
s1.say_score()
s2 = Student("test",300)


print("创建了{0}个对象".format(Student.count))
