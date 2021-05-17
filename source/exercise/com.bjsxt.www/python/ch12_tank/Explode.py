'''
Created on 2021年5月5日
爆炸效果类：主要展示爆炸效果
@author: liwang
'''
import pygame
import ch12_tank.Music

class Explode():
    '''
    爆炸效果类
    '''


    def __init__(self, tank):
        '''
        Constructor
        '''
        self.tank = tank
        self.images= [
            pygame.image.load('img/blast0.gif'),
            pygame.image.load('img/blast1.gif'),
            pygame.image.load('img/blast2.gif'),
            pygame.image.load('img/blast3.gif'),
            pygame.image.load('img/blast4.gif')
            ]
        self.rect = tank.rect
        self.step = 0
        self.image = self.images[self.step]
        self.live = True
    # 展示爆炸效果
    def displayExplode(self, window):
        music = ch12_tank.Music.Music('music/fire.wav')
        music.playMusic()
        if self.step < len(self.images):
            window.blit(self.image, self.rect)
            self.image = self.images[self.step]
            self.step += 1
        else:
            self.live = False
            self.step = 0