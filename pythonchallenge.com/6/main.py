import zipfile

archive = zipfile.ZipFile('./channel.zip', 'r')
next_nothing = 90052
comments = ""
try:
    while True:
        f = open("./channel/" + str(next_nothing) + ".txt")
        content = f.read()
        next_nothing = content.split()[-1]
        #print(content,":", next_nothing)
        comments += archive.getinfo(next_nothing + ".txt").comment
except:
    print(comments)


