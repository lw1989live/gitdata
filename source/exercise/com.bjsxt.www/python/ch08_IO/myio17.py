# 测试递归算法，打印目录树
import os

path = os.getcwd()

def getAllFiles(path,level=0):
    childFiles = os.listdir(path)
    for file in childFiles:
        filepath = os.path.join(path,file)
        print("\t"*level + filepath)
        if os.path.isdir(filepath):
            getAllFiles(filepath,level + 1)

getAllFiles(path)
