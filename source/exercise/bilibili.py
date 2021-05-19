
#处理bilibili下载的文件，重命名文件
import json
import os
import shutil

def getBilibiliFiles(root_dir):
    """
    传入bilibili下载目录，查找下载文件中的json文件，获取json文件中的文件名
    """
    parse_result = []
    #遍历传入的目录，获取所有子文件
    #list_files = os.walk(root_dir)
    #遍历传入的目录，在所有子文件中，查找所有后缀名为.info的json文件,并
    for dirpath,dirnames,filenames in os.walk(root_dir):
        for file in filenames:
            if file.endswith(".info") :
                json_file = os.path.join(dirpath,file)
                # 打开json文件，从中读取文件名和标题
                with open(json_file,"r") as f:
                    file_dict = dict()
                    json_result = json.load(f)
                    file_dict["FileName"] = os.path.join(dirpath,json_result['Aid'] + "_" + json_result['PartNo'] + "_0.mp4")
                    file_dict["DirTitle"] = json_result['Title'].replace('/','_')
                    file_dict["NewName"] = json_result['PartName'].replace('/','_') + ".mp4"
                    if os.path.exists(file_dict["FileName"]) and os.path.getsize(file_dict["FileName"]) > 0:
                        #存在mp4文件时，将文件添加到返回结果列表中
                        parse_result.append(file_dict)
    return parse_result

def moveFiles(files,new_path):
    """
    将列表中的所有文件移动到新目录
    """
    new_path = new_path.strip()    # 去除首位空格
    new_path = new_path.rstrip("\\")    # 去除尾部 \ 符号
    for file in files:
        oldFile =file["FileName"]
        filePath = os.path.join(new_path ,file["DirTitle"])
        fileName = os.path.join(new_path,file["DirTitle"],file["NewName"])
        isDirExists = os.path.exists(filePath) 
        try:
            if not isDirExists :    # 判断路径是否存在,如果不存在则创建目录
                os.makedirs(filePath)    # 创建目录操作函数
            #shutil.copyfile(oldFile,fileName)  #复制文件
            shutil.move(oldFile,fileName)  #移动文件
            print(fileName)
        except BaseException  as e:
            print(e)
    print("文件已经复制到目录,总共复制了{0}个文件".format(len(files)))

if __name__ == "__main__":
    bilibili_download_path = "/home/liwang/下载/downloads/Video/bilibili"
    #biliPath = os.path.join(bilibili_download_path,"500239952")
    movePath = "/media/liwang/move/视频/教程/temp"

    files = getBilibiliFiles(bilibili_download_path)
    moveFiles(files,movePath)
