'''
Created on 2021年5月5日
我方坦克类继承坦克类，主要包括创建、与敌方坦克的碰撞方法。
@author: liwang
'''
import pygame
import ch12_tank.Tank

class MyTank(ch12_tank.Tank.Tank):
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
    def hitEnemyTank(self):
        pass