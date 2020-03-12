import zlib
import bz2

f = open('./package.pack', 'rb')
data = f.read()
f.close()

a = ""
while(True):
    if(data.startswith('x')):
        data = zlib.decompress(data)
        a +=  " "
    elif(data.startswith('BZ')):
        data = bz2.decompress(data)
        a += "X"
    elif(data.endswith('x')):
        data = data[::-1]
    else:
        print(a)
        break

