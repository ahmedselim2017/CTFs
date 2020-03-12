import pickle

peakhell = open("./banner.p", "r")
peakhell_load = pickle.load(peakhell)

a = ""
for array in peakhell_load:
    for item in array:
        a += item[0] * item[1]
    a += "\n"

print(a)

