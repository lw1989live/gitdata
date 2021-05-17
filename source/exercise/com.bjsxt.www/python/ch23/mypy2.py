'''
Created on 2021年5月16日
Request对象
@author: liwang
'''
from urllib.request import urlopen,Request
from random import choice

# 定义变量
url = 'http://www.baidu.com/'
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
headres = {
    "User-Agent" : choice(user_agents)
    }

# 封装reuqest对象
req = Request(url, headers=headres)
print(req.get_header("User-agent"))
# 发送请求
resp = urlopen(req)
# 读取内容
info = resp.read()
# 打印内容
# print(info.decode())
# 返回HTTP的响应码
print(resp.getcode())
# 返回实际访问的url
print(resp.geturl())
# 返回HTTP响应报头
print(resp.info())

