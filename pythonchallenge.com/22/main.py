from PIL import Image

img = Image.open('./white.gif')
img_new = Image.new('RGB', (400,400))
frame_count = img.n_frames

x_center = 100
y_center = 100
x_cursor = 100
y_cursor = 100

for f in range(frame_count):
    img.seek(f)

    x, y, x1, y1 = img.getbbox()
    print("x: {0}, y: {1}".format(x,y))

    x_diffrence = x - x_center
    y_diffrence = y - y_center

    x_cursor += x_diffrence
    y_cursor += y_diffrence

    if(x_diffrence == y_diffrence == 0):
        x_cursor += 50

    img_new.putpixel((x_cursor, y_cursor), (255,255,255))

img_new.show()




