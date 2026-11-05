# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617fe0 <.text+0x216fe0>:
  617fe0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  617fe4:	8b c1                	mov    eax,ecx
  617fe6:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  617fe9:	f7 da                	neg    edx
  617feb:	d3 fa                	sar    edx,cl
  617fed:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  617ff1:	0f af 50 14          	imul   edx,DWORD PTR [eax+0x14]
  617ff5:	8b c1                	mov    eax,ecx
  617ff7:	2b c2                	sub    eax,edx
  617ff9:	83 e8 01             	sub    eax,0x1
  617ffc:	f7 d9                	neg    ecx
  617ffe:	23 c1                	and    eax,ecx
  618000:	c2 08 00             	ret    0x8
