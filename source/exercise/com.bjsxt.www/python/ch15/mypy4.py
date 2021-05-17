'''
Created on 2021年5月15日

@author: liwang
'''
from multiprocessing import Pool
import time

def work(num):
    print(num)
    time.sleep(0.5)

if __name__ == "__main__":
    print("父进程启动")
    po = Pool()
    for i in range(20):
        po.apply_async(work, (i,))
    po.close()
    po.join()