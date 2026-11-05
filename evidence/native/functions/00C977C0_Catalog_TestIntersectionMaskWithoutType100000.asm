# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c977c0 <.text+0x8967c0>:
  c977c0:	f7 81 98 00 00 00 00 	test   DWORD PTR [ecx+0x98],0x100000
  c977c7:	00 10 00 
  c977ca:	75 12                	jne    0xc977de
  c977cc:	f7 81 d0 00 00 00 0a 	test   DWORD PTR [ecx+0xd0],0x4000010a
  c977d3:	01 00 40 
  c977d6:	74 06                	je     0xc977de
  c977d8:	b8 01 00 00 00       	mov    eax,0x1
  c977dd:	c3                   	ret
  c977de:	33 c0                	xor    eax,eax
  c977e0:	c3                   	ret
