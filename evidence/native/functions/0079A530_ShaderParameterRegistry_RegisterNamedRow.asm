# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x0079a530 ShaderParameterRegistry_RegisterNamedRow
# Complete actual Ghidra owned ranges: 0079a530..0079a563; 18 instructions/52 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 0079A530_ShaderParameterRegistry_RegisterNamedRow.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a530 <.text+0x399530>:
  79a530:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  79a534:	56                                              	push   esi
  79a535:	50                                              	push   eax
  79a536:	8b f1                                           	mov    esi,ecx
  79a538:	e8 b3 5b 03 00                                  	call   0x7d00f0
  79a53d:	83 c4 04                                        	add    esp,0x4
  79a540:	50                                              	push   eax
  79a541:	8b ce                                           	mov    ecx,esi
  79a543:	e8 78 fe ff ff                                  	call   0x79a3c0
  79a548:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  79a54c:	8b c8                                           	mov    ecx,eax
  79a54e:	c1 e1 04                                        	shl    ecx,0x4
  79a551:	03 4e 04                                        	add    ecx,DWORD PTR [esi+0x4]
  79a554:	5e                                              	pop    esi
  79a555:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  79a558:	66 8b 54 24 0c                                  	mov    dx,WORD PTR [esp+0xc]
  79a55d:	66 89 51 06                                     	mov    WORD PTR [ecx+0x6],dx
  79a561:	c2 0c 00                                        	ret    0xc
