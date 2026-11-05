# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00934210 <.text+0x533210>:
  934210:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  934214:	85 c9                	test   ecx,ecx
  934216:	56                   	push   esi
  934217:	74 29                	je     0x934242
  934219:	8b 01                	mov    eax,DWORD PTR [ecx]
  93421b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  93421e:	68 1f 1a 99 15       	push   0x15991a1f
  934223:	ff d2                	call   edx
  934225:	8b f0                	mov    esi,eax
  934227:	85 f6                	test   esi,esi
  934229:	74 17                	je     0x934242
  93422b:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93422f:	8b 01                	mov    eax,DWORD PTR [ecx]
  934231:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  934234:	ff d2                	call   edx
  934236:	50                   	push   eax
  934237:	8b ce                	mov    ecx,esi
  934239:	e8 52 fe ff ff       	call   0x934090
  93423e:	5e                   	pop    esi
  93423f:	c2 08 00             	ret    0x8
  934242:	32 c0                	xor    al,al
  934244:	5e                   	pop    esi
  934245:	c2 08 00             	ret    0x8
