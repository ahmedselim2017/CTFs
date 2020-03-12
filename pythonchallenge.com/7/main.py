from PIL import Image

im = Image.open('./oxygen.png')
width, height = im.size
rgb_im = im.convert('RGB')

all = []
old = []
normal1 = []
normal = []
for x in range(width):
    r, g, b = rgb_im.getpixel((x, 48))
    if [r, g, b] != old:
        if r == g == b:
            normal1.append(r)
        else:
            normal.append([r, g, b])
    if x == 629:
        break

    old = [r, g, b]
    all.append([r, g, b])

message = ""
for c in normal1:
    message += chr(c)
print(message)

msg2 = [105, 10, 16, 101, 103, 14, 105, 16, 121]
message2 = ""
for c in msg2:
    message2 += chr(c)

print(message2)
