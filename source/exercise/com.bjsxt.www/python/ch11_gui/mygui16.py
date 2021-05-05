'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk


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
        self.master.geometry("270x50+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        
        tk.Button(self, text="测试 command1", command=self.mouseTest1).pack(side="left")
        tk.Button(self, text="测试 command2", command=lambda: self.mouseTest2("高湛", "尚学堂")).pack(side="left")
        # 创建一个退出按钮

    def  mouseTest1(self):
        '''
        '''
        print("command 方式，简单情况：不涉及获取 event 对象，可以使用")
    
    def mouseTest2(self, a, b):
        print("a={0},b={1}".format(a,b))
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()