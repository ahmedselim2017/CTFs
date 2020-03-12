from PIL import Image

im = Image.open('wire.png')
im_new = Image.new('RGB', (100,100))

delta = [(1, 0), (0, 1), (-1, 0), (0, -1)]
x,y,p = -1,0,0

d = 200
while d/2>0:
    for v in delta:
        steps = d // 2
        for s in range(steps):
            x, y = x + v[0], y + v[1]
            im_new.putpixel((x, y),im.getpixel((p,0)))
            p += 1
        d -= 1




im_new.save("img_new.jpg")

