try:
    strList = ["北京尚学堂\n","李旺\n","测试文件\n","IO_test02\n"]
    with open("test.txt","w") as f:
        f.writelines(strList)
except BaseException as e:
    print(e) 
