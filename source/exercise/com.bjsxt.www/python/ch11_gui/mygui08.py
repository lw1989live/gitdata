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
        self.intCodeHobby = tk.IntVar()
        self.intVideoHobby = tk.IntVar()
        
        print("默认值是：",self.intCodeHobby.get())
        
        self.checkbutton01 = tk.Checkbutton(self, text="敲代码", variable=self.intCodeHobby, onvalue=1, offvalue=0)
        self.checkbutton02 = tk.Checkbutton(self, text="看视频", variable=self.intVideoHobby, onvalue=1, offvalue=0)
        self.checkbutton01.pack(side="left");self.checkbutton02.pack(side="left")
        
        tk.Button(self, text="确定", command=self.confirm).pack(side="left")
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def confirm(self):
        '''
        '''
        if self.intVideoHobby.get() == 1:
            messagebox.showinfo("title", "intVideoHobby")
        if self.intCodeHobby.get() == 1:
            messagebox.showinfo("title", "intCodeHobby")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()