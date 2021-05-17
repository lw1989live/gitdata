'''
Created on 2021年5月16日
多进程的TCP服务器
@author: liwang
'''
import socket
from multiprocessing import Process

def main():
    serSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)   # 创建套接字，使用IPV4、TCP传输
    serSock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    localAddr = ("", 7788)
    serSock.bind(localAddr)
    serSock.listen(5)
    
    try:
        while True:
            print('----主进程，等待新客户端的到来----')
            newSock, clientAddr = serSock.accept()
            print('----主进程，创建一个新的进程负责数据处理----')
            client = Process(target=dealWithClient, args=(newSock, clientAddr))
            client.start()      # 启动子进程
            newSock.close()     # 关闭连接
    finally:
        serSock.close() # 关闭连接

def dealWithClient(newSock, clientAddr):
    while True:
        recv_data = newSock.recv(1024)
        if len(recv_data) > 0:
            print("recv[%s]:%s"%(str(clientAddr), recv_data))
        else:
            print("[%s]客户端已经关闭")
            break
    newSock.close()

if __name__ == '__main__':
    main()
