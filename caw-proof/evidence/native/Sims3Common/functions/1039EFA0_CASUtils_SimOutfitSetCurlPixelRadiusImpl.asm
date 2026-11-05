# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039efa0 (CASUtils_SimOutfitSetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 1039EFA0_CASUtils_SimOutfitSetCurlPixelRadiusImpl.c
Window: [0x1039efa0, 0x1039efe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039efe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039efa0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039efb0: 35 75 24 e8 68 c1 1b 00 8b 10 8b c8 8b 82 cc 00
1039efc0: 00 00 56 ff d0 85 c0 74 0e f3 0f 10 44 24 0c f3
1039efd0: 0f 11 80 80 00 00 00 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039efa0 <.text+0x39dfa0>:
1039efa0:	56                                              	push   esi
1039efa1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039efa5:	8b c6                                           	mov    eax,esi
1039efa7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039efac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039efb1:	75 24                                           	jne    0x1039efd7
1039efb3:	e8 68 c1 1b 00                                  	call   0x1055b120
1039efb8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039efba:	8b c8                                           	mov    ecx,eax
1039efbc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039efc2:	56                                              	push   esi
1039efc3:	ff d0                                           	call   eax
1039efc5:	85 c0                                           	test   eax,eax
1039efc7:	74 0e                                           	je     0x1039efd7
1039efc9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039efcf:	f3 0f 11 80 80 00 00 00                         	movss  DWORD PTR [eax+0x80],xmm0
1039efd7:	5e                                              	pop    esi
1039efd8:	c3                                              	ret
1039efd9:	cc                                              	int3
1039efda:	cc                                              	int3
1039efdb:	cc                                              	int3
1039efdc:	cc                                              	int3
1039efdd:	cc                                              	int3
1039efde:	cc                                              	int3
1039efdf:	cc                                              	int3
