# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c28bd0 (TerrainData_CopyLayerTextureKey)
Paired actual Ghidra pseudocode: 00C28BD0_TerrainData_CopyLayerTextureKey.c
Envelope [0x00c28bd0,0x00c28c0b); 59 bytes; exact owned ranges: [0x00c28bd0,0x00c28c0b)
Owned: 59 original bytes / 21 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c28bd0 <original>:
  c28bd0:	8b 51 48                                        	mov    edx,DWORD PTR [ecx+0x48]
  c28bd3:	2b 51 44                                        	sub    edx,DWORD PTR [ecx+0x44]
  c28bd6:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c28bda:	c1 fa 05                                        	sar    edx,0x5
  c28bdd:	3b c2                                           	cmp    eax,edx
  c28bdf:	73 25                                           	jae    0xc28c06
  c28be1:	c1 e0 05                                        	shl    eax,0x5
  c28be4:	03 41 44                                        	add    eax,DWORD PTR [ecx+0x44]
  c28be7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  c28beb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c28bed:	89 11                                           	mov    DWORD PTR [ecx],edx
  c28bef:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  c28bf2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  c28bf5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  c28bf8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  c28bfb:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c28bfe:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  c28c01:	b0 01                                           	mov    al,0x1
  c28c03:	c2 08 00                                        	ret    0x8
  c28c06:	32 c0                                           	xor    al,al
  c28c08:	c2 08 00                                        	ret    0x8
