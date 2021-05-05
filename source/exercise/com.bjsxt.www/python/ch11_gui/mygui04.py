'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，添加按钮对象
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
        # 显示图像
        global photo    # 把 photo 声明成全局变量。如果是局部变量，本方法执行完毕后，图像对象销毁，窗口显示不出图像。
        photo = tk.PhotoImage(file='../imgs/start.gif')
        
        self.button01 = tk.Button(self, text="登录", width=6, height=3, anchor=tk.NE, command=self.login)
        self.button01.pack()
        self.button02 = tk.Button(self, image=photo, command=self.login)
        self.button02.pack()
        self.button02.config(state="disabled")  #设置按钮为禁用
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def login(self):
        '''
        '''
        messagebox.showinfo("尚学堂学习系统", "登录成功，开始学习")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()