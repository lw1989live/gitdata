'''
Created on 2021年5月16日
发送广播
@author: liwang
'''
import socket

dest = ("<broadcast>", 8080)
udpSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)   # 创建套接字，使用IPV4、UDP传输
udpSock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

udpSock.sendto(b"hi", dest)

while True:
    udpSock.recvfrom(1024)

udpSock.close()
