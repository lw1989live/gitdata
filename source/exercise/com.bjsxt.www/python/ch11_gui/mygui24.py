'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox
from tkinter.simpledialog import askinteger

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

        tk.Button(self, text="询问年龄", command=self.confirm).pack()
        self.show = tk.Label(self, width=40, height=3, bg="green")
        self.show.pack()

    def confirm(self):
        '''
        '''
        age = askinteger(title="输入年龄", prompt="请输入年龄",initialvalue=18, minvalue=1, maxvalue=150)
        self.show["text"] = age
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()