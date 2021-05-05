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
        self.master.title("一个经典的GUI程序类的测试")
        self.master.geometry("700x220+200+300")
        f1 = tk.Frame(self);f1.pack()
        f2 = tk.Frame(self);f2.pack()
        
        btnText = ("流行风","中国风","日本风","重金属","轻音乐")
        for txt in btnText:
            tk.Button(f1,text=txt).pack(side="left",padx="10")
        
        for i in range(1,11):
            tk.Button(f2,width=5,height=10,bg="black" if i%2==0 else "white").pack(side="left")
        
    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    root.mainloop()
    