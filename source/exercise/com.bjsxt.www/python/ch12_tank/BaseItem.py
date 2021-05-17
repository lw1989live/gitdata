'''
Created on 2021年5月8日

@author: liwang
'''
import pygame

class BaseItem(pygame.sprite.Sprite):
    '''
    classdocs
    '''


    def __init__(self):
        '''
        Constructor
        '''
        pygame.sprite.Sprite.__init__(self)