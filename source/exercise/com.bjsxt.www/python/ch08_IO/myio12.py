# coding=utf-8
# 测试 os 模块
import os
#os.system("ip address")    #os.system 可以帮助我们直接调用系统的命令
#os.startfile("test")       #·os.startfile：直接调用可执行文件

###########获取文件和文件夹相关的信息
print("操作系统的名称为:",os.name)  ##windows->nt linux 和 unix->posix
print("操作系统的路径分隔符为:",os.sep) #windows->\ linux 和 unix->/
print("操作系统的行分隔符为:",repr(os.linesep)) #windows->\r\n linux-->\n

print(os.stat("test.csv"))      #返回文件的所有属性

#########关于工作目录
os.chdir("../")    #改变当前的工作目录为 #../指的是上一级目录
print("当前的工作目录为:",os.getcwd())  #当前的工作目录

############创建目录、创建多级目录、删除目录
#os.mkdir("test书籍")   #创建目录，相对路径都是相对于当前的工作目录
#os.remove("test.txt")   #删除指定的文件
#os.rmdir("test书籍")   #删除目录
#os.makedirs("电影/港台/周星驰")    #创建多级目录
#os.rename("电影","movie")      #重命名文件或目录
#os.removedirs("movie/港台/周星驰") #删除多级目录,只能删除空目录
dirs = os.listdir("gitdata")    #返回 path 目录下的文件和目录列表
print(dirs)
