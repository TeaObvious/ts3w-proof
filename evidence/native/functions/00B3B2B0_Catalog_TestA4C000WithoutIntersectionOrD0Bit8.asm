# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b3b2b0 <.text+0x73a2b0>:
  b3b2b0:	56                   	push   esi
  b3b2b1:	8b f1                	mov    esi,ecx
  b3b2b3:	e8 d8 c4 15 00       	call   0xc97790
  b3b2b8:	84 c0                	test   al,al
  b3b2ba:	75 28                	jne    0xb3b2e4
  b3b2bc:	8b 86 d0 00 00 00    	mov    eax,DWORD PTR [esi+0xd0]
  b3b2c2:	c1 e8 03             	shr    eax,0x3
  b3b2c5:	a8 01                	test   al,0x1
  b3b2c7:	75 1b                	jne    0xb3b2e4
  b3b2c9:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  b3b2cf:	81 e1 00 c0 00 00    	and    ecx,0xc000
  b3b2d5:	81 f9 00 c0 00 00    	cmp    ecx,0xc000
  b3b2db:	75 07                	jne    0xb3b2e4
  b3b2dd:	b8 01 00 00 00       	mov    eax,0x1
  b3b2e2:	5e                   	pop    esi
  b3b2e3:	c3                   	ret
  b3b2e4:	33 c0                	xor    eax,eax
  b3b2e6:	5e                   	pop    esi
  b3b2e7:	c3                   	ret
