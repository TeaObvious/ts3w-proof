# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1bf0 (CASUtils_SimOutfitGetMorphWeightDImpl)
Paired Ghidra pseudocode: 103A1BF0_CASUtils_SimOutfitGetMorphWeightDImpl.c
Window: [0x103a1bf0, 0x103a1c40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1bf0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1c00: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1c10: 5e c3 e8 09 95 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1c20: 00 56 ff d0 85 c0 74 db f3 0f 10 40 74 f3 0f 11
103a1c30: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1bf0 <.text+0x3a0bf0>:
103a1bf0:	56                                              	push   esi
103a1bf1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1bf5:	8b c6                                           	mov    eax,esi
103a1bf7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1bfc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1c01:	74 0f                                           	je     0x103a1c12
103a1c03:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1c06:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1c0c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1c10:	5e                                              	pop    esi
103a1c11:	c3                                              	ret
103a1c12:	e8 09 95 1b 00                                  	call   0x1055b120
103a1c17:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1c19:	8b c8                                           	mov    ecx,eax
103a1c1b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1c21:	56                                              	push   esi
103a1c22:	ff d0                                           	call   eax
103a1c24:	85 c0                                           	test   eax,eax
103a1c26:	74 db                                           	je     0x103a1c03
103a1c28:	f3 0f 10 40 74                                  	movss  xmm0,DWORD PTR [eax+0x74]
103a1c2d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1c33:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1c37:	5e                                              	pop    esi
103a1c38:	c3                                              	ret
103a1c39:	cc                                              	int3
103a1c3a:	cc                                              	int3
103a1c3b:	cc                                              	int3
103a1c3c:	cc                                              	int3
103a1c3d:	cc                                              	int3
103a1c3e:	cc                                              	int3
103a1c3f:	cc                                              	int3
