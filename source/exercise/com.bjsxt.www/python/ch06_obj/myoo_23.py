
'''
2. 定义发动机类 Motor、底盘类 Chassis、座椅类 Seat，车辆外壳类 Shell，并使用组合
关系定义汽车类。其他要求如下：
定义汽车的 run()方法，里面需要调用 Motor 类的 work()方法，也需要调用座椅
类 Seat 的 work()方法，也需要调用底盘类 Chassis 的 work()方法
'''

class Motor:
    """
    发动机类
    """
    def work(self):
        print("发动机 work()")

class Chassis:
    """
    底盘类
    """
    def work(self):
        print("底盘类 work()")

class Seat:
    """
    座椅类
    """
    def work(self):
        print("座椅类 work()")

class Shell:
    """
    座椅类车辆外壳类
    """
    pass

class Cat:
    """
    汽车类
    """
    def __init__(self,motor,chassis,seat,shell):
        self.motor = motor
        self.chassis = chassis
        self.seat = seat
        self.shell = shell
        print(self.motor,self.chassis,self.seat,self.shell)

    def run(self):
        print("汽车类 run()")
        self.motor.work()
        self.chassis.work()
        self.seat.work()

cat = Cat(Motor(),Chassis(),Seat(),Shell())
cat.run()

