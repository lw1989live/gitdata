
try:
    f = open("")
    content = f.readline()
    print(content)
except BaseException as e:
    print(e)
finally:
    try:
        f.close
    except BaseException as e:
        print(e)

