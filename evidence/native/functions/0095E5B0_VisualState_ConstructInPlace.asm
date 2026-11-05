# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095e5b0 <.text+0x55d5b0>:
  95e5b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  95e5b4:	33 c9                	xor    ecx,ecx
  95e5b6:	3b c1                	cmp    eax,ecx
  95e5b8:	74 2f                	je     0x95e5e9
  95e5ba:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  95e5be:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  95e5c5:	00 
  95e5c6:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  95e5c9:	c7 00 c4 5a 04 01    	mov    DWORD PTR [eax],0x1045ac4
  95e5cf:	c7 40 08 39 09 00 00 	mov    DWORD PTR [eax+0x8],0x939
  95e5d6:	c7 40 0c ff ff ff ff 	mov    DWORD PTR [eax+0xc],0xffffffff
  95e5dd:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  95e5e0:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  95e5e3:	f3 0f 11 40 18       	movss  DWORD PTR [eax+0x18],xmm0
  95e5e8:	c3                   	ret
  95e5e9:	33 c0                	xor    eax,eax
  95e5eb:	c3                   	ret
