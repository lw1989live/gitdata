import csv

with open("test.csv","r") as f:
    a_csv = csv.reader(f)   #创建 csv 对象,它是一个包含所有数据的列表，每一行为一个元素
    headers = next(a_csv) #获得列表对象，包含标题行的信息
    print(headers)
    for row in a_csv:   #循环打印各行内容
        print(row)

with open(r"test2.csv","w") as f:
    headers = ["工号","姓名","年龄","地址","月薪"]
    rows = [("1001","高淇",18,"西三旗 1 号院","50000"),("1002","高八",19,"西三旗 1 号院","30000")]
    
    b_csv = csv.writer(f) #创建 csv 对象
    b_csv.writerow(headers) #写入一行（标题）
    b_csv.writerows(rows) #写入多行（数据）
