'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox

class Application(tk.Frame):
    '''
    一个经典的GUI程序的类的写法
    '''

    def __init__(self, master=None):
        '''
        Constructor
        '''
        super().__init__(master)    # super()代表的是父类的定义，而不是父类对象
        self.master = master
        self.pack()
        
        self.createWidget()
        
    def createWidget(self):
        '''
        创建组件
        '''
        self.master.geometry("400x300+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        
        self.scale01 = tk.Scale(self, from_=10, to=50,length=200,
                                tickinterval=5, orient=tk.HORIZONTAL, command=self.confirm)
        self.label01 = tk.Label(self, text="百战程序员", width= 10, height=1, 
                                bg="black", fg="white")
        
        self.scale01.pack()
        self.label01.pack()
        
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).pack()

    def confirm(self, value):
        '''
        '''
        print("滑块的值为：", value)
        newFont=("宋体",value)
        self.label01.config(font = newFont)
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()