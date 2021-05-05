with open("test.txt","r") as f:
    print("文件名是:{0}".format(f.name))
    print("当前指针位置:{0}".format(f.tell()))
    print("读取的内容是：{0}".format(f.readline()),end="")
    print("当前指针位置:{0}".format(f.tell()))
    f.seek(0,0)
    print("当前指针位置:{0}".format(f.tell()))
