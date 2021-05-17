'''
Created on 2021年5月16日

@author: liwang
'''
import socket as sc

# s = sc.socket(sc.AF_INET, sc.SOCK_STREAM)   # 创建套接字，使用IPV4、TCP传输
udpSock = sc.socket(sc.AF_INET, sc.SOCK_DGRAM)   # 创建套接字，使用IPV4、UDP传输

udpSock.bind(('',8587))
while True:
    recvDate = udpSock.recvfrom(2048)
    print(recvDate[0].decode())
    data = input("请输入：")
    udpSock.sendto(data.encode(),recvDate[1])

udpSock.close()
