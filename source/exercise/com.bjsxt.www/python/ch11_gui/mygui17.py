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
        self.master.geometry("270x30+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        
        b1 = tk.Button(self, text="测试 bind()绑定")
        b1.pack(side="left")
        # bind 方式绑定事件
        b1.bind("<Button-1>", self.mouseTest1)
        
        # command 属性直接绑定事件
        b2 = tk.Button(self, text="测试 command2", command=lambda:self.mouseTest2("极是","李旺"))
        b2.pack(side="left")
        
        # 给所有 Button 按钮都绑定右键单击事件<Button-2>
        b1.bind_class("Button", "<Button-2>", self.mouseTest3)
        
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).pack()

    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")
        
    def mouseTest1(self, event):
        print("bind()方式绑定，可以获取 event 对象")
        print(event.widget)
        
    def mouseTest2(self, a, b):
        print("a={0},b={1}".format(a, b))
        print("command 方式绑定，不能直接获取 event 对象")

    def mouseTest3(self, event):
        print("右键单击事件，绑定给所有按钮啦！！")
        print(event.widget)

        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()