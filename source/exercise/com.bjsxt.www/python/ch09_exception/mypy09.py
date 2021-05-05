
import traceback

try:
    a = input("输入一个被除数：")
    b = input("请输入一个除数：")
    c = float(a) / float(b)
except BaseException as e:
    with open("/home/liwang/workspaces/gitdata/test.txt","a") as f:
        traceback.print_exc(file=f)
else:
    print(c)
    if c == 88 :
        print("退出程序")
finally:
    print("一直执行")
