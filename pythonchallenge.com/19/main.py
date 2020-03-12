import wave
import struct

w =  wave.open('./indian.wav', 'rb')

frame_count = w.getnframes()
frames = w.readframes(frame_count)

out = open('./out.wav', 'wb')
out.write(b'A')


out.close()
w.close()
