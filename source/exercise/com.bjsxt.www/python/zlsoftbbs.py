'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox
from urllib.request import urlopen
from bs4 import BeautifulSoup
from lxml import etree


class Application(tk.Frame):
    '''
    一个经典的GUI程序的类的写法
    中联论坛自动发帖工具
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
        self.master.geometry("400x300+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        # 创建一个退出按钮
        tk.Button(self, text="退出", command=self.master.destroy).pack()

    def confirm(self):
        '''
        '''
        messagebox.showinfo("title", "message")

    def login(bbsname, passwd):
        """
        登录论坛
        """
        pass

    def autoSend(parameter_list):
        """
        自动发帖
        """
        pass

        
if __name__ == "__main__":
    # root = tk.Tk()
    # app = Application(master=root)
    
    # root.mainloop()

    url = 'http://bbs.zlsoft.com/forum.php?mod=forumdisplay&fid=31'
    # 发送请求
    response = urlopen(url)
    # 读取内容
    info = response.read()

    # soup = BeautifulSoup(info,'lxml')

    html = etree.parse(info, etree.HTMLParser())
    result = html.xpath('//html/body/div[@id="wp"]/div[@class="boardnav"]')
    print(result)
