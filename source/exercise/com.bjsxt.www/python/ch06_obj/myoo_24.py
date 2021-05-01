'''
3. 使用工厂模式、单例模式实现如下需求：
(1) 电脑工厂类 ComputerFactory 用于生产电脑 Computer。工厂类使用单例模式，也就是说只能有一个工厂对象。
(2) 工厂类中可以生产各种品牌的电脑：联想、华硕、神舟
(3) 各种品牌的电脑使用继承实现：
(4) 父类是 Computer 类，定义了 calculate 方法
(5) 各品牌电脑类需要重写父类的 calculate 方法
'''

class Computer:
    def calculate(self):
        print("生产Computer。")

class ComputerFactory:
    __objFactory = None
    __init_flag = True

    def __new__(cls):
        if cls.__objFactory == None :
            cls.__objFactory = object.__new__(cls)
        return cls.__objFactory
    
    def __init__(self):
        if ComputerFactory.__init_flag :
            ComputerFactory.__init_flag = False

    def createComputer(self,c):
        if c == "联想":
            compu = Lenovo()
        elif c == "华硕":
            compu = Asus()
        elif c == "神舟":
            compu = Hasee()
        elif c == "ThinkPad":
            compu = ThinkPad()
        else:
            compu = None
        return compu

class Lenovo(Computer):
    def calculate(self):
        print("生产 Lenovo Computer!!!!")

class Asus(Computer):
    def calculate(self):
        print("生产 ASUS Computer!!!!")

class Hasee(Computer):
    def calculate(self):
        print("生产 Hasee Computer!!!!")

class ThinkPad(Computer):
    def calculate(self):
        print("生产 ThinkPad Computer!!!!")

f1 = ComputerFactory()
f2 = ComputerFactory()
print(f1)
print(f2)

c1 = f1.createComputer("联想")
c2 = f1.createComputer("华硕")
c3 = f1.createComputer("神舟")
c4 = f1.createComputer("ThinkPad")

c1.calculate()
c2.calculate()
c3.calculate()
c4.calculate()
