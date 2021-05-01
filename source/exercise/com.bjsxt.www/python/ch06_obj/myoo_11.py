class Person:
    def __init__(self,name,age):
        self.name = name
        self.__age = age
    
    def say_age(self):
        print("年龄：{0}".format(self.__age))

class Student(Person):
    def __init__(self,name,age,score):
        Person.__init__(self,name,age)
        self.score = score

p1 = Person("李旺",33)
s1 = Student("继",34,60)
print(s1.name)
s1.say_age()

print(dir(s1))
