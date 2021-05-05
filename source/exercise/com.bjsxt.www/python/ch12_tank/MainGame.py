'''
Created on 2021年5月5日
坦克大战-游戏主逻辑类:主要包括开始游戏、结束游戏的功能
@author: liwang
'''
import pygame
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
        #设置一下游戏标题
        _display.set_caption("坦克大战 {0}".format(version))
        
        #让窗口持续刷新操作
        while True:
            # 给窗口完成一个填充颜色
            MainGame.window.fill(self.COLOR_BLACK)
            # 
            self.getEvent()
            # 将绘制文字得到的小画布，粘贴到窗口中
            MainGame.window.blit(self.getTextSurface("剩余敌方坦克%d辆"%5), (5, 5))
            # 窗口的刷新
            _display.update()
    # 左上角文字绘制的功能
    def getTextSurface(self, text):
        # 初始化字体模块
        pygame.font.init()
        # fontList = pygame.font.get_fonts()
        # for f in fontList:print(f)
        # 选中一个合适的字体
        font = pygame.font.SysFont("kaiti", 18)
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
                elif event.key == pygame.K_RIGHT :
                    print("坦克向右移动")
                elif event.key == pygame.K_UP :
                    print("坦克向上移动")
                elif event.key == pygame.K_DOWN :
                    print("坦克向下移动")
    
    # 结束游戏
    def endGame(self):
        print("谢谢使用")
        # 结束 Python 解释器
        exit()

if __name__ == "__main__" :
    MainGame().startGame()
    
