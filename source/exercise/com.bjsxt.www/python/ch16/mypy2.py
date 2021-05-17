'''
Created on 2021年5月16日

@author: liwang
'''
import socket as sc

# s = sc.socket(sc.AF_INET, sc.SOCK_STREAM)   # 创建套接字，使用IPV4、TCP传输
s = sc.socket(sc.AF_INET, sc.SOCK_DGRAM)   # 创建套接字，使用IPV4、UDP传输

addr = ("192.168.1.127", 8083)
date = input("请输入：")

s.sendto(date.encode("gb2312"), addr)
redate = s.recvfrom(2048)
print(redate[0].decode("gb2312"))
s.close()
