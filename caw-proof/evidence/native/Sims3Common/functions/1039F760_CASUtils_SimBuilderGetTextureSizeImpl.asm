# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f760 (CASUtils_SimBuilderGetTextureSizeImpl)
Paired Ghidra pseudocode: 1039F760_CASUtils_SimBuilderGetTextureSizeImpl.c
Window: [0x1039f760, 0x1039f7a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f760: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039f770: 35 75 1b e8 a8 b9 1b 00 8b 10 8b c8 8b 82 cc 00
1039f780: 00 00 56 ff d0 85 c0 74 05 8b 40 64 5e c3 33 c0
1039f790: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f760 <.text+0x39e760>:
1039f760:	56                                              	push   esi
1039f761:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039f765:	8b c6                                           	mov    eax,esi
1039f767:	25 00 00 00 ff                                  	and    eax,0xff000000
1039f76c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039f771:	75 1b                                           	jne    0x1039f78e
1039f773:	e8 a8 b9 1b 00                                  	call   0x1055b120
1039f778:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039f77a:	8b c8                                           	mov    ecx,eax
1039f77c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039f782:	56                                              	push   esi
1039f783:	ff d0                                           	call   eax
1039f785:	85 c0                                           	test   eax,eax
1039f787:	74 05                                           	je     0x1039f78e
1039f789:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
1039f78c:	5e                                              	pop    esi
1039f78d:	c3                                              	ret
1039f78e:	33 c0                                           	xor    eax,eax
1039f790:	5e                                              	pop    esi
1039f791:	c3                                              	ret
1039f792:	cc                                              	int3
1039f793:	cc                                              	int3
1039f794:	cc                                              	int3
1039f795:	cc                                              	int3
1039f796:	cc                                              	int3
1039f797:	cc                                              	int3
1039f798:	cc                                              	int3
1039f799:	cc                                              	int3
1039f79a:	cc                                              	int3
1039f79b:	cc                                              	int3
1039f79c:	cc                                              	int3
1039f79d:	cc                                              	int3
1039f79e:	cc                                              	int3
1039f79f:	cc                                              	int3
