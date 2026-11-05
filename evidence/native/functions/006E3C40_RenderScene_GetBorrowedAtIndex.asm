# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006e3c40 <.text+0x2e2c40>:
  6e3c40:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  6e3c43:	2b 51 04             	sub    edx,DWORD PTR [ecx+0x4]
  6e3c46:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  6e3c4a:	c1 fa 02             	sar    edx,0x2
  6e3c4d:	3b c2                	cmp    eax,edx
  6e3c4f:	72 05                	jb     0x6e3c56
  6e3c51:	33 c0                	xor    eax,eax
  6e3c53:	c2 04 00             	ret    0x4
  6e3c56:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  6e3c59:	8b 04 81             	mov    eax,DWORD PTR [ecx+eax*4]
  6e3c5c:	c2 04 00             	ret    0x4
