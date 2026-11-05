# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00677540, 0x00677585); analyst name Geometry_PointInAnyPolygon.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00677540 <.text+0x276540>:
  677540:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  677544:	53                   	push   ebx
  677545:	8b 18                	mov    ebx,DWORD PTR [eax]
  677547:	55                   	push   ebp
  677548:	56                   	push   esi
  677549:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  67754c:	57                   	push   edi
  67754d:	2b f3                	sub    esi,ebx
  67754f:	33 ff                	xor    edi,edi
  677551:	c1 fe 04             	sar    esi,0x4
  677554:	8b e9                	mov    ebp,ecx
  677556:	74 1b                	je     0x677573
  677558:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  67755c:	50                   	push   eax
  67755d:	53                   	push   ebx
  67755e:	8b cd                	mov    ecx,ebp
  677560:	e8 6b fc ff ff       	call   0x6771d0
  677565:	84 c0                	test   al,al
  677567:	75 13                	jne    0x67757c
  677569:	83 c7 01             	add    edi,0x1
  67756c:	83 c3 10             	add    ebx,0x10
  67756f:	3b fe                	cmp    edi,esi
  677571:	72 e5                	jb     0x677558
  677573:	5f                   	pop    edi
  677574:	5e                   	pop    esi
  677575:	5d                   	pop    ebp
  677576:	32 c0                	xor    al,al
  677578:	5b                   	pop    ebx
  677579:	c2 08 00             	ret    0x8
  67757c:	5f                   	pop    edi
  67757d:	5e                   	pop    esi
  67757e:	5d                   	pop    ebp
  67757f:	b0 01                	mov    al,0x1
  677581:	5b                   	pop    ebx
  677582:	c2 08 00             	ret    0x8
