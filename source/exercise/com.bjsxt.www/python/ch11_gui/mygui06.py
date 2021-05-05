'''
Created on 2021年5月4日
测试一个经典的GUII程序的写法，使用面向对象
@author: liwang
'''
import tkinter as tk
import webbrowser

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
        self.text01 = tk.Text(self, width=40, height=12, bg="gray")
        # 宽度 20 个字母(10 个汉字)，高度一个行高
        self.text01.insert(1.0, "0123456789\nabcdefghijklmnopqrstuvwxyz")
        self.text01.insert(2.3, "人之初，性本善。性相近，习相远。句不教，性乃迁。教之道，贵以专。")
        self.text01.pack()
        
        tk.Button(self, text="重复插入文本", command=self.insertText).pack(side="left")
        tk.Button(self, text="返回文本", command=self.returnText).pack(side="left")
        tk.Button(self, text="添加图片", command=self.addImage).pack(side="left")
        tk.Button(self, text="添加组件", command=self.addWidget).pack(side="left")
        tk.Button(self, text="通过tag精确控制文本", command=self.testTag).pack(side="left")
        # 创建一个退出按钮
        self.btnQuit = tk.Button(self, text="退出", command=self.master.destroy)
        self.btnQuit.pack()
        
    def insertText(self):
        '''
        '''
        # INSERT 索引表示在光标处插入
        self.text01.insert(tk.INSERT, "liwang")
        # END 索引号表示在最后插入
        self.text01.insert(tk.END, "[sxt]")
        self.text01.insert(1.8, "gaoqi")
        
    def returnText(self):
        '''
        '''
        # Indexes(索引)是用来指向 Text 组件中文本的位置，Text 的组件索引也是对应实际字符之间的位置
        # 核心：行号以 1 开始 列号以 0 开始
        print(self.text01.get(1.2, 1.6))
        print("所有文本内容：\n" + self.text01.get(1.0, tk.END))
        
    def addImage(self):
        '''
        '''
        global photo
        self.photo = tk.PhotoImage(file="../imgs/logo.gif")
        self.text01.image_create(tk.END, image=self.photo)
        
    def addWidget(self):
        '''
        '''
        button01 = tk.Button(self.text01, text="爱李旺")
        # 在text 创建组件的命令
        self.text01.window_create(tk.INSERT, window=button01)
        
    def testTag(self):
        '''
        '''
        self.text01.delete(1.0,tk.END)
        self.text01.insert(tk.INSERT, "good good study,day day up!\n 北京尚学堂\n 百战程序员\n 百度，搜一下就知道")
        self.text01.tag_add("good", 1.0, 1.9)
        self.text01.tag_config("good", background="yellow", foreground="red")
        self.text01.tag_add("baidu", 4.0, 4.2)
        self.text01.tag_config("baidu", underline=True)
        self.text01.tag_bind("baidu", "<Button-1>", self.webshow)
        
    def webshow(self,event):
        webbrowser.open("http://www.baidu.com")
        
if __name__ == "__main__":
    root = tk.Tk()
    root.geometry("400x300+200+300")
    root.title("一个经典的GUI程序类的测试")
    app = Application(master=root)
    
    root.mainloop()