'''
Created on 2021年5月15日

@author: liwang
'''
import multiprocessing
import time

class MyProcess(multiprocessing.Process):
    def run(self):
        n = 5
        while n > 0:
            print(n)
            time.sleep(0.5)
            n -= 1

if __name__ == "__main__":
    print("父进程启动")
    p = MyProcess()
    p.start()
    p.join()
