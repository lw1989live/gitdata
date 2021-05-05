'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
from tkinter.filedialog import askopenfilename, askopenfile

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
        self.master.geometry("400x200+200+300")
        self.master.title("一个经典的GUI程序类的测试")
        tk.Button(self, text="选择文本文件", command=self.confirm).pack()
        self.show = tk.Label(self, width=40, height=10, bg="green")
        self.show.pack()

    def confirm(self):
        '''
        '''
        #file01 = askopenfilename(title="上传文件", initialdir="/home/liwang", filetypes=[("文本文件", ".txt")])
        with askopenfile(title="上传文件", initialdir="/home/liwang/文档", 
                         filetypes=[("文本文件", ".md"),("文本文件", ".txt")]) as f:
            self.show["text"] = f.read()
        
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()