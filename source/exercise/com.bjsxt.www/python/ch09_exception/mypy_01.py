#Traceback 追溯 most recent call last

try:
    print("step1")
    a = 3/0
    print("step2")
except BaseException as e:
    print("step3")
    print(e)
print("step4")


