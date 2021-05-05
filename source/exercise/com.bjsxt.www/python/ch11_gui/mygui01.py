'''
Created on 2021年5月4日

@author: liwang
'''
from tkinter import *
from tkinter import messagebox


root = Tk()

root.title("我的第一个GUI程序")
root.geometry("500x300+300+300")    # 主窗口位置和大小的设置

btn01 = Button(root)
btn01["text"] = "点我就送花"

btn01.pack()    # 通过几何布局管理器，管理组件的大小和位置

def songhua(e):     # 参数e是事件对象
    messagebox.showinfo("title", "送你一朵玫瑰花")
    print("送你99朵玫瑰花")

btn01.bind("<Button-1>", songhua)


root.mainloop()     # 调用组件的 mainloop 方法，进入事件循环