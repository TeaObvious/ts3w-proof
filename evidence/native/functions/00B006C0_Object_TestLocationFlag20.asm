# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b006c0 <.text+0x6ff6c0>:
  b006c0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  b006c4:	85 c9                	test   ecx,ecx
  b006c6:	74 20                	je     0xb006e8
  b006c8:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  b006cd:	50                   	push   eax
  b006ce:	e8 8d 3b e3 ff       	call   0x934260
  b006d3:	85 c0                	test   eax,eax
  b006d5:	74 11                	je     0xb006e8
  b006d7:	8b 48 2c             	mov    ecx,DWORD PTR [eax+0x2c]
  b006da:	c1 e9 05             	shr    ecx,0x5
  b006dd:	f6 c1 01             	test   cl,0x1
  b006e0:	74 06                	je     0xb006e8
  b006e2:	b8 01 00 00 00       	mov    eax,0x1
  b006e7:	c3                   	ret
  b006e8:	33 c0                	xor    eax,eax
  b006ea:	c3                   	ret
