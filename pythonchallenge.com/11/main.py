from PIL import Image

im = Image.open("cave.jpg")
w, h = im.size

new_im = Image.new('RGB', (w, h))

for x in range(0, w, 2):
    for y in range(0, h, 2):
        even = im.getpixel((x, y))[0]
        odd = im.getpixel((x+1, y+1))[0]

        new_im.putpixel((x,y), even)
        new_im.putpixel((x +1,y+1), odd)

new_im.save('new_im.jpg')
