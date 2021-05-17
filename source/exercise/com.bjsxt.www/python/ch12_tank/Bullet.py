'''
Created on 2021年5月5日
子弹类：主要包括子弹的创建、显示及移动的功能
@author: liwang
'''
import pygame
from ch12_tank.Explode import Explode
from ch12_tank.BaseItem import BaseItem
import ch12_tank

class Bullet(BaseItem):
    '''
    子弹类
    '''


    def __init__(self, tank):
        '''
        Constructor
        '''
        self.tank = tank
        # 图片
        self.image = pygame.image.load('img/enemymissile.gif')
        # 方向（坦克方向）
        self.direction = tank.direction
        # 位置
        self.rect = self.image.get_rect()
        if self.direction == 'U':
            self.rect.left = tank.rect.left + tank.rect.width / 2 - self.rect.width / 2
            self.rect.top = tank.rect.top - self.rect.height
        elif self.direction == 'D':
            self.rect.left = tank.rect.left + tank.rect.width / 2 - self.rect.width / 2
            self.rect.top = tank.rect.top + tank.rect.height
        elif self.direction == 'L':
            self.rect.left = tank.rect.left - self.rect.width / 2 - self.rect.width / 2
            self.rect.top = tank.rect.top + tank.rect.width / 2 - self.rect.width / 2
        elif self.direction == 'R':
            self.rect.left = tank.rect.left + tank.rect.width
            self.rect.top = tank.rect.top + tank.rect.width / 2 - self.rect.width / 2
        # 速度
        self.speed = 7
        # 用来记录子弹是否活着
        self.live = True
    # 子弹移动的方法
    def bulletMove(self):
        if self.direction == 'U':
            if self.rect.top > 0:
                self.rect.top -= self.speed
            else:
                self.live = False
        elif self.direction == 'D':
            if self.rect.top + self.rect.height < ch12_tank.MainGame.SCREEN_HEIGHT:
                self.rect.top += self.speed
            else:
                self.live = False
        elif self.direction == 'L':
            if self.rect.left > 0:
                self.rect.left -= self.speed
            else:
                self.live = False
        elif self.direction == 'R':
            if self.rect.left + self.rect.width < ch12_tank.MainGame.SCREEN_WIDTH:
                self.rect.left += self.speed
            else:
                self.live = False
    # 展示子弹的方法
    def displayBullet(self, window):
        window.blit(self.image, self.rect)
    # 我方子弹碰撞敌方坦克的方法
    def hitEnemyTank(self, eTank_list):
        explode_list = []
        for eTank in eTank_list:
            if pygame.sprite.collide_rect(eTank, self):
                # 产生一个爆炸效果
                explode = Explode(eTank)
                # 将爆炸效果加入到爆炸效果列表
                explode_list.append(explode)
                self.live = False
                eTank.live = False
        return explode_list
    # 敌方子弹碰撞我方坦克的方法
    def hitMyTank(self, tank):
        if pygame.sprite.collide_rect(tank, self):
            # 产生一个爆炸效果
            explode = Explode(tank)
            # 将爆炸效果加入到爆炸效果列表
            self.live = False
            tank.live = False
            return explode
    # 子弹与墙壁的碰撞
    def hitWalls(self, wall_list):
        explode_list = []
        for wall in wall_list:
            if pygame.sprite.collide_rect(wall, self):
                # 产生一个爆炸效果
                explode = Explode(wall)
                # 将爆炸效果加入到爆炸效果列表
                explode_list.append(explode)
                #修改子弹的 live 属性
                self.live = False
                wall.hp -= 1
                if wall.hp <= 0 :
                    wall.live = False