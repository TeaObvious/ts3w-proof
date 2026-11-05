# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x0060f3b0 (RenderDevice_BindTextureSlotCached)
Paired actual Ghidra pseudocode: 0060F3B0_RenderDevice_BindTextureSlotCached.c
Envelope [0x0060f3b0,0x0060f3e6); 54 bytes; exact owned ranges: [0x0060f3b0,0x0060f3e6)
Owned: 54 original bytes / 19 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
0060f3b0 <original>:
  60f3b0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  60f3b4:	33 c0                                           	xor    eax,eax
  60f3b6:	85 d2                                           	test   edx,edx
  60f3b8:	74 03                                           	je     0x60f3bd
  60f3ba:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  60f3bd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  60f3c1:	39 84 91 20 01 00 00                            	cmp    DWORD PTR [ecx+edx*4+0x120],eax
  60f3c8:	74 19                                           	je     0x60f3e3
  60f3ca:	56                                              	push   esi
  60f3cb:	89 84 91 20 01 00 00                            	mov    DWORD PTR [ecx+edx*4+0x120],eax
  60f3d2:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  60f3d5:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  60f3d7:	50                                              	push   eax
  60f3d8:	8b 86 04 01 00 00                               	mov    eax,DWORD PTR [esi+0x104]
  60f3de:	52                                              	push   edx
  60f3df:	51                                              	push   ecx
  60f3e0:	ff d0                                           	call   eax
  60f3e2:	5e                                              	pop    esi
  60f3e3:	c2 08 00                                        	ret    0x8
