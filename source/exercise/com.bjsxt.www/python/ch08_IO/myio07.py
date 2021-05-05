
with open(r"test.txt","r") as f:
    
    lines = f.readlines()
    lines = [temp.rstrip() + " #" + str(index) + "\n" for index,temp in enumerate(lines)]
    
with open(r"test.txt","w") as f:
    f.writelines(lines)

