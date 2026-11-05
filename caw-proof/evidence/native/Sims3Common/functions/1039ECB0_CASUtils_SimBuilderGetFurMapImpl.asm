# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ecb0 (CASUtils_SimBuilderGetFurMapImpl)
Paired Ghidra pseudocode: 1039ECB0_CASUtils_SimBuilderGetFurMapImpl.c
Window: [0x1039ecb0, 0x1039ed10) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ed10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ecb0: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
1039ecc0: 35 75 41 e8 58 c4 1b 00 8b 10 8b c8 8b 82 cc 00
1039ecd0: 00 00 56 ff d0 85 c0 74 2b 8b 4c 24 08 8b 90 78
1039ece0: 02 00 00 89 11 8b 90 7c 02 00 00 89 51 04 8b 90
1039ecf0: 70 02 00 00 8b 80 74 02 00 00 89 41 0c 89 51 08
1039ed00: 8b c1 5e c3 8b 44 24 08 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ecb0 <.text+0x39dcb0>:
1039ecb0:	56                                              	push   esi
1039ecb1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1039ecb5:	8b c6                                           	mov    eax,esi
1039ecb7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ecbc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ecc1:	75 41                                           	jne    0x1039ed04
1039ecc3:	e8 58 c4 1b 00                                  	call   0x1055b120
1039ecc8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ecca:	8b c8                                           	mov    ecx,eax
1039eccc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ecd2:	56                                              	push   esi
1039ecd3:	ff d0                                           	call   eax
1039ecd5:	85 c0                                           	test   eax,eax
1039ecd7:	74 2b                                           	je     0x1039ed04
1039ecd9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1039ecdd:	8b 90 78 02 00 00                               	mov    edx,DWORD PTR [eax+0x278]
1039ece3:	89 11                                           	mov    DWORD PTR [ecx],edx
1039ece5:	8b 90 7c 02 00 00                               	mov    edx,DWORD PTR [eax+0x27c]
1039eceb:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1039ecee:	8b 90 70 02 00 00                               	mov    edx,DWORD PTR [eax+0x270]
1039ecf4:	8b 80 74 02 00 00                               	mov    eax,DWORD PTR [eax+0x274]
1039ecfa:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1039ecfd:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1039ed00:	8b c1                                           	mov    eax,ecx
1039ed02:	5e                                              	pop    esi
1039ed03:	c3                                              	ret
1039ed04:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1039ed08:	5e                                              	pop    esi
1039ed09:	c3                                              	ret
1039ed0a:	cc                                              	int3
1039ed0b:	cc                                              	int3
1039ed0c:	cc                                              	int3
1039ed0d:	cc                                              	int3
1039ed0e:	cc                                              	int3
1039ed0f:	cc                                              	int3
