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
        self.label01 = tk.Label(self, text="用户名：")
        self.label01.grid(row=0, column=0)
        self.entry01 = tk.Entry(self)
        self.entry01.grid(row=0, column=1)
        tk.Label(self, text="用户名为手机号").grid(row=0, column=2)
        
        tk.Label(self, text="密码：").grid(row=1, column=0)
        tk.Entry(self, show="*").grid(row=1, column=1)
        
        tk.Button(self,text="登录").grid(row=2, column=1, sticky=tk.EW)
        
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).grid(row=2, column=2, sticky=tk.E)
        
    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x90+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()