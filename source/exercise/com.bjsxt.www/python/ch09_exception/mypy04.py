
try:
    a = input("输入一个被除数：")
    b = input("请输入一个除数：")
    c = float(a) / float(b)
    print(c)
except ZeroDivisionError:
    print("异常，除数不能为0")
except ValueError:
    print("异常。不能将字符串转化成数字")
except NameError:
    print("异常。变量不存在")
except BaseException as e:
    print(e)
