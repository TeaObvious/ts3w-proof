# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005bd2c0 <.text+0x1bc2c0>:
  5bd2c0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  5bd2c4:	56                   	push   esi
  5bd2c5:	8b f1                	mov    esi,ecx
  5bd2c7:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  5bd2cb:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  5bd2ce:	50                   	push   eax
  5bd2cf:	51                   	push   ecx
  5bd2d0:	52                   	push   edx
  5bd2d1:	e8 da 05 f2 ff       	call   0x4dd8b0
  5bd2d6:	83 c4 0c             	add    esp,0xc
  5bd2d9:	8b ce                	mov    ecx,esi
  5bd2db:	50                   	push   eax
  5bd2dc:	e8 0f a7 21 00       	call   0x7d79f0
  5bd2e1:	5e                   	pop    esi
  5bd2e2:	c2 08 00             	ret    0x8
