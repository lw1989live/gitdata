try:
    f = open("test.txt","r")
    strList = ["北京尚学堂\n","李旺\n","测试文件\n"]
    f.writelines(strList)
except BaseException as e:
    print(e) 
finally:
    f.close
