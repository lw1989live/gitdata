'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，测试键盘和鼠标事件
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox

class Application(tk.Frame):
    '''
    测试键盘和鼠标事件
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
        self.master.geometry("530x300+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        
        self.c1 = tk.Canvas(self, width=200, height=200, bg="green")
        self.c1.pack()
        
        self.c1.bind("<Button-1>",self.mouseClick)
        self.c1.bind("<B1-Motion>",self.mouseDrag)
        self.master.bind("<KeyPress>",self.keyboardTest)
        self.master.bind("<KeyPress-a>",self.press_a_test) #只针对小写的 a，大写的 A 不管用
        self.master.bind("<KeyRelease-a>",self.release_a_test)
        
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).pack()

    def mouseClick(self,event):
        print("鼠标左键单击位置(相对于父容器)：{0},{1}".format(event.x, event.y))
        print("鼠标左键单击位置(相对于屏幕)：{0},{1}".format(event.x_root, event.y_root))
        print("事件绑定的组件：{0}".format(event.widget))
    
    def mouseDrag(self,event):
        self.c1.create_oval(event.x, event.y, event.x + 1, event.y + 1)
    
    def keyboardTest(self,event):
        print("键的 keycode:{0},键的 char:{1},键的 keysym:{2}".format(event.keycode, event.char, event.keysym))
    
    def press_a_test(self, event):
        print("press a")
    
    def release_a_test(self, event):
        print("release a")
    
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()