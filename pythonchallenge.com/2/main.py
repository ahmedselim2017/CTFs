import string
from collections import Counter


data = open('./data').read()

list = list(data)
print(Counter(list))

print("equality")
