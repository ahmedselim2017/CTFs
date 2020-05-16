import pickle

with open("./donotshare", "rb") as f:
    o = pickle.load(f)

a = ""

for line in o:
    for c, n in line:
        a+=c*n
    a+="\n"

print(a)
