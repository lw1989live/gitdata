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
        # 显示图像
        global photo    # 把 photo 声明成全局变量。如果是局部变量，本方法执行完毕后，图像对象销毁，窗口显示不出图像。
        photo = tk.PhotoImage(file='../imgs/logo.gif')
        
        self.label01 = tk.Label(self, text='百战程序员', width=10, height=2,
                                bg="black", fg="white")
        self.label02 = tk.Label(self, text='百战程序员', width=10, height=2,
                                bg="blue", fg="white", font=("黑体", 30))
        self.label03 = tk.Label(self, image=photo)
        self.label04 = tk.Label(self, text='北京尚学堂\n百战程序员\n老高好帅，就是做饭不行\n', 
                                borderwidth=5, relief="groove", justify="right")
        self.label01.pack()
        self.label02.pack()
        self.label03.pack()
        self.label04.pack()
        
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def songhua(self):
        '''
        '''
        messagebox.showinfo("送花", "送你 99 朵玫瑰花")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()