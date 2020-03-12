import gzip
from difflib import Differ

with gzip.open('./deltas.gz', 'rb') as delta:

    d = Differ()

    d1 = []
    d2 = []

    for line in delta:
        d1.append(line[:53].strip())
        d2.append(line[56:].strip())

    d = Differ()
    result = list(d.compare(d1,d2))
    print(result)

    d1_image = open('d1_image', 'wb')
    d2_image = open('d2_image', 'wb')
    both_image = open('both_image', 'wb')


    for each_result in result:
        bytes = [ chr(int(b, 16)) for b in each_result[2:].split()]
        print(bytes)

        if each_result.startswith('-'):
            for byte in bytes:
                d1_image.write(byte)
        elif each_result.startswith('+'):
            for byte in bytes:
                d2_image.write(byte)
        elif each_result.startswith(' '):
            for byte in bytes:
                both_image.write(byte)
    d1_image.close()
    d2_image.close()
    both_image.close()
