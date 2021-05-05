'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter import *

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
        self.master.geometry("500x300+200+300")
        self.master.title("一个经典的GUI程序类的测试place")
        self.master["bg"] = "white"

        f1 = tk.Frame(self.master, width=200, height=200, bg="green")
        f1.place(x=30,y=30)

        tk.Button(f1, text="尚学堂").place(relx=0.2, x=100, y = 20, relwidth=0.2, relheight=0.5)
        tk.Button(f1, text="百战程序员").place(relx=0.6, rely=0.2)
        tk.Button(f1, text="李旺同学").place(relx=0.5, rely=0.2)

        # 创建一个退出按钮


    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")


if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()