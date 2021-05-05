#coding=utf-8
# 测试 os.path 模块
import os
import os.path

##############判断：绝对路径、是否目录、是否文件、是否存在###
print("是否绝对路径:",os.path.isabs("/home/liwang/workspaces"))  #是否绝对路径
print("是否目录:",os.path.isdir("/home/liwang/workspaces"))  #是否目录
print("是否文件:",os.path.isfile("/home/liwang/workspaces"))    #是否文件
print("文件是否存在:",os.path.exists("/home/liwang/workspaces"))    #文件是否存在

########获取文件基本信息########
print("文件大小:",os.path.getsize("readme.md")) #文件大小
print("输出绝对路径:",os.path.abspath("readme.md")) #输出绝对路径 
print("输出所在目录:",os.path.dirname("../gitdata")) #输出所在目录

########获得创建时间、访问时间、最后修改时间##########
print("返回创建时间:",os.path.getctime("readme.md")) #返回创建时间
print("返回最后访问时间:",os.path.getatime("readme.md")) #返回最后访问时间
print("返回最后修改时间:",os.path.getmtime("readme.md")) #返回最后修改时间

################对路径进行分割、连接操作###################
path = os.path.abspath("readme.md") #返回绝对路径
print("对路径进行分割，以列表形式返回:",os.path.split(path))  #返回元组：目录、文件
print("从路径中分割文件的扩展名:",os.path.splitext(path))   #返回元组：路径、扩展名

print("连接多个 path:",os.path.join("aa","bb","cc")) #返回路径：aa/bb/cc
