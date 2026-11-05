# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x006fc840 (SceneObject_NotifyOpacityBandChange)
Full Ghidra function-body envelope: 0x006fc840..0x006fc8f0 (exclusive end)
Ghidra body ranges: [[006fc840, 006fc8ef]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fc840 <.text+0x2fb840>:
  6fc840:	f3 0f 10 0d f4 ac ff 00 	movss  xmm1,DWORD PTR ds:0xffacf4
  6fc848:	f3 0f 10 44 24 04    	movss  xmm0,DWORD PTR [esp+0x4]
  6fc84e:	0f 2f c8             	comiss xmm1,xmm0
  6fc851:	f3 0f 10 15 f8 ac ff 00 	movss  xmm2,DWORD PTR ds:0xffacf8
  6fc859:	f3 0f 10 1d f0 ac ff 00 	movss  xmm3,DWORD PTR ds:0xffacf0
  6fc861:	56                   	push   esi
  6fc862:	8b f1                	mov    esi,ecx
  6fc864:	76 04                	jbe    0x6fc86a
  6fc866:	33 c9                	xor    ecx,ecx
  6fc868:	eb 1b                	jmp    0x6fc885
  6fc86a:	0f 2f d0             	comiss xmm2,xmm0
  6fc86d:	76 07                	jbe    0x6fc876
  6fc86f:	b9 01 00 00 00       	mov    ecx,0x1
  6fc874:	eb 0f                	jmp    0x6fc885
  6fc876:	0f 2f d8             	comiss xmm3,xmm0
  6fc879:	b9 02 00 00 00       	mov    ecx,0x2
  6fc87e:	77 05                	ja     0x6fc885
  6fc880:	b9 03 00 00 00       	mov    ecx,0x3
  6fc885:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  6fc88b:	0f 2f c8             	comiss xmm1,xmm0
  6fc88e:	76 04                	jbe    0x6fc894
  6fc890:	33 c0                	xor    eax,eax
  6fc892:	eb 1b                	jmp    0x6fc8af
  6fc894:	0f 2f d0             	comiss xmm2,xmm0
  6fc897:	76 07                	jbe    0x6fc8a0
  6fc899:	b8 01 00 00 00       	mov    eax,0x1
  6fc89e:	eb 0f                	jmp    0x6fc8af
  6fc8a0:	0f 2f d8             	comiss xmm3,xmm0
  6fc8a3:	b8 02 00 00 00       	mov    eax,0x2
  6fc8a8:	77 05                	ja     0x6fc8af
  6fc8aa:	b8 03 00 00 00       	mov    eax,0x3
  6fc8af:	3b c8                	cmp    ecx,eax
  6fc8b1:	74 39                	je     0x6fc8ec
  6fc8b3:	85 f6                	test   esi,esi
  6fc8b5:	74 05                	je     0x6fc8bc
  6fc8b7:	8d 46 18             	lea    eax,[esi+0x18]
  6fc8ba:	eb 02                	jmp    0x6fc8be
  6fc8bc:	33 c0                	xor    eax,eax
  6fc8be:	83 38 00             	cmp    DWORD PTR [eax],0x0
  6fc8c1:	75 12                	jne    0x6fc8d5
  6fc8c3:	89 00                	mov    DWORD PTR [eax],eax
  6fc8c5:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  6fc8c8:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  6fc8cb:	85 c9                	test   ecx,ecx
  6fc8cd:	74 06                	je     0x6fc8d5
  6fc8cf:	56                   	push   esi
  6fc8d0:	e8 2b 76 fe ff       	call   0x6e3f00
  6fc8d5:	f6 86 08 02 00 00 10 	test   BYTE PTR [esi+0x208],0x10
  6fc8dc:	74 07                	je     0x6fc8e5
  6fc8de:	8b ce                	mov    ecx,esi
  6fc8e0:	e8 1b ff ff ff       	call   0x6fc800
  6fc8e5:	8b ce                	mov    ecx,esi
  6fc8e7:	e8 c4 fe ff ff       	call   0x6fc7b0
  6fc8ec:	5e                   	pop    esi
  6fc8ed:	c2 08 00             	ret    0x8
