#多重继承
class A:
    def aa(self):
        print("aa")
    def say(self):
        print("say AAA!")
class B:
    def bb(self):
        print("bb")
    def say(self):
        print("say BBB!")
class C(B,A):
    def __init__(self,num):
        self.num = num
    def cc(self):
        print("cc")

c = C(33)
print(C.mro()) #打印类的层次结构
c.say() #解释器寻找方法是“从左到右”的方式寻找，此时会执行 B类中的 say()

print(dir(C))
print(c.__dict__)
print(c.__class__)
print(C.__bases__)
print(C.mro())
print(A.__subclasses__())

