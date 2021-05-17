'''
Created on 2021年5月16日
贴吧案例
@author: liwang
'''
from urllib.request import urlopen,Request
from urllib.parse import quote,urlencode
from random import choice

def get_html(url):
    # 中文参数处理
    arg = "尚学堂"
    args = {
        'user':'123456',
        'password':'123456'
        }
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
    # 发送请求
    # f_data = urlencode(args)
    resp = urlopen(req)
    return resp.read().decode()

def save_html(html,filename):
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(html)

def main():
    content = '重装机兵'
    num = 3
    for i in range(num):
        url = 'https://tieba.baidu.com/f?kw={0}&ie=utf-8&pn={1}'.format(quote(content), i * 50)
        print(url)
        html = get_html(url)
        save_html(html, '{0}吧第{1}页.html'.format(content, i))
        
if __name__ == '__main__':
    main()

