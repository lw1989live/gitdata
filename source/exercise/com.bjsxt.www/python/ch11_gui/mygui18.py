'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox, OptionMenu
from click.decorators import option

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
        self.master.geometry("200x100+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        
        self.strVar = tk.StringVar(self)
        self.strVar.set("百战程序员")
        
        optionmenu01 = tk.OptionMenu(self, self.strVar, "尚学堂", "百战程序员", "李旺")
        
        optionmenu01["width"] = 10
        optionmenu01.pack()
        
        tk.Button(self, text="确定", command=self.confirm).pack()
        
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).pack()

    def confirm(self):
        '''
        '''
        print("下拉选项的值是：", self.strVar.get())
        self.strVar.set("李旺")
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()