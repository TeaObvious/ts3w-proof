# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c97760 <.text+0x896760>:
  c97760:	8b 91 9c 00 00 00    	mov    edx,DWORD PTR [ecx+0x9c]
  c97766:	8b 89 98 00 00 00    	mov    ecx,DWORD PTR [ecx+0x98]
  c9776c:	56                   	push   esi
  c9776d:	33 f6                	xor    esi,esi
  c9776f:	33 c0                	xor    eax,eax
  c97771:	0b d6                	or     edx,esi
  c97773:	0b c1                	or     eax,ecx
  c97775:	5e                   	pop    esi
  c97776:	c3                   	ret
