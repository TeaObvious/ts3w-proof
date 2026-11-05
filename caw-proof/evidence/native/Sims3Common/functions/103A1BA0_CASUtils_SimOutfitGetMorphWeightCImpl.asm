# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1ba0 (CASUtils_SimOutfitGetMorphWeightCImpl)
Paired Ghidra pseudocode: 103A1BA0_CASUtils_SimOutfitGetMorphWeightCImpl.c
Window: [0x103a1ba0, 0x103a1bf0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1ba0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1bb0: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1bc0: 5e c3 e8 59 95 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1bd0: 00 56 ff d0 85 c0 74 db f3 0f 10 40 70 f3 0f 11
103a1be0: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1ba0 <.text+0x3a0ba0>:
103a1ba0:	56                                              	push   esi
103a1ba1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1ba5:	8b c6                                           	mov    eax,esi
103a1ba7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1bac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1bb1:	74 0f                                           	je     0x103a1bc2
103a1bb3:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1bb6:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1bbc:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1bc0:	5e                                              	pop    esi
103a1bc1:	c3                                              	ret
103a1bc2:	e8 59 95 1b 00                                  	call   0x1055b120
103a1bc7:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1bc9:	8b c8                                           	mov    ecx,eax
103a1bcb:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1bd1:	56                                              	push   esi
103a1bd2:	ff d0                                           	call   eax
103a1bd4:	85 c0                                           	test   eax,eax
103a1bd6:	74 db                                           	je     0x103a1bb3
103a1bd8:	f3 0f 10 40 70                                  	movss  xmm0,DWORD PTR [eax+0x70]
103a1bdd:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1be3:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1be7:	5e                                              	pop    esi
103a1be8:	c3                                              	ret
103a1be9:	cc                                              	int3
103a1bea:	cc                                              	int3
103a1beb:	cc                                              	int3
103a1bec:	cc                                              	int3
103a1bed:	cc                                              	int3
103a1bee:	cc                                              	int3
103a1bef:	cc                                              	int3
