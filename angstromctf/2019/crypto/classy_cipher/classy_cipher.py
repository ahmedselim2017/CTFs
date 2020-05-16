#from secret import flag, shift


s = 216
def encrypt(d, s):
	e = ''
	for c in d:
		e += chr((ord(c)+s) % 0xff)
	return e

def decrypt(e, s):
    d = ''
    for c in e:
        d += chr(ord(c) + 0xff - s)
    return d

print(decrypt(':<M?TLH8<A:KFBG@V',s))

#assert encrypt(flag, shift) == ':<M?TLH8<A:KFBG@V'
