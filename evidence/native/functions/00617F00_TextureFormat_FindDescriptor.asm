# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617f00 <.text+0x216f00>:
  617f00:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  617f04:	3d 9a 00 00 00       	cmp    eax,0x9a
  617f09:	72 02                	jb     0x617f0d
  617f0b:	33 c0                	xor    eax,eax
  617f0d:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  617f14:	2b c8                	sub    ecx,eax
  617f16:	8d 04 8d f8 93 fe 00 	lea    eax,[ecx*4+0xfe93f8]
  617f1d:	c3                   	ret
