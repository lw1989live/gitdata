'''
Created on 2021年5月15日

@author: liwang
'''
from multiprocessing import Process
from time import sleep
num = 1
def run():
    global num
    num += 5
    print("在子进程1中num= %d"%(num))

def run1():
    global num
    num += 10
    print("在子进程2中num= %d"%(num))

if __name__ == "__main__":
    print("父进程启动")
    p = Process(target=run)
    p1 = Process(target=run1)
    p.start()
    p1.start()
    p.join()
    p1.join()
