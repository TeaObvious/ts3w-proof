# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c20530 <.text+0x81f530>:
  c20530:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
  c20535:	55                   	push   ebp
  c20536:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  c2053a:	57                   	push   edi
  c2053b:	8b f9                	mov    edi,ecx
  c2053d:	8b 07                	mov    eax,DWORD PTR [edi]
  c2053f:	8b 04 a8             	mov    eax,DWORD PTR [eax+ebp*4]
  c20542:	75 42                	jne    0xc20586
  c20544:	85 c0                	test   eax,eax
  c20546:	74 07                	je     0xc2054f
  c20548:	3d ff 00 00 00       	cmp    eax,0xff
  c2054d:	77 37                	ja     0xc20586
  c2054f:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c20555:	53                   	push   ebx
  c20556:	56                   	push   esi
  c20557:	6a 00                	push   0x0
  c20559:	68 00 01 00 00       	push   0x100
  c2055e:	8a d8                	mov    bl,al
  c20560:	e8 bb 69 8c ff       	call   0x4e6f20
  c20565:	8b f0                	mov    esi,eax
  c20567:	85 f6                	test   esi,esi
  c20569:	74 12                	je     0xc2057d
  c2056b:	0f b6 cb             	movzx  ecx,bl
  c2056e:	68 00 01 00 00       	push   0x100
  c20573:	51                   	push   ecx
  c20574:	56                   	push   esi
  c20575:	e8 1e ed 35 00       	call   0xf7f298
  c2057a:	83 c4 0c             	add    esp,0xc
  c2057d:	8b 17                	mov    edx,DWORD PTR [edi]
  c2057f:	89 34 aa             	mov    DWORD PTR [edx+ebp*4],esi
  c20582:	8b c6                	mov    eax,esi
  c20584:	5e                   	pop    esi
  c20585:	5b                   	pop    ebx
  c20586:	5f                   	pop    edi
  c20587:	5d                   	pop    ebp
  c20588:	c2 08 00             	ret    0x8
