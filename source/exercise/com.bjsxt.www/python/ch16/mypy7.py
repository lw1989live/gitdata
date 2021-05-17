'''
Created on 2021年5月16日
TCP服务器
@author: liwang
'''
import socket

tcpSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)   # 创建套接字，使用IPV4、UDP传输
tcpSock.bind(("", 7788))
tcpSock.listen(5)

newSock, clientAddr = tcpSock.accept()

recv_data = newSock.recv(1024)
print(recv_data)

newSock.send(b"xiexie")

newSock.close()
tcpSock.close()
