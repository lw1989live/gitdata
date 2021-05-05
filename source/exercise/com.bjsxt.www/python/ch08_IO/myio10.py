import pickle

with open(r"data.txt","wb") as f:
    a1 = "李旺"
    a2 = 345
    a3 = [20,30,40]

    pickle.dump(a1,f)
    pickle.dump(a2,f)
    pickle.dump(a3,f)

with open(r"data.txt","rb") as f:
    b1 = pickle.load(f)
    b2 = pickle.load(f)
    b3 = pickle.load(f)

print(b1)
print(b2)
print(b3)
