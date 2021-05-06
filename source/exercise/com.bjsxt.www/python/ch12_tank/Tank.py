'''
Created on 2021年5月5日
坦克类：主要包括坦克的创建、显示、移动及射击的功能
@author: liwang
'''
import pygame

class Tank:
    '''
    坦克类
    '''
    main = None

    def __init__(self, main, left, top):
        '''
        Constructor
        '''
        self.main = main
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
    # 坦克的移动
    def move(self):
        if self.direction == 'L':
            if self.rect.left > 0:
                self.rect.left -= self.speed
        elif self.direction == 'R':
            if self.rect.left + self.rect.width < self.main.SCREEN_WIDTH :
                self.rect.left += self.speed
        elif self.direction == 'U':
            if self.rect.top > 0:
                self.rect.top -= self.speed
        elif self.direction == 'D':
            if self.rect.top + self.rect.height < self.main.SCREEN_HEIGHT:
                self.rect.top += self.speed
    # 射击
    def shot(self):
        pass
    # 展示坦克(将坦克这个 surface 绘制到窗口中 blit())
    def displayTank(self):
        #1.重新设置坦克的图片
        self.image = self.images[self.direction]
        #2.将坦克加入到窗口中
        self.main.window.blit(self.image, self.rect)