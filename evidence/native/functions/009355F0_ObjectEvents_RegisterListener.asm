# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009355f0, 0x00935664); analyst name ObjectEvents_RegisterListener.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009355f0 <.text+0x5345f0>:
  9355f0:	e8 7b 1f 00 00       	call   0x937570
  9355f5:	85 c0                	test   eax,eax
  9355f7:	74 68                	je     0x935661
  9355f9:	8b c8                	mov    ecx,eax
  9355fb:	e8 20 1e 00 00       	call   0x937420
  935600:	85 c0                	test   eax,eax
  935602:	74 5d                	je     0x935661
  935604:	8b 10                	mov    edx,DWORD PTR [eax]
  935606:	56                   	push   esi
  935607:	57                   	push   edi
  935608:	6a 01                	push   0x1
  93560a:	68 8c 3d 04 01       	push   0x1043d8c
  93560f:	8b c8                	mov    ecx,eax
  935611:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  935614:	6a 0c                	push   0xc
  935616:	ff d0                	call   eax
  935618:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  93561c:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  935620:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  935624:	89 30                	mov    DWORD PTR [eax],esi
  935626:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  935629:	8b 0c bd a8 d2 1d 01 	mov    ecx,DWORD PTR [edi*4+0x11dd2a8]
  935630:	33 d2                	xor    edx,edx
  935632:	85 c9                	test   ecx,ecx
  935634:	74 1c                	je     0x935652
  935636:	39 31                	cmp    DWORD PTR [ecx],esi
  935638:	7c 09                	jl     0x935643
  93563a:	8b d1                	mov    edx,ecx
  93563c:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  93563f:	85 c9                	test   ecx,ecx
  935641:	75 f3                	jne    0x935636
  935643:	85 d2                	test   edx,edx
  935645:	74 0b                	je     0x935652
  935647:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  93564a:	5f                   	pop    edi
  93564b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  93564e:	b0 01                	mov    al,0x1
  935650:	5e                   	pop    esi
  935651:	c3                   	ret
  935652:	89 04 bd a8 d2 1d 01 	mov    DWORD PTR [edi*4+0x11dd2a8],eax
  935659:	5f                   	pop    edi
  93565a:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  93565d:	b0 01                	mov    al,0x1
  93565f:	5e                   	pop    esi
  935660:	c3                   	ret
  935661:	32 c0                	xor    al,al
  935663:	c3                   	ret
