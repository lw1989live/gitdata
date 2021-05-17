'''
Created on 2021年5月16日
从tftp服务器下载文件
@author: liwang
'''
import socket
import struct

filename = 'test.jpg'
cmb_buf = struct.pack("!H%dsb5sb"% len(filename), 1, filename.encode(), 0, b"octet", 0)
server_ip = "192.168.1.127"
addr = ("192.168.1.127", 69)
udpSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)   # 创建套接字，使用IPV4、UDP传输
udpSock.sendto(cmb_buf,(server_ip, 69))     # 发送下载请求

with open("test.jpg","ab") as f:
    while True:
        recv_data = udpSock.recvfrom(1024)  # 接收数据
        opertCode, ack_num = struct.unpack('!HH', recv_data[0][:4]) # 换取数据块编号
        rand_port = recv_data[1][1]     # 获取服务器的随机端口
        if int(opertCode) == 5:
            print("文件不存在。。。")
            break
        print("操作码：%d, ACK: %d, 服务器随机端口：%d, 数据长度:%d"%(opertCode, ack_num, rand_port, len(recv_data[0][4:])))
        
        f.write(recv_data[0][4:])   # 写入数据
        if len(recv_data[0]) < 516:
            break
        ack_data = struct.pack("!HH", 4, ack_num)
        udpSock.sendto(ack_data, (server_ip, rand_port))    # 发送确认
    
udpSock.close()
