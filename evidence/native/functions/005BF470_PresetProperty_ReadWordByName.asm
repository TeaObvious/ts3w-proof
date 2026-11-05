# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005bf470 <.text+0x1be470>:
  5bf470:	57                   	push   edi
  5bf471:	8b f9                	mov    edi,ecx
  5bf473:	83 7f 28 00          	cmp    DWORD PTR [edi+0x28],0x0
  5bf477:	75 06                	jne    0x5bf47f
  5bf479:	32 c0                	xor    al,al
  5bf47b:	5f                   	pop    edi
  5bf47c:	c2 0c 00             	ret    0xc
  5bf47f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  5bf483:	53                   	push   ebx
  5bf484:	56                   	push   esi
  5bf485:	50                   	push   eax
  5bf486:	e8 c5 60 03 00       	call   0x5f5550
  5bf48b:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  5bf48f:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  5bf493:	83 c4 04             	add    esp,0x4
  5bf496:	51                   	push   ecx
  5bf497:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  5bf49a:	8b f0                	mov    esi,eax
  5bf49c:	52                   	push   edx
  5bf49d:	56                   	push   esi
  5bf49e:	e8 1d 29 00 00       	call   0x5c1dc0
  5bf4a3:	56                   	push   esi
  5bf4a4:	8a d8                	mov    bl,al
  5bf4a6:	e8 35 62 03 00       	call   0x5f56e0
  5bf4ab:	83 c4 04             	add    esp,0x4
  5bf4ae:	5e                   	pop    esi
  5bf4af:	8a c3                	mov    al,bl
  5bf4b1:	5b                   	pop    ebx
  5bf4b2:	5f                   	pop    edi
  5bf4b3:	c2 0c 00             	ret    0xc
