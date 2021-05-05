# 测试 shutil 模块
import shutil
import zipfile

#shutil.copyfile("readme.md","copy_readme.md")  #copy 文件内容
#shutil.copytree("document","copy_rdocument")   #目标文件夹不存在才能用。
#shutil.copytree("电影/学习","音乐",ignore=shutil.ignore_patterns("*.html","*.htm")) #实现递归的拷贝文件夹内容,忽略html文件

# 【示例】实现将文件夹所有内容压缩(使用 shutil 模块)
# shutil.make_archive("./zip_document","zip","document")
#压缩:将指定的多个文件压缩到一个 zip 文件
#z1 = zipfile.ZipFile("zip_document.zip","w")
#z1.write("document/linux.md")
#z1.close()
##解压缩：
#z2 = zipfile.ZipFile("zip_document.zip","r")
#z2.extractall("test")
#z2.close
