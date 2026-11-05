# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061a2a0 <.text+0x2192a0>:
  61a2a0:	56                   	push   esi
  61a2a1:	8b f1                	mov    esi,ecx
  61a2a3:	57                   	push   edi
  61a2a4:	c7 06 78 4a ff 00    	mov    DWORD PTR [esi],0xff4a78
  61a2aa:	33 c0                	xor    eax,eax
  61a2ac:	8d 4e 04             	lea    ecx,[esi+0x4]
  61a2af:	87 01                	xchg   DWORD PTR [ecx],eax
  61a2b1:	8d 7e 08             	lea    edi,[esi+0x8]
  61a2b4:	8b cf                	mov    ecx,edi
  61a2b6:	e8 f5 a3 ff ff       	call   0x6146b0
  61a2bb:	33 c0                	xor    eax,eax
  61a2bd:	c7 07 54 a5 fe 00    	mov    DWORD PTR [edi],0xfea554
  61a2c3:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  61a2c6:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  61a2c9:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  61a2cc:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  61a2cf:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  61a2d2:	5f                   	pop    edi
  61a2d3:	c7 06 44 a5 fe 00    	mov    DWORD PTR [esi],0xfea544
  61a2d9:	8b c6                	mov    eax,esi
  61a2db:	5e                   	pop    esi
  61a2dc:	c3                   	ret
