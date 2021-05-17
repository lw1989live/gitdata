'''
Created on 2021年5月5日
墙壁类：主要包括墙壁的创建、显示的功能
@author: liwang
'''
import pygame
from ch12_tank.BaseItem import BaseItem

class Wall(BaseItem):
    '''
    墙壁类
    '''


    def __init__(self, left,top):
        '''
        Constructor
        '''
        self.image = pygame.image.load("img/steels.gif")
        self.rect = self.image.get_rect()
        self.rect.left = left
        self.rect.top = top
        #用来判断墙壁是否应该在窗口中展示
        self.live = True
        #用来记录墙壁的生命值
        self.hp = 9
    # 展示墙壁的方法
    def display(self, window):
        window.blit(self.image, self.rect)