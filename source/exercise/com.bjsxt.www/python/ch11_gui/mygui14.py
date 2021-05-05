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
        self.master.geometry("600x270+200+300")
        self.master.title("一个经典的GUI程序类的测试")
                
        self.photos = [tk.PhotoImage(file="imgs/puke/puke"+str(i+1)+".gif") for i in range(10)]
        self.pukes = [tk.Label(self.master, image=self.photos[i]) for i in range(10)]
        
        for i in range(10):
            self.pukes[i].place(x=10+i*40, y=50)
        
        # 为所有的Label增加事件
        self.pukes[0].bind_class("Label", "<Button-1>", self.chupai)
        
        # 创建一个退出按钮
        #tk.Button(self, text="退出", command=self.master.destroy).pack()

    def chupai(self,event):
        '''
        '''
        #print(event.widget.winfo_geometry())
        #print(event.widget.winfo_y())
        
        if event.widget.winfo_y() == 50:
            event.widget.place(y=30)
        else:
            event.widget.place(y=50)
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()