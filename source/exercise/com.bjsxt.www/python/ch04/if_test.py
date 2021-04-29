num = int(input("请输入分数："))
if int(num):
    print(num)
else:
    print("test")

# if num = 20:

print("输入了小于10的数字" if int(num) < 10 else "输入了大于10的数字")

grade = ""

if num < 60 :
    grade = "不及格"
elif num < 80:
    grade = "良好"
else:
    grade = "优秀"

print("分数是{0},等级是{1}".format(num,grade))

degree = "ABCDE"

if num > 100 or num < 0 :
    num = int(input("输入错误"))
else:
    id = num // 10
    if id < 6 : id = 5

print("分数是{0},等级是{1}".format(num,degree[9-id]))
