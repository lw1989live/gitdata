#循环输入数字

while True:
    try:
        x = int(input("请输入数字："))
        print("输入的数字：",x)

        if x == 88 :
            print("退出程序")
            break
    except BaseException as e:
        print(e)
        print("输出异常")
