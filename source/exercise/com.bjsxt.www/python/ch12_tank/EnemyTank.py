'''
Created on 2021年5月5日
敌方坦克类继承坦克类，主要包括创建、与我方坦克碰撞方法
@author: liwang
'''
import pygame
import random
import ch12_tank.Tank
import ch12_tank.Bullet
import ch12_tank.Tank

class EnemyTank(ch12_tank.Tank.Tank):
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
    def hitMyTank(self):
        pass