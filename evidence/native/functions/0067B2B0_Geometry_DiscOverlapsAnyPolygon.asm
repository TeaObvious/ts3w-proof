# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0067b2b0, 0x0067b301); analyst name Geometry_DiscOverlapsAnyPolygon.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0067b2b0 <.text+0x27a2b0>:
  67b2b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  67b2b4:	53                   	push   ebx
  67b2b5:	8b 18                	mov    ebx,DWORD PTR [eax]
  67b2b7:	55                   	push   ebp
  67b2b8:	56                   	push   esi
  67b2b9:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  67b2bc:	57                   	push   edi
  67b2bd:	2b f3                	sub    esi,ebx
  67b2bf:	33 ff                	xor    edi,edi
  67b2c1:	c1 fe 04             	sar    esi,0x4
  67b2c4:	8b e9                	mov    ebp,ecx
  67b2c6:	74 25                	je     0x67b2ed
  67b2c8:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  67b2cc:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  67b2d0:	51                   	push   ecx
  67b2d1:	d9 14 24             	fst    DWORD PTR [esp]
  67b2d4:	50                   	push   eax
  67b2d5:	53                   	push   ebx
  67b2d6:	8b cd                	mov    ecx,ebp
  67b2d8:	e8 33 fd ff ff       	call   0x67b010
  67b2dd:	84 c0                	test   al,al
  67b2df:	75 15                	jne    0x67b2f6
  67b2e1:	83 c7 01             	add    edi,0x1
  67b2e4:	83 c3 10             	add    ebx,0x10
  67b2e7:	3b fe                	cmp    edi,esi
  67b2e9:	72 e1                	jb     0x67b2cc
  67b2eb:	dd d8                	fstp   st(0)
  67b2ed:	5f                   	pop    edi
  67b2ee:	5e                   	pop    esi
  67b2ef:	5d                   	pop    ebp
  67b2f0:	32 c0                	xor    al,al
  67b2f2:	5b                   	pop    ebx
  67b2f3:	c2 0c 00             	ret    0xc
  67b2f6:	5f                   	pop    edi
  67b2f7:	dd d8                	fstp   st(0)
  67b2f9:	5e                   	pop    esi
  67b2fa:	5d                   	pop    ebp
  67b2fb:	b0 01                	mov    al,0x1
  67b2fd:	5b                   	pop    ebx
  67b2fe:	c2 0c 00             	ret    0xc
