'''
Created on 2021年5月16日

@author: liwang
'''
import socket as sc

# s = sc.socket(sc.AF_INET, sc.SOCK_STREAM)   # 创建套接字，使用IPV4、TCP传输
s = sc.socket(sc.AF_INET, sc.SOCK_DGRAM)   # 创建套接字，使用IPV4、UDP传输

addr = ("192.168.1.100", 8587)

s.bind(('',8881))
s.sendto(b"asd", addr)
redate = s.recvfrom(2048)
print(redate[0].decode("gb2312"))
s.close()
