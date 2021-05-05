# 测试 os.walk() 递归遍历所有的子目录和了文件
import os

path = os.getcwd()
all_files = []
list_files = os.walk(path)

for dirpath,dirnames,filenames in list_files:
    for dir in dirnames:
        all_files.append(os.path.join(dirpath,dir))
    for file in filenames:
        all_files.append(os.path.join(dirpath,file))

for file in all_files:
    print(file)
