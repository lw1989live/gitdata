'''
Created on 2021年5月16日
第一个网络爬虫
@author: liwang
'''
from urllib.request import urlopen
from bs4 import BeautifulSoup

# 
url = 'http://www.baidu.com/'
# 发送请求
response = urlopen(url)
# 读取内容
info = response.read()
# 打印内容
# print(info.decode())
# 返回HTTP的响应码
print(response.getcode())
# 返回实际访问的url
print(response.geturl())
# 返回HTTP响应报头
# print(response.info())

soup = BeautifulSoup(info,'lxml')
print(soup.title.name)
