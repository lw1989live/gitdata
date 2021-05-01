# 测试方法的动态改

class Person:
    def work(self):
        print("努力上班")
    
def play_game(s):
    print("{0}在玩游戏".format(s))

Person.play = play_game

p = Person()
p.work()
p.play()
