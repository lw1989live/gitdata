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
        self.varSex = tk.StringVar();
        self.varSex.set("F")
        
        self.radiobutton01 = tk.Radiobutton(self, text="男性", value="M", variable=self.varSex)
        self.radiobutton02 = tk.Radiobutton(self, text="女性", value="F", variable=self.varSex)
        self.radiobutton01.pack(side="left")
        self.radiobutton02.pack(side="left")
        tk.Button(self, text="确定", command=self.confirm).pack(side="left")
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def confirm(self):
        '''
        '''
        messagebox.showinfo("测试", "你选择的性别是：" + self.varSex.get())
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()