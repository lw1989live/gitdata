'''
Created on 2021年5月5日
坦克大战-游戏主逻辑类:主要包括开始游戏、结束游戏的功能
@author: liwang
'''
import pygame
import ch12_tank.Tank as ta
import time

_display = pygame.display
version = "v 1.05"
class MainGame:
    '''
    游戏主窗口
    '''

    window = None
    SCREEN_HEIGHT = 500
    SCREEN_WIDTH = 800
    COLOR_BLACK = pygame.Color(0, 0, 0)
    COLOR_RED = pygame.Color(255, 0, 0)
    # 创建我方坦克
    TANK_P1 = None

    def __init__(self):
        '''
        Constructor
        '''
        pass
                      
    # 开始游戏
    def startGame(self):
        
        _display.init()
        #创建窗口加载窗口
        MainGame.window = _display.set_mode(size=(self.SCREEN_WIDTH, self.SCREEN_HEIGHT))
        # 创建我方坦克
        MainGame.TANK_P1 = ta.Tank(MainGame, 400, 300)
        # 设置一下游戏标题
        _display.set_caption("坦克大战 {0}".format(version))
        #让窗口持续刷新操作
        while True:
            # 给窗口完成一个填充颜色
            MainGame.window.fill(self.COLOR_BLACK)
            # 
            self.getEvent()
            # 将绘制文字得到的小画布，粘贴到窗口中
            MainGame.window.blit(self.getTextSurface("剩余敌方坦克%d辆"%5), (5, 5))
            # #将我方坦克加入到窗口中
            MainGame.TANK_P1.displayTank()
            if MainGame.TANK_P1 and not MainGame.TANK_P1.stop:
                MainGame.TANK_P1.move()
            time.sleep(0.02)
            # 窗口的刷新
            _display.update()
    # 左上角文字绘制的功能
    def getTextSurface(self, text):
        # 初始化字体模块
        pygame.font.init()
        # fontList = pygame.font.get_fonts()
        # for f in fontList:print(f)
        # 选中一个合适的字体
        font = pygame.font.SysFont("98WB-1", 18)
        # 使用对应的字符完成相关内容的绘制
        textSurface = font.render(text, True, self.COLOR_RED)
        return textSurface
    # 获取程序期间所有事件（鼠标事件、键盘事件）
    def getEvent(self):
        # 获取所有事件
        eventList = pygame.event.get()
        # 2.对事件进行判断处理
        for event in eventList:
            # 判断 event.type 是否QUIT
            if event.type == pygame.QUIT :
                self.endGame()
            elif event.type == pygame.KEYDOWN :
                if event.key == pygame.K_LEFT :
                    print("坦克向左移动")
                    # 修改坦克方向
                    MainGame.TANK_P1.direction = 'L'
                    MainGame.TANK_P1.stop = False
                elif event.key == pygame.K_RIGHT :
                    print("坦克向右移动")
                    # 修改坦克方向
                    MainGame.TANK_P1.direction = 'R'
                    MainGame.TANK_P1.stop = False
                elif event.key == pygame.K_UP :
                    print("坦克向上移动")
                    # 修改坦克方向
                    MainGame.TANK_P1.direction = 'U'
                    MainGame.TANK_P1.stop = False
                elif event.key == pygame.K_DOWN :
                    print("坦克向下移动")
                    # 修改坦克方向
                    MainGame.TANK_P1.direction = 'D'
                    MainGame.TANK_P1.stop = False
                elif event.key == pygame.K_SPACE :
                    print("坦克射击")
            elif event.type == pygame.KEYUP :
                if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT \
                    or event.key == pygame.K_UP or event.key == pygame.K_DOWN :
                    MainGame.TANK_P1.stop = True
    
    # 结束游戏
    def endGame(self):
        print("谢谢使用")
        # 结束 Python 解释器
        exit()

if __name__ == "__main__" :
    MainGame().startGame()
    
