import copy

class Student:

    def __init__(self,name,score,ls):  # self必须位于第一个参数
        self.name = name
        self.score  = score
        self.ls = ls

    def say_score(self):
        print("{0}的分数是：{1},{2}".format(self.name,self.score,self.ls))

s1 = Student("李旺",33,[3,10,[11,13]])
s2 = copy.copy(s1)
s2.ls[2].append(14)
s2.ls.append(44)
s1.say_score()
s2.say_score()

print(dir(s2))
print(s2.__dict__)
print(isinstance(s2,Student))
