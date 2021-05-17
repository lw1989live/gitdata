'''
Created on 2021年5月5日
音效类：主要播放音乐。
@author: liwang
'''
import pygame

class Music():
    '''
    音效类
    '''


    def __init__(self, fileName):
        '''
        Constructor
        '''
        self.fileName = fileName
        #先初始化混合器
        pygame.mixer.init()
        pygame.mixer.music.load(self.fileName)
    # 开始播放音乐
    def playMusic(self):
        pygame.mixer.music.play()