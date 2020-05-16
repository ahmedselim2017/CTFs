from pwn import *
import string

F = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946,17711,28657,46368,75025,121393,196418,317811,514229,832040,1346269,2178309,3524578,5702887,9227465,14930352,24157817,39088169,63245986,102334155,165580141,267914296,433494437,701408733,1134903170,1836311903,2971215073,4807526976,7778742049]

conn = remote("misc.2020.chall.actf.co", 20300)

try:
    while True:
        a = conn.recvuntil("Shift ")
        line = conn.recvline()
        print(line)
        p = str(line).split(' ')[0]#[2:]
        n = int(str(line).split('=')[1])#[:2]

        a = ""
        for c in p:
            index = (string.ascii_uppercase.index(c) + F[n])%len(string.ascii_uppercase)
            a += string.ascii_uppercase[index]
        print(a)
        conn.sendline(a)
except:
    conn.interactive()


