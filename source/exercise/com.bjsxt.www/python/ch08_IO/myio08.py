# 二进制文件拷贝
with open(r"aa.gif","rb") as f:
    
    with open(r"aa.gif","wb") as w:
        lines = f.readlines()
        w.writelines(lines)

