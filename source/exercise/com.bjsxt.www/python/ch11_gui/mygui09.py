'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
import random

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
        self.canvas01 = tk.Canvas(self, width=300, height=200, bg="green")
        self.canvas01.pack()
        # 画一条直线
        line = self.canvas01.create_line(10, 10, 30, 20, 40, 50)
        # 画一个矩形
        rect = self.canvas01.create_rectangle(50, 50, 130, 100)
        # 画一个椭圆。坐标两双。为椭圆的边界矩形左上角和底部右下角
        oval = self.canvas01.create_oval(50, 50, 130, 100)
        
        global photo
        photo = tk.PhotoImage(file="../imgs/logo.gif")
        self.canvas01.create_image(150, 170, image=photo)
        
        tk.Button(self, text="画10个矩形", command=self.draw50Recg).pack()
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def draw50Recg(self):
        '''
        '''
        for i in range(0,10):
            x1 = random.randrange(int(self.canvas01["width"]) / 2)
            y1 = random.randrange(int(self.canvas01["height"]) / 2)
            x2 = x1 + random.randrange(int(self.canvas01["width"]) / 2)
            y2 = y1 + random.randrange(int(self.canvas01["height"]) / 2)
            self.canvas01.create_rectangle(x1, y1, x2, y2)
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()