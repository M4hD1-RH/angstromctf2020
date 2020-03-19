# angstromctf2020
misc Shifter write-up
in this challange we need to encrypte the message with caeser and the key is the fibonacci of k 50 times 
so we write this python scripte to solve that import collections 

-- juste run the scripte with python2.7 -- 
and you get the flag :actf{h0p3_y0u_us3d_th3_f0rmu14-1985098}

import collections 
import string
from numpy import zeros,array
from pwn import *
s = remote('misc.2020.chall.actf.co', 20300)
context.log_level = 'critical'
t = zeros(50, int)
for x in range (0,50): 
	if x == 0:
		t[x] = 0 
	elif x == 1 :
		t[x] = 1 
	else :
		t[x] = t[x-1] + t[x-2]
a= s.recv()
idexshift = a.find('Shift')
idexby = a.find('by') -1 
shift = a[idexshift+6:idexby]
by = a[idexby+6:idexby+8]
key = t[int(by)]
upper = collections.deque(string.ascii_uppercase)
upper.rotate (-key)
upper = ''.join(list(upper))
b=shift.translate(string.maketrans(string.ascii_uppercase,upper))
s.sendline(b)
z=0
while z < 49 :
	m = s.recv()
	idexshift = m.find('Shift')
	idexby = m.find('by') -1 
	shift = m[idexshift+6:idexby]
	by = m[idexby+6:idexby+8]
	key = t[int(by)]
	upper = collections.deque(string.ascii_uppercase)
	upper.rotate (-key)
	upper = ''.join(list(upper))
	b=shift.translate(string.maketrans(string.ascii_uppercase,upper))
	s.sendline(b)
	z+=1
print s.recv()
