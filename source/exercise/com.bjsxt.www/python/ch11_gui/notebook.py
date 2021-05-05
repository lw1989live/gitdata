'''
Created on 2021年5月5日
开发一个简单的记事本软件
@author: liwang
'''
import tkinter as tk
from tkinter.filedialog import asksaveasfilename, askopenfile
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
        self.textpad = None         # textpad 表示 Text 文本框对象
        self.filename = None        # filename 表示打开文本文件的名字
        self.contextMenu = None     #contextMenu 上下文菜单对象
        self.pack()
        self.createWidget()
        
    def createWidget(self):
        '''
        创建组件
        '''
        self.master.geometry("450x400+200+300")
        self.master.title("百战程序员的简易记事本")
        # 创建主菜单栏
        menubar =  tk.Menu(self.master)
        # 创建子菜单
        menuFile = tk.Menu(menubar)
        menuEdit = tk.Menu(menubar)
        menuFormat = tk.Menu(menubar)
        menuView = tk.Menu(menubar)
        menuHelp = tk.Menu(menubar)
        menuZoom = tk.Menu(menuView)
        
        # 将子菜单加入到主菜单栏
        menubar.add_cascade(label="文件(F)", menu=menuFile)
        menubar.add_cascade(label="编辑(E)", menu=menuEdit)
        menubar.add_cascade(label="格式(O)", menu=menuFormat)
        menubar.add_cascade(label="查看(V)", menu=menuView)
        menubar.add_cascade(label="帮助(H)", menu=menuHelp)
        
        # 添加菜单项
        menuFile.add_command(label="新建(N)", accelerator="ctrl+n", command=self.newFile)
        menuFile.add_command(label="新窗口(W)", accelerator="ctrl+shift+n", command=self.emptyFunction)
        menuFile.add_command(label="打开(O)", accelerator="ctrl+o", command=self.openfile)
        menuFile.add_command(label="保存(S)", accelerator="ctrl+s", command=self.savefile)
        menuFile.add_command(label="另存为(A)", accelerator="ctrl+shift+s", command=self.emptyFunction)
        menuFile.add_separator()        # 添加分割线
        menuFile.add_command(label="页面设置(U)", command=self.emptyFunction)
        menuFile.add_command(label="打印(P)", accelerator="ctrl+p", command=self.emptyFunction)
        menuFile.add_separator()        # 添加分割线
        menuFile.add_command(label="退出(X)", accelerator="ctrl+q", command=self.quit)
        
        menuEdit.add_command(label="撤消(U)", accelerator="ctrl+z", command=self.emptyFunction)
        menuEdit.add_separator()        # 添加分割线
        menuEdit.add_command(label="剪切(T)", accelerator="ctrl+x", command=self.emptyFunction)
        menuEdit.add_command(label="复制(C)", accelerator="ctrl+c", command=self.emptyFunction)
        menuEdit.add_command(label="粘贴(P)", accelerator="ctrl+v", command=self.emptyFunction)
        menuEdit.add_command(label="删除(L)", accelerator="Del", command=self.emptyFunction)
        menuEdit.add_separator()        # 添加分割线
        menuEdit.add_command(label="使用Bing搜索", accelerator="ctrl+e", command=self.emptyFunction)
        menuEdit.add_command(label="查找(F)", accelerator="ctrl+f", command=self.emptyFunction)
        menuEdit.add_command(label="查找下一个(N)", accelerator="f3", command=self.emptyFunction)
        menuEdit.add_command(label="查找上一个(V)", accelerator="shift+f3", command=self.emptyFunction)
        menuEdit.add_command(label="替换(R)", accelerator="ctrl+h", command=self.emptyFunction)
        menuEdit.add_command(label="转到(G)", accelerator="ctrl+g", command=self.emptyFunction)
        menuEdit.add_separator()        # 添加分割线
        menuEdit.add_command(label="全选(A)", accelerator="ctrl+a", command=self.emptyFunction)
        menuEdit.add_command(label="时间/日期(D)", accelerator="f5", command=self.emptyFunction)
        
        menuFormat.add_command(label="自动换行(W)", command=self.emptyFunction)
        menuFormat.add_command(label="字体(F)", command=self.emptyFunction)
        
        menuView.add_cascade(label="缩放(Z)", menu=menuZoom)
        menuZoom.add_command(label="放大(I)", accelerator="ctrl++", command=self.emptyFunction)
        menuZoom.add_command(label="缩小(O)", accelerator="ctrl+-", command=self.emptyFunction)
        menuZoom.add_command(label="恢复默认缩放", accelerator="ctrl+0", command=self.emptyFunction)
        # menuView.add_command(label="缩放(Z)", command=self.emptyFunction)
        menuView.add_command(label="状态栏(S)", command=self.emptyFunction)
        
        
        menuHelp.add_command(label="查看帮助(H)", accelerator="f1", command=self.emptyFunction)
        menuHelp.add_command(label="发送反馈(F)", command=self.emptyFunction)
        menuHelp.add_separator()        # 添加分割线
        menuHelp.add_command(label="关于记事本(A)", command=self.emptyFunction)
        # 将主菜单栏加到根窗口
        self.master["menu"] = menubar
        
        #添加快捷键事件处理
        self.master.bind("<Control-n>", lambda event:self.newFile())
        self.master.bind("<Control-o>", lambda event:self.openfile())
        self.master.bind("<Control-s>", lambda event:self.savefile())
        self.master.bind("<Control-q>", lambda event:self.exit())
        # 创建上下菜单
        self.contextMenu = tk.Menu(self.master)
        controlChaMenu = tk.Menu(self.contextMenu, tearoff=0)
        self.contextMenu.add_command(label="背景颜色", command=self.openAskColor)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="撤消(U)", command=self.emptyFunction)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="剪切(T)", command=self.emptyFunction)
        self.contextMenu.add_command(label="复制(C)", command=self.emptyFunction)
        self.contextMenu.add_command(label="粘贴(P)", command=self.emptyFunction)
        self.contextMenu.add_command(label="删除(L)", command=self.emptyFunction)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="全选(A)", command=self.emptyFunction)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="从右到左的阅读顺序(R)", command=self.emptyFunction)
        self.contextMenu.add_command(label="显示Unicode控制字符(S)", command=self.emptyFunction)
        self.contextMenu.add_cascade(label="插入Unicode控制字符(S)", menu=controlChaMenu)
        controlChaMenu.add_command(label="LRM", command=self.emptyFunction)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="关闭输入法(L)", command=self.emptyFunction)
        self.contextMenu.add_command(label="汉字重选(R)", command=self.emptyFunction)
        self.contextMenu.add_separator()        # 添加分割线
        self.contextMenu.add_command(label="使用Bing搜索", command=self.emptyFunction)
        
        #文本编辑区
        self.textpad = tk.Text(root, width=50, height=30)
        self.textpad.pack()
        self.textpad.bind("<Button-3>", self.context)
        
    def context(self,event):
        '''
        '''
        self.contextMenu.post(event.x_root, event.y_root)
    
    def newFile(self):
        '''
        '''
        self.textpad.delete('1.0', 'end')   # 把 Text 控件中的内容清空
        self.filename = asksaveasfilename(title='另存为', initialfile='未命名.txt',
                                          filetypes=[("文本文档", "*.txt")], defaultextension='.txt')
        print(self.filename)
        self.serfile()
    
    def openfile(self):
        '''
        '''
        self.textpad.delete('1.0', 'end')   # 把 Text 控件中的内容清空
        with askopenfile(title="打开文件") as f:
            self.textpad.insert(tk.INSERT, f.read())
            self.filename = f.name
            print(self.filename)
        
    def savefile(self):
        '''
        '''
        with open(self.filename, "w") as f:
            c = self.textpad.get(1.0, tk.END)
            f.write(c)
    
    def openAskColor(self):
        '''
        '''
        s1 = askcolor(color="red", title="选择背景色")
        self.textpad.config(bg=s1[1])
        
    def exit(self):
        '''
        '''
        self.master.quit()
    
    def emptyFunction(self):
        '''
        '''
        pass
        
if __name__ == "__main__":
    root = tk.Tk()
    app = Application(master=root)
    
    root.mainloop()