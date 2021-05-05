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
        通过grid布局，实现计算器界面
        '''
        dictText = (("MC", "M+", "M-", "MR"),
                    ("C", "+-", "/", "x"),
                    (7, 8, 9, "-"),
                    (4, 5, 6, "+"),
                    (1, 2, 3, "="),
                    (0, "."))
        tk.Entry(self).grid(row=0, column=0, columnspan=4, sticky=tk.EW)
        for rindex,r in enumerate(dictText):
            for cindex,c in enumerate(r):
                if c == "=":
                    tk.Button(self, text=c, width=2).grid(row=rindex + 1, column = cindex, rowspan=2, sticky=tk.NSEW)
                elif c == 0:
                    tk.Button(self, text=c, width=2).grid(row=rindex + 1, column = cindex, columnspan=2, sticky=tk.NSEW)
                elif c == ".":
                    tk.Button(self, text=c, width=2).grid(row=rindex + 1, column = cindex + 1, sticky=tk.NSEW)
                else:
                    tk.Button(self, text=c, width=2).grid(row=rindex + 1, column = cindex, sticky=tk.NSEW)

    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("200x250+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()