'''
Created on 2021年5月4日
开发一个简单的画图软件
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox
from tkinter.colorchooser import askcolor

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
        self.width=450
        self.height=300
        self.x = 0
        self.y = 0
        self.bgcolor="#000000"
        self.fgcolor = "#FF0000"
        self.lastDraw = 0
        self.startDrawFlag = False
        self.createWidget()
        
    def createWidget(self):
        '''
        创建组件
        '''
        self.master.geometry("650x330+200+300")
        self.master.title("画图")

        # 创建画图区
        self.drawpad = tk.Canvas(self.master, width=450, height=280,bg=self.bgcolor)
        self.drawpad.pack()
        
        # 创建按钮
        btn_start = tk.Button(self.master, text="开始", name="start")
        btn_pen = tk.Button(self.master, text="画笔", name="pen")
        btn_rect = tk.Button(self.master, text="矩形", name="rect")
        btn_clear = tk.Button(self.master, text="清屏", name="clear")
        btn_earsor = tk.Button(self.master, text="橡皮擦", name="earsor")
        btn_line = tk.Button(self.master, text="直线", name="line")
        btn_lineArrow = tk.Button(self.master, text="前头直线", name="lineArrow")
        btn_color = tk.Button(self.master, text="颜色", name="color")
        btn_start.pack(side="left",padx="10")
        btn_pen.pack(side="left",padx="10")
        btn_rect.pack(side="left",padx="10")
        btn_clear.pack(side="left",padx="10")
        btn_earsor.pack(side="left",padx="10")
        btn_line.pack(side="left",padx="10")
        btn_lineArrow.pack(side="left",padx="10")
        btn_color.pack(side="left",padx="10")
        
        #事件处理
        btn_pen.bind_class("Button","<1>",self.eventManager)
        self.drawpad.bind("<ButtonRelease-1>",self.stopDraw)
        
    def eventManager(self, event):
        '''
        '''
        name = event.widget.winfo_name()
        print(name)
        if name == "line":
            self.drawpad.bind("<B1-Motion>", self.myline)
        elif name == "lineArrow":
            self.drawpad.bind("<B1-Motion>", self.mylineArrow)
        elif name == "rect":
            self.drawpad.bind("<B1-Motion>", self.myRect)
        elif name == "pen":
            self.drawpad.bind("<B1-Motion>", self.myPen)
        elif name == "earsor":
            self.drawpad.bind("<B1-Motion>", self.myEarsor)
        elif name == "clear":
            self.drawpad.delete("all")
        elif name == "color":
            c = askcolor(color=self.fgcolor,title="选择画笔颜色")
            self.fgcolor = c[1]
            
    def startDraw(self, event):
        self.drawpad.delete(self.lastDraw)
        if not self.startDrawFlag :
            self.startDrawFlag = True
            self.x = event.x
            self.y = event.y
            
    def stopDraw(self, event):
        self.startDrawFlag = False
        self.lastDraw = 0 
    
    def myline(self,event):
        self.startDraw(event)
        self.lastDraw = self.drawpad.create_line(self.x, self.y, event.x, event.y, fill=self.fgcolor)
    
    def mylineArrow(self,event):
        self.startDraw(event)
        self.lastDraw = self.drawpad.create_line(self.x, self.y, event.x, event.y, arrow=tk.LAST, fill=self.fgcolor)
    
    def myRect(self,event):
        self.startDraw(event)
        self.lastDraw = self.drawpad.create_rectangle(self.x, self.y, event.x, event.y, outline=self.fgcolor)
    
    def myPen(self,event):
        self.startDraw(event)
        self.drawpad.create_line(self.x, self.y, event.x, event.y, fill=self.fgcolor)
        self.x = event.x
        self.y = event.y
        
    def myEarsor(self,event):
        self.startDraw(event)
        self.drawpad.create_rectangle(event.x - 4, event.y - 4, event.x + 4, event.y + 4, fill=self.bgcolor)
        self.x = event.x
        self.y = event.y
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()