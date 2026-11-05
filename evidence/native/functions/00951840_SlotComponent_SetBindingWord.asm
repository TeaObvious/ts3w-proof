# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00951840 <.text+0x550840>:
  951840:	56                   	push   esi
  951841:	8b f1                	mov    esi,ecx
  951843:	83 7e 40 00          	cmp    DWORD PTR [esi+0x40],0x0
  951847:	75 2c                	jne    0x951875
  951849:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  95184c:	2b 46 54             	sub    eax,DWORD PTR [esi+0x54]
  95184f:	c1 f8 02             	sar    eax,0x2
  951852:	03 46 28             	add    eax,DWORD PTR [esi+0x28]
  951855:	03 46 20             	add    eax,DWORD PTR [esi+0x20]
  951858:	03 46 18             	add    eax,DWORD PTR [esi+0x18]
  95185b:	03 46 10             	add    eax,DWORD PTR [esi+0x10]
  95185e:	03 46 08             	add    eax,DWORD PTR [esi+0x8]
  951861:	75 1f                	jne    0x951882
  951863:	e8 58 f6 ff ff       	call   0x950ec0
  951868:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95186c:	89 4e 40             	mov    DWORD PTR [esi+0x40],ecx
  95186f:	b0 01                	mov    al,0x1
  951871:	5e                   	pop    esi
  951872:	c2 04 00             	ret    0x4
  951875:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  951879:	89 56 40             	mov    DWORD PTR [esi+0x40],edx
  95187c:	b0 01                	mov    al,0x1
  95187e:	5e                   	pop    esi
  95187f:	c2 04 00             	ret    0x4
  951882:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  951886:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  951889:	b0 01                	mov    al,0x1
  95188b:	5e                   	pop    esi
  95188c:	c2 04 00             	ret    0x4
