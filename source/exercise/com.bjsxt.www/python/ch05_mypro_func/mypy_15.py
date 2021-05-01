# 使用递归函数，计算阶乘

def factorial(n):
    if n==1:return 1
    return n*factorial(n-1)

for i in range(1,6):
    print(i,'! =',factorial(i))

# 课外知识：分形几何
