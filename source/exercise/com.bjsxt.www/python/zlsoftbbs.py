'''
Created on 2021年5月25日
中联论坛自动发帖工具

自动发帖
    登录
    自动发帖
        获取发帖列表
        循环列表发帖
    
@author: liwang
'''
import tkinter as tk
from tkinter import messagebox
from urllib.request import urlopen
from bs4 import BeautifulSoup
from lxml import etree
import random
from urllib.request import urlopen,Request
from urllib.parse import quote,urlencode


class zlsoftBBS(tk.Frame):
    '''
    中联论坛自动发帖工具
    '''

    def __init__(self): # , master=None
        '''
        Constructor
        '''
        self.headres = {
            "User-Agent" : self.getUserAgent()
            }
        # super().__init__(master)    # super()代表的是父类的定义，而不是父类对象
        # self.master = master
        # self.pack()
        # self.createWidget()
        
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
    
    def getUserAgent(self):
        """
        随机获取User-Agent
        """
        # User-Agent 列表
        user_agents=[
            "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36",    # Chrome ubuntu
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/14.0.835.163 Safari/535.1",   # Chrome Win7
            "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:6.0) Gecko/20100101 Firefox/6.0", # Win7 Firefox
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50", # Win7 Safari
            "Opera/9.80 (Windows NT 6.1; U; zh-cn) Presto/2.9.168 Version/11.50", # Win7 Opera
            "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; Tablet PC 2.0; .NET4.0E)", # Win7 IE9
            "User-Agent:Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_8; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50"  # safari 5.1 – MAC
            ]
        return random.choice(user_agents)

    def login(self,bbsname, passwd):
        """
        登录论坛
        """
        pass

    def getHtml(self,url):
        """
        docstring
        """
        
        # 封装reuqest对象
        req = Request(url, headers=self.headres)
        resp = urlopen(req)
        html = resp.read().decode('gbk')
        return html
    
    def parseHtml(self, html):
        """
        docstring
        """
        listHtml = []
        e = etree.HTML(html)
        # soup = BeautifulSoup(html,'lxml')
        # re = soup.find_all('th',class_='new')
        # //form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div
        # titles = e.xpath('//form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div[@class="tl_tit cl"]/h3/a[@class="xst"]/text()')
        # hrefs = e.xpath('//form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div[@class="tl_tit cl"]/h3/a[@class="xst"]/attribute::href')
        # authors = e.xpath('//form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div[@class="tl_txt cl"]/p[@class="publisher"]/a/text()')
        # times = e.xpath('//form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div[@class="tl_txt cl"]/p[@class="publisher"]/span/span')
        re = e.xpath('//form[@id="moderate"]/table[@id="threadlisttableid"]/tbody/tr/th/div')

        print(len(re))

        # for title,href,author,t in zip(titles,hrefs,authors,times):
        #     listHtml.append([title,href,author,t])
        return re

    def autoSend(self,url):
        """
        自动发帖
        """
        html = self.getHtml(url)
        ls = self.parseHtml(html)
        for bbs in ls:
            print(bbs)


    def send(self,url,text):
        """
        发帖
        """
        pass
    
    def start(self):
        """
        开始自动发帖
        """
        # root = tk.Tk()
        # app = zlsoftBBS(master=root)
        # root.mainloop()
        url = 'http://bbs.zlsoft.com/forum.php?mod=forumdisplay&fid=31'
        self.autoSend(url)

        
if __name__ == "__main__":
    zlsoft = zlsoftBBS()
    zlsoft.start()

    # soup = BeautifulSoup(info,'lxml')

    # html = etree.parse(info, etree.HTMLParser())
    # result = html.xpath('//html/body/div[@id="wp"]/div[@class="boardnav"]')
    # print(result)
