# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00549820 <.text+0x148820>:
  549820:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  549827:	00 
  549828:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  54982c:	8b c1                	mov    eax,ecx
  54982e:	33 c9                	xor    ecx,ecx
  549830:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  549833:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  549836:	f3 0f 11 40 10       	movss  DWORD PTR [eax+0x10],xmm0
  54983b:	f3 0f 10 05 88 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd88
  549842:	01 
  549843:	f3 0f 11 40 14       	movss  DWORD PTR [eax+0x14],xmm0
  549848:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  54984b:	8b 12                	mov    edx,DWORD PTR [edx]
  54984d:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
  549850:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
  549857:	c7 40 04 00 d9 14 01 	mov    DWORD PTR [eax+0x4],0x114d900
  54985e:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  549861:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  549864:	c2 04 00             	ret    0x4
