'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，添加按钮对象
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
        photo = tk.PhotoImage(file='../imgs/start.gif')
        self.label01 = tk.Label(self, text='用户名')
        # StringVar 变量绑定到指定的组件。
        # StringVar 变量的值发生变化，组件内容也变化；
        # 组件内容发生变化，StringVar 变量的值也发生变化。
        varUser = tk.StringVar()
        varUser.set("admin")
        varPassword = tk.StringVar()
        self.entry01 = tk.Entry(self, textvariable=varUser)
        self.label02 = tk.Label(self, text='密码')
        self.entry02 = tk.Entry(self, textvariable=varPassword, show="*")
        self.button01 = tk.Button(self, text="登录", command=self.login)
        self.label01.pack()
        self.entry01.pack()
        self.label02.pack()
        self.entry02.pack()
        self.button01.pack()
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def login(self):
        '''
        '''
        strUsername = self.entry01.get()
        strPassword = self.entry02.get()
        
        print("省略连接数据库比对用户名密码的过程")
        print("用户名为：",strUsername)
        print("密码为：",strPassword)
        if strUsername == "liwang" and strPassword == "123456":
            messagebox.showinfo("尚学堂学习系统", "登录成功，欢迎开始学习")
        else:
            messagebox.showinfo("尚学堂学习系统", "登录失败，用户名或密码错误")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()