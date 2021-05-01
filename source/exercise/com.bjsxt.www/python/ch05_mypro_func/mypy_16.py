
def printName(isChinese,name,familyName):
    def inner_print(a,b):
        print("{0} {1}".format(a,b))
    if isChinese :
        inner_print(familyName,name)
    else:
        inner_print(name,familyName)


printName(True,'旺','李')
printName(False,"Ivanka","Trump")
