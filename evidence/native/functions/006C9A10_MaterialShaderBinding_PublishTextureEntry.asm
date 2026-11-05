# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006c9a10 (MaterialShaderBinding_PublishTextureEntry)
Paired actual Ghidra pseudocode: 006C9A10_MaterialShaderBinding_PublishTextureEntry.c
Envelope [0x006c9a10,0x006c9a4c); 60 bytes; exact owned ranges: [0x006c9a10,0x006c9a4c)
Owned: 60 original bytes / 23 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006c9a10 <original>:
  6c9a10:	8b 41 64                                        	mov    eax,DWORD PTR [ecx+0x64]
  6c9a13:	8b 51 68                                        	mov    edx,DWORD PTR [ecx+0x68]
  6c9a16:	3b c2                                           	cmp    eax,edx
  6c9a18:	56                                              	push   esi
  6c9a19:	74 10                                           	je     0x6c9a2b
  6c9a1b:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  6c9a1f:	90                                              	nop
  6c9a20:	39 30                                           	cmp    DWORD PTR [eax],esi
  6c9a22:	74 09                                           	je     0x6c9a2d
  6c9a24:	83 c0 20                                        	add    eax,0x20
  6c9a27:	3b c2                                           	cmp    eax,edx
  6c9a29:	75 f5                                           	jne    0x6c9a20
  6c9a2b:	33 c0                                           	xor    eax,eax
  6c9a2d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  6c9a31:	89 50 14                                        	mov    DWORD PTR [eax+0x14],edx
  6c9a34:	c6 40 1e 06                                     	mov    BYTE PTR [eax+0x1e],0x6
  6c9a38:	83 41 48 ff                                     	add    DWORD PTR [ecx+0x48],0xffffffff
  6c9a3c:	5e                                              	pop    esi
  6c9a3d:	75 0a                                           	jne    0x6c9a49
  6c9a3f:	6a 03                                           	push   0x3
  6c9a41:	83 c1 28                                        	add    ecx,0x28
  6c9a44:	e8 47 4d 01 00                                  	call   0x6de790
  6c9a49:	c2 08 00                                        	ret    0x8
