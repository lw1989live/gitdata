'''
Created on 2021年5月15日

@author: liwang
'''
from multiprocessing import Process
from time import sleep

def run():
    for i in range(3):
        print("123")
        sleep(0.5)

def run1():
    for i in range(3):
        print("234")
        sleep(0.5)

if __name__ == "__main__":
    p = Process(target=run)
    p.start()
    p1 = Process(target=run1)
    p1.start()
    p.join()
    p1.join()
