'''
Created on 2021年5月5日
坦克大战-游戏主逻辑类:主要包括开始游戏、结束游戏的功能
@author: liwang
'''
import time
import random
import pygame
import ch12_tank.Tank
import ch12_tank.Bullet
import ch12_tank.Wall
import ch12_tank.Music
from _ast import Try

_display = pygame.display
SCREEN_HEIGHT = 500
SCREEN_WIDTH = 800
COLOR_BLACK = pygame.Color(0, 0, 0)
COLOR_RED = pygame.Color(255, 0, 0)
version = "v 1.05"
class MainGame:
    '''
    游戏主窗口
    '''

    window = None
    # 创建我方坦克
    TANK_P1 = None
    # 
    EnemyTank_list = []
    EnemyTank_count = 5
    Bullet_list = []
    EnemyBullet_list = []
    Explode_list = []
    Wall_list = []

    def __init__(self):
        '''
        Constructor
        '''
        pass
                      
    # 开始游戏
    def startGame(self):
        
        _display.init()
        #创建窗口加载窗口
        MainGame.window = _display.set_mode(size=(SCREEN_WIDTH, SCREEN_HEIGHT))
        # 创建我方坦克
        self.createMyTank()
        self.createEnemyTank()
        self.creatWalls()
        # 设置一下游戏标题
        _display.set_caption("坦克大战 {0}".format(version))
        #让窗口持续刷新操作
        while True:
            # 给窗口完成一个填充颜色
            MainGame.window.fill(COLOR_BLACK)
            # 
            self.getEvent()
            # 将绘制文字得到的小画布，粘贴到窗口中
            MainGame.window.blit(self.getTextSurface("剩余敌方坦克%d辆"%len(MainGame.EnemyTank_list)), (5, 5))
            # 循环展示敌方坦克
            self.blitEnemyTank()
            self.blitEnemyBullet()
            
            self.blitWalls()
            # #将我方坦克加入到窗口中
            if MainGame.TANK_P1 and MainGame.TANK_P1.live:
                MainGame.TANK_P1.displayTank(MainGame.window)
            else:
                del MainGame.TANK_P1
                MainGame.TANK_P1 = None
            # 根据坦克的开关状态调用坦克的移动方法
            if MainGame.TANK_P1 and not MainGame.TANK_P1.stop:
                MainGame.TANK_P1.move(MainGame.window)
                #调用碰撞墙壁的方法
                MainGame.TANK_P1.hitWalls(MainGame.Wall_list)
                #调用碰撞敌方坦克的方法
                MainGame.TANK_P1.hitEnemyTank(MainGame.EnemyTank_list)
            self.blitBullet()
            self.displayExplodes()
            time.sleep(0.02)
            # 窗口的刷新
            _display.update()
    # 左上角文字绘制的功能
    def getTextSurface(self, text):
        # 初始化字体模块
        pygame.font.init()
        # 选中一个合适的字体
        font = pygame.font.SysFont("98WB-1", 18)
        # 使用对应的字符完成相关内容的绘制
        textSurface = font.render(text, True, COLOR_RED)
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
            if event.type == pygame.KEYDOWN :
                if event.key == pygame.K_ESCAPE and not MainGame.TANK_P1:
                    self.createMyTank()
                if MainGame.TANK_P1 and MainGame.TANK_P1.live:
                    if event.key == pygame.K_LEFT :
                        # 修改坦克方向
                        MainGame.TANK_P1.direction = 'L'
                        MainGame.TANK_P1.stop = False
                    elif event.key == pygame.K_RIGHT :
                        # 修改坦克方向
                        MainGame.TANK_P1.direction = 'R'
                        MainGame.TANK_P1.stop = False
                    elif event.key == pygame.K_UP :
                        # 修改坦克方向
                        MainGame.TANK_P1.direction = 'U'
                        MainGame.TANK_P1.stop = False
                    elif event.key == pygame.K_DOWN :
                        # 修改坦克方向
                        MainGame.TANK_P1.direction = 'D'
                        MainGame.TANK_P1.stop = False
                    elif event.key == pygame.K_SPACE :
                        if len(MainGame.Bullet_list) < 3:
                            # m = ch12_tank.Bullet.Bullet(MainGame.TANK_P1)
                            m = MainGame.TANK_P1.shot()
                            MainGame.Bullet_list.append(m)
            if event.type == pygame.KEYUP :
                if MainGame.TANK_P1 and MainGame.TANK_P1.live:
                    if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT \
                        or event.key == pygame.K_UP or event.key == pygame.K_DOWN :
                        MainGame.TANK_P1.stop = True
    def createMyTank(self):
        MainGame.TANK_P1 = ch12_tank.Tank.MyTank(400, 300)
        #创建音乐对象
        music = ch12_tank.Music.Music('music/start.wav')
        music.playMusic()
    # 创建敌方坦克                
    def createEnemyTank(self):
        top = 100
        for i in range(MainGame.EnemyTank_count):
            # 每次都随机生成一个 left 值
            left = random.randint(1,7)
            speed = random.randint(3,6)
            eTank = ch12_tank.Tank.EnemyTank(left*100, top, speed)
            MainGame.EnemyTank_list.append(eTank)
    def creatWalls(self):
        for i in range(6):
            wall = ch12_tank.Wall.Wall(130*i, 240)
            MainGame.Wall_list.append(wall)
            
    def blitEnemyTank(self):
        for eTank in MainGame.EnemyTank_list:
            if eTank.live:
                eTank.displayTank(MainGame.window)
                # 坦克移动的方法
                eTank.randMove(MainGame.window)
                #调用敌方坦克与墙壁的碰撞方法
                eTank.hitWalls(MainGame.Wall_list)
                #敌方坦克是否撞到我方坦克
                eTank.hitMyTank(MainGame.TANK_P1)
                # 调用敌方坦克的射击
                eBullet = eTank.shot()
                # 如果子弹为 None。不加入到列
                if eBullet:
                    # 将子弹存储敌方子弹列表
                    MainGame.EnemyBullet_list.append(eBullet)
            else:
                MainGame.EnemyTank_list.remove(eTank)
            
    def blitBullet(self):
        for bullet in MainGame.Bullet_list:
            #如果子弹还活着，绘制出来，否则，直接从列表中移除该子弹
            if bullet.live:
                bullet.displayBullet(MainGame.window )
                # 让子弹移动
                bullet.bulletMove()
                # 调用我方子弹与敌方坦克的碰撞方法
                elist = bullet.hitEnemyTank(MainGame.EnemyTank_list)
                if elist:
                    MainGame.Explode_list = MainGame.Explode_list + elist
                bullet.hitWalls(MainGame.Wall_list)
            else:
                MainGame.Bullet_list.remove(bullet)
                
    def blitEnemyBullet(self):
        for eBullet in MainGame.EnemyBullet_list:
            if eBullet.live:
                eBullet.displayBullet(MainGame.window)
                eBullet.bulletMove()
                if MainGame.TANK_P1 and MainGame.TANK_P1.live:
                    explode = eBullet.hitMyTank(MainGame.TANK_P1)
                    if explode:
                        MainGame.Explode_list.append(explode)
                eBullet.hitWalls(MainGame.Wall_list)
            else:
                MainGame.EnemyBullet_list.remove(eBullet)
                
    def blitWalls(self):
        for wall in MainGame.Wall_list:
            if wall.live:
                wall.display(MainGame.window)
            else:
                MainGame.Wall_list.remove(wall)
                
    def displayExplodes(self):
        for explode in MainGame.Explode_list:
            if explode.live:
                explode.displayExplode(MainGame.window)
            else:
                MainGame.Explode_list.remove(explode)
    # 结束游戏
    def endGame(self):
        print("谢谢使用")
        # 结束 Python 解释器
        exit()

if __name__ == "__main__" :
    MainGame().startGame()
    
