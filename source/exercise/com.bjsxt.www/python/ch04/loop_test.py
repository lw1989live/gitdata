import time

num = 0
while num <= 10:
    print(num,end="\t")
    num += 1

print("\n*****************************")

#计算累加和
num2 = 0
sum_all = 0
while num2<= 100:
    sum_all = sum_all + num2
    num2 += 1

print("累加和",sum_all)

print("\n*****************************")

sum_all = 0
sum_odd = 0
sum_even = 0
for x in range(1,101):
    sum_all += x
    if x%2 == 1:
        sum_odd += x
    else:
        sum_even += x
print("{0},{1},{2}".format(sum_all,sum_odd,sum_even))

print("\n*****************************")

for x in range(1,10):
    for y in range(1,x + 1):
        print("{0}*{1}={2}".format(y,x,x*y),end="\t")
    print("")

#循环代码优化测试
start = time.time()
for i in range(1000):
    result = []
    for m in range(10000):
        result.append(i*1000+m*100)

end = time.time()
print("耗时：{0}".format((end-start)))

start2 = time.time()
for i in range(1000):
    result = []
    c = i*1000
    for m in range(10000):
        result.append(c+m*100)
end2 = time.time()
print("耗时：{0}".format((end2-start2)))

