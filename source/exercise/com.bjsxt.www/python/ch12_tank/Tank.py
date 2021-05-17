'''
Created on 2021年5月5日
坦克类：主要包括坦克的创建、显示、移动及射击的功能
@author: liwang
'''
import pygame
import random
import ch12_tank.Bullet
import ch12_tank.BaseItem
import ch12_tank.MainGame
import ch12_tank.Music

class Tank(ch12_tank.BaseItem.BaseItem):
    '''
    坦克类
    '''

    def __init__(self, left, top):
        '''
        Constructor
        '''
        #self.main = main
        self.images= {
            'U':pygame.image.load('img/p1tankU.gif'),
            'D':pygame.image.load('img/p1tankD.gif'),
            'L':pygame.image.load('img/p1tankL.gif'),
            'R':pygame.image.load('img/p1tankR.gif')
            }
        self.direction = 'U'
        self.image = self.images[self.direction]
        #坦克所在的区域 Rect->
        self.rect = self.image.get_rect()
        #指定坦克初始化位置 分别距 x，y 轴的位置
        self.rect.left = left
        self.rect.top = top
        
        self.oldLeft = 0
        self.oldTop = 0
        
        self.speed = 5
        self.live = True
        self.oldLeft = self.rect.left
        self.oldTop = self.rect.top
    # 坦克的移动
    def move(self, window):
        self.oldLeft = self.rect.left
        self.oldTop = self.rect.top
        if self.direction == 'L':
            if self.rect.left > 0:
                self.rect.left -= self.speed
        elif self.direction == 'R':
            if self.rect.left + self.rect.width < ch12_tank.MainGame.SCREEN_WIDTH:
                self.rect.left += self.speed
        elif self.direction == 'U':
            if self.rect.top > 0:
                self.rect.top -= self.speed
        elif self.direction == 'D':
            if self.rect.top + self.rect.height < ch12_tank.MainGame.SCREEN_HEIGHT:
                self.rect.top += self.speed
    # 射击
    def shot(self):
        music = ch12_tank.Music.Music('music/hit.wav')
        music.playMusic()
        return ch12_tank.Bullet.Bullet(self)
    # 展示坦克(将坦克这个 surface 绘制到窗口中 blit())
    def displayTank(self, window):
        #1.重新设置坦克的图片
        self.image = self.images[self.direction]
        #2.将坦克加入到窗口中
        window.blit(self.image, self.rect)
    
    def stay(self):
        self.rect.left = self.oldLeft
        self.rect.top = self.oldTop
    
    def hitWalls(self, wall_list):
        for wall in wall_list:
            if pygame.sprite.collide_rect(wall, self):
                self.stay()

class MyTank(Tank):
    '''
    我方坦克类继承坦克类
    '''


    def __init__(self, left, top):
        '''
        Constructor
        '''
        super().__init__(left, top)
        #self.main = main
        self.images= {
            'U':pygame.image.load('img/p1tankU.gif'),
            'D':pygame.image.load('img/p1tankD.gif'),
            'L':pygame.image.load('img/p1tankL.gif'),
            'R':pygame.image.load('img/p1tankR.gif')
            }
        self.direction = 'U'
        self.image = self.images[self.direction]
        #坦克所在的区域 Rect->
        self.rect = self.image.get_rect()
        #指定坦克初始化位置 分别距 x，y 轴的位置
        self.rect.left = left
        self.rect.top = top
        
        self.speed = 5
        self.stop = True
    # 碰撞敌方坦克的方法
    
    def hitEnemyTank(self, tank_list):
        for tank in tank_list:
            if pygame.sprite.collide_rect(tank, self):
                self.stay()

class EnemyTank(Tank):
    '''
    敌方坦克类继承坦克类
    '''

    def __init__(self, left, top, speed):
        '''
        Constructor
        '''
        super().__init__(left, top)
        # 图片集
        self.images= {
            'U':pygame.image.load('img/enemy1U.gif'),
            'D':pygame.image.load('img/enemy1D.gif'),
            'L':pygame.image.load('img/enemy1L.gif'),
            'R':pygame.image.load('img/enemy1R.gif')
            }
        # 方向
        self.direction = self.randDirection()
        self.image = self.images[self.direction]
        # 坦克所在的区域 Rect->
        self.rect = self.image.get_rect()
        #指定坦克初始化位置 分别距 x，y 轴的位置
        self.rect.left = left
        self.rect.top = top
        # 新增速度属性
        self.speed = speed
        self.stop = True
        # 新增步数属性，控制坦克的随机移动
        self.step = 20
    # 生成随机的四个方向
    def randDirection(self):
        num = random.randint(1, 4)
        if num == 1:
            return 'U'
        elif num == 2:
            return 'D'
        elif num == 3:
            return 'L'
        elif num == 4:
            return 'R'
    # def displayEnemyTank(self):
    #     super.displayTank(self)
    # 射击
    def shot(self):
        num = random.randint(1, 1000)
        if num <= 20 :
            return ch12_tank.Bullet.Bullet(self)
    # 随机移动
    def randMove(self, window):
        if self.step <= 0:
            self.direction = self.randDirection()
            self.step = 50
        else:
            self.move(window)
            self.step -= 1
    # 碰撞我方坦克的方法
    def hitMyTank(self, tank):
        if tank and pygame.sprite.collide_rect(tank, self):
            # 让敌方坦克停下来 stay()
            self.stay()