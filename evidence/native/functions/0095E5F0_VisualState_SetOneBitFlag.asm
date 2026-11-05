# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095e5f0 (VisualState_SetOneBitFlag)
Full Ghidra function-body envelope: 0x0095e5f0..0x0095e649 (exclusive end)
Ghidra body ranges: [[0095e5f0, 0095e648]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095e5f0 <.text+0x55d5f0>:
  95e5f0:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
  95e5f4:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  95e5f7:	f6 da                	neg    dl
  95e5f9:	56                   	push   esi
  95e5fa:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  95e5fe:	57                   	push   edi
  95e5ff:	8b f8                	mov    edi,eax
  95e601:	1b d2                	sbb    edx,edx
  95e603:	23 d6                	and    edx,esi
  95e605:	23 fe                	and    edi,esi
  95e607:	3b fa                	cmp    edi,edx
  95e609:	74 39                	je     0x95e644
  95e60b:	33 c6                	xor    eax,esi
  95e60d:	8a d0                	mov    dl,al
  95e60f:	80 e2 01             	and    dl,0x1
  95e612:	88 54 24 10          	mov    BYTE PTR [esp+0x10],dl
  95e616:	8b d0                	mov    edx,eax
  95e618:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  95e61b:	c1 ea 02             	shr    edx,0x2
  95e61e:	83 e0 39             	and    eax,0x39
  95e621:	80 e2 01             	and    dl,0x1
  95e624:	3c 39                	cmp    al,0x39
  95e626:	0f 94 c0             	sete   al
  95e629:	88 54 24 11          	mov    BYTE PTR [esp+0x11],dl
  95e62d:	8d 54 24 10          	lea    edx,[esp+0x10]
  95e631:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  95e635:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  95e638:	52                   	push   edx
  95e639:	50                   	push   eax
  95e63a:	6a 18                	push   0x18
  95e63c:	e8 7f 70 fd ff       	call   0x9356c0
  95e641:	83 c4 0c             	add    esp,0xc
  95e644:	5f                   	pop    edi
  95e645:	5e                   	pop    esi
  95e646:	c2 08 00             	ret    0x8
