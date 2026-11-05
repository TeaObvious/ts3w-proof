# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1a70 (CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl)
Paired Ghidra pseudocode: 103A1A70_CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl.c
Window: [0x103a1a70, 0x103a1ac0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1a70: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1a80: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1a90: 5e c3 e8 89 96 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1aa0: 00 56 ff d0 85 c0 74 db 8b 4c 24 0c f3 0f 10 44
103a1ab0: 88 54 f3 0f 11 44 24 08 d9 44 24 08 5e c3 cc cc

LINEAR DISASSEMBLY
103a1a70 <.text+0x3a0a70>:
103a1a70:	56                                              	push   esi
103a1a71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1a75:	8b c6                                           	mov    eax,esi
103a1a77:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1a7c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1a81:	74 0f                                           	je     0x103a1a92
103a1a83:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1a86:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1a8c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1a90:	5e                                              	pop    esi
103a1a91:	c3                                              	ret
103a1a92:	e8 89 96 1b 00                                  	call   0x1055b120
103a1a97:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1a99:	8b c8                                           	mov    ecx,eax
103a1a9b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1aa1:	56                                              	push   esi
103a1aa2:	ff d0                                           	call   eax
103a1aa4:	85 c0                                           	test   eax,eax
103a1aa6:	74 db                                           	je     0x103a1a83
103a1aa8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a1aac:	f3 0f 10 44 88 54                               	movss  xmm0,DWORD PTR [eax+ecx*4+0x54]
103a1ab2:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1ab8:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1abc:	5e                                              	pop    esi
103a1abd:	c3                                              	ret
103a1abe:	cc                                              	int3
103a1abf:	cc                                              	int3
