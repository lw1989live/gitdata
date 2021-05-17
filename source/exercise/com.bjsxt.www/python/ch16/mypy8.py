'''
Created on 2021年5月16日
TCP客户端
@author: liwang
'''
import socket

clientSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)   # 创建套接字，使用IPV4、UDP传输
clientSock.connect(("192.168.1.100",7788))

clientSock.send(b"nihao")
recv_data = clientSock.recv(1024)
print(recv_data)
clientSock.close()
