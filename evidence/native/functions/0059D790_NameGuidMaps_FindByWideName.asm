# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059d790 <.text+0x19c790>:
  59d790:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  59d794:	85 c0                	test   eax,eax
  59d796:	56                   	push   esi
  59d797:	8b f1                	mov    esi,ecx
  59d799:	74 16                	je     0x59d7b1
  59d79b:	50                   	push   eax
  59d79c:	e8 1f 29 23 00       	call   0x7d00c0
  59d7a1:	83 c4 04             	add    esp,0x4
  59d7a4:	52                   	push   edx
  59d7a5:	50                   	push   eax
  59d7a6:	8b ce                	mov    ecx,esi
  59d7a8:	e8 83 ff ff ff       	call   0x59d730
  59d7ad:	5e                   	pop    esi
  59d7ae:	c2 04 00             	ret    0x4
  59d7b1:	33 c0                	xor    eax,eax
  59d7b3:	33 d2                	xor    edx,edx
  59d7b5:	5e                   	pop    esi
  59d7b6:	c2 04 00             	ret    0x4
