# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950390 <.text+0x54f390>:
  950390:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  950394:	53                   	push   ebx
  950395:	50                   	push   eax
  950396:	32 db                	xor    bl,bl
  950398:	e8 03 fe ff ff       	call   0x9501a0
  95039d:	85 c0                	test   eax,eax
  95039f:	74 12                	je     0x9503b3
  9503a1:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  9503a4:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  9503a8:	23 c8                	and    ecx,eax
  9503aa:	3b c8                	cmp    ecx,eax
  9503ac:	0f 94 c0             	sete   al
  9503af:	5b                   	pop    ebx
  9503b0:	c2 08 00             	ret    0x8
  9503b3:	8a c3                	mov    al,bl
  9503b5:	5b                   	pop    ebx
  9503b6:	c2 08 00             	ret    0x8
