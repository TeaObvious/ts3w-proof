# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1b50 (CASUtils_SimOutfitGetMorphWeightBImpl)
Paired Ghidra pseudocode: 103A1B50_CASUtils_SimOutfitGetMorphWeightBImpl.c
Window: [0x103a1b50, 0x103a1ba0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1b50: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1b60: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1b70: 5e c3 e8 a9 95 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1b80: 00 56 ff d0 85 c0 74 db f3 0f 10 40 6c f3 0f 11
103a1b90: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1b50 <.text+0x3a0b50>:
103a1b50:	56                                              	push   esi
103a1b51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1b55:	8b c6                                           	mov    eax,esi
103a1b57:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1b5c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1b61:	74 0f                                           	je     0x103a1b72
103a1b63:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1b66:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1b6c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1b70:	5e                                              	pop    esi
103a1b71:	c3                                              	ret
103a1b72:	e8 a9 95 1b 00                                  	call   0x1055b120
103a1b77:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1b79:	8b c8                                           	mov    ecx,eax
103a1b7b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1b81:	56                                              	push   esi
103a1b82:	ff d0                                           	call   eax
103a1b84:	85 c0                                           	test   eax,eax
103a1b86:	74 db                                           	je     0x103a1b63
103a1b88:	f3 0f 10 40 6c                                  	movss  xmm0,DWORD PTR [eax+0x6c]
103a1b8d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1b93:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1b97:	5e                                              	pop    esi
103a1b98:	c3                                              	ret
103a1b99:	cc                                              	int3
103a1b9a:	cc                                              	int3
103a1b9b:	cc                                              	int3
103a1b9c:	cc                                              	int3
103a1b9d:	cc                                              	int3
103a1b9e:	cc                                              	int3
103a1b9f:	cc                                              	int3
