# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c97790 <.text+0x896790>:
  c97790:	f7 81 98 00 00 00 00 	test   DWORD PTR [ecx+0x98],0x100000
  c97797:	00 10 00 
  c9779a:	75 0f                	jne    0xc977ab
  c9779c:	f7 81 d0 00 00 00 0a 	test   DWORD PTR [ecx+0xd0],0x4000010a
  c977a3:	01 00 40 
  c977a6:	75 03                	jne    0xc977ab
  c977a8:	33 c0                	xor    eax,eax
  c977aa:	c3                   	ret
  c977ab:	b8 01 00 00 00       	mov    eax,0x1
  c977b0:	c3                   	ret
