# 工厂模式

class CarFactory:

    __obj = None
    __init_flag = True

    def __new__(cls, *args, **kwargs):
        if cls.__obj == None:
            cls.__obj = object.__new__(cls)
        
        return cls.__obj

    def __init__(self):
        if CarFactory.__init_flag:
            print("__init CarFactory........")
            CarFactory.__init_flag = False

    def createCar(self,brand):
        if brand == "奔驰":
            car = Benz()
        elif brand == "宝马":
            car = BMW()
        elif brand == "比亚迪":
            car = BYD()
        else:
            car = None
        return car

class Benz:
    pass

class BMW:
    pass

class BYD:
    pass

factory = CarFactory()
c1 = factory.createCar("奔驰")
c2 = factory.createCar("宝马")
print(c1)
print(c2)

factory2 = CarFactory()
print(factory)
print(factory2)
