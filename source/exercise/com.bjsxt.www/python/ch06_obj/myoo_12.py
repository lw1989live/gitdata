class Person:
    def __init__(self,name,age):
        self.name = name
        self.__age = age
    
    def say_age(self):
        print("年龄：{0}".format(self.__age))
    
    def say_introduce(self):
        print("名字是{0}".format(self.name))

class Student(Person):
    def __init__(self,name,age,score):
        Person.__init__(self,name,age)
        self.score = score

    def say_introduce(self):
        #重写
        print("名字是{0}，年龄是{1}".format(self.name,11))

p1 = Person("李旺",33)
s1 = Student("高湛",34,60)
s1.say_introduce()
s1.say_age()

print(dir(s1))
