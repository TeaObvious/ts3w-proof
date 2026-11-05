# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d430 <.text+0x20c430>:
  60d430:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  60d434:	c1 e9 02             	shr    ecx,0x2
  60d437:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  60d43b:	56                   	push   esi
  60d43c:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  60d440:	74 13                	je     0x60d455
  60d442:	8b 02                	mov    eax,DWORD PTR [edx]
  60d444:	0f c8                	bswap  eax
  60d446:	83 e9 01             	sub    ecx,0x1
  60d449:	89 06                	mov    DWORD PTR [esi],eax
  60d44b:	83 c2 04             	add    edx,0x4
  60d44e:	83 c6 04             	add    esi,0x4
  60d451:	85 c9                	test   ecx,ecx
  60d453:	75 ed                	jne    0x60d442
  60d455:	5e                   	pop    esi
  60d456:	c3                   	ret
