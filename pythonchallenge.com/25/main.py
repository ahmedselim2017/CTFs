import wave
from PIL import Image

wavs = [wave.open('lake{}.wav'.format(i)) for i in range(1,26)]
print(wavs[0].getnframes())


result = Image.new('RGB', (300,300), 0)
for i in range(len(wavs)):
    img = Image.frombytes('RGB', (60,60), wavs[i].readframes(wavs[i].getnframes()))
    img.save("_lake{}.png".format(i))
    result.paste(img, (60 * (i % 5), 60 * (i // 5)))
result.show()

