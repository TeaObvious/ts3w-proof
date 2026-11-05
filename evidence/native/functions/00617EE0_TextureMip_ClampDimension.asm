# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617ee0 <.text+0x216ee0>:
  617ee0:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  617ee4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  617ee8:	d3 e8                	shr    eax,cl
  617eea:	85 c0                	test   eax,eax
  617eec:	75 05                	jne    0x617ef3
  617eee:	b8 01 00 00 00       	mov    eax,0x1
  617ef3:	c3                   	ret
