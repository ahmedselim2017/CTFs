
gfx = open('evil2.gfx', 'rb').read()

for i in range(5):
    open(str(i) + ".jpg", "wb").write(gfx[i::5])

from PIL import Image
Image.open('3.jpg').show()

